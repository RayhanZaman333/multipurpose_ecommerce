<?php

namespace App\Http\Controllers\Auth\User;

use App\{
    Http\Requests\UserRequest,
    Http\Controllers\Controller,
    Repositories\Front\UserRepository
};
use App\Models\User;
use App\Models\Notification;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Session;

class RegisterController extends Controller
{
    /**
     * Constructor Method.
     *
     * Setting Authentication
     *
     * @param  \App\Repositories\Back\UserRepository $repository
     *
     */
    public function __construct(UserRepository $repository)
    {
        $this->repository = $repository;
    }

    public function showForm()
    {
      return view('user.auth.register');
    }

    public function register(UserRequest $request)
    {   
        $request->validate([
            'email' => 'required|email|unique:users,email'
        ]);

        $this->repository->register($request);

        Session::flash('success', __('A verification mail sent to your email address. Please verify!'));

        return redirect()->back();
    }

    public function userEmailVerification($id)
    {
        $id = Crypt::decryptString($id);
        $user = User::where('id', $id)->first();

        if (!empty($user)) {
            if ($user->status == 0) {
                $user->status               = 1;
                $user->email_verified_at    = now();

                $user->save();

                Notification::create(['user_id' => $user->id]);

                return redirect()->route('user.login')->with('success', "Email Verified Successfully. Please login!");
            } else {
                return redirect()->route('user.login')->with('success', "Email Already Verified!");
            }
        } else {
            return redirect()->route('user.login')->with('success', "User not found!");
        }
    }

    public function verify($token)
    {
        $user = User::where('email_token', $token)->first();
       
        if ($user) {
            Auth::login($user);
            
            return redirect(route('user.dashboard'));
        } else {
            return redirect(route('user.login'));
        }
    }
}