<?php

namespace App\Repositories\Front;

use App\{
    Models\User,
    Models\Setting,
    Helpers\EmailHelper,
    Models\Notification
};
use App\Helpers\ImageHelper;
use App\Models\Subscriber;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Str;

class UserRepository
{
    public function register($request){
        $input = $request->all();

        $user = new User;

        $user->password      = bcrypt($request['password']);
        $user->email         = $input['email'];
        $user->first_name    = $input['first_name'];
        $user->last_name     = $input['last_name'];
        $user->phone         = $input['phone'];
        $verify              = Str::random(6);
        $user->email_token   = $verify;
        $user->status        = 0;

        $user->save();

        $verifyLink = url('user/user-email-verification/' . Crypt::encryptString($user->id));

        $subject = 'Email Verification';
        $msg = '<div class="text-center"><a href="'.$verifyLink.'" style="font-size: 20px; background: #000; color: #fff; padding: 5px 40px;">Verify Email</a>

                <br/>

                <p style="font-size: 14px; line-height: 100%;">
                    <span style="font-size: 14px; line-height: 25.2px; color: #000;">or copy and paste the URL into the browser</span>
                </p>

                <br/>

                <a href="'.$verifyLink.'" style="font-size: 16px; text-decoration: underline; color: #666666; line-height: 20px;">'.$verifyLink.'</a></div>';

        if ($input['email'] != '') {
            $emailData = [
                'to'        => $input['email'],
                'subject'   => $subject,
                'body'      => $msg,
            ];

            $email = new EmailHelper();

            $email->sendCustomMail($emailData);
        }

        // Notification::create(['user_id' => $user->id]);

        // $emailData = [
        //     'to' => $user->email,
        //     'type' => "Registration",
        //     'user_name' => $user->displayName(),
        //     'order_cost' => '',
        //     'transaction_number' => '',
        //     'site_title' => Setting::first()->title,
        // ];

        // $email = new EmailHelper();

        // $email->sendTemplateMail($emailData);
    }

    public function profileUpdate($request){
        $input = $request->all();

        if ($request['user_id']) {
            $user = User::findOrFail($request['user_id']);
        } else {
            $user = Auth::user();
        }

        if ($request->password) {
            $input['password']  = bcrypt($input['password']);
            $user->password     = $input['password'];

            $user->update();
        } else {
            unset($input['password']);
        }
      
        if ($file = $request->file('photo')) {
            $input['photo'] = ImageHelper::handleUpdatedUploadedImage($file, '/storage/images', $user, '/storage/images/', 'photo');
        }

        if ($request->newsletter) {
            if (!Subscriber::where('email', $user->email)->exists()) {
                Subscriber::insert([
                    'email' => $user->email
                ]);
            }
        } else {
            Subscriber::where('email', $user->email)->delete();
        }

        $user->fill($input)->save();
    }
}
