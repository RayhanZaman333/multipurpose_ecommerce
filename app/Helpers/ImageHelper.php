<?php

namespace App\Helpers;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Image;

class ImageHelper
{
    public static function handleUploadedImage($file,$path,$delete=null) {
        if ($file) {
            if($delete){
                
                if (file_exists(base_path('../').$path.'/'.$delete)) {
                    unlink(base_path('../').$path.'/'.$delete);
                }
            }
            $name = Str::random(4).$file->getClientOriginalName();
            $file->move($path,$name);
            return $name;
        }
    }


    public static function uploadSummernoteImage($file,$path) {
        
        if (!file_exists($path)) {
            mkdir($path, 0777, true);
        }

        if ($file) {
            $name = Str::random(4).$file->getClientOriginalName();
            $file->move($path,$name);
            return $name;
        }
    }



    public static function ItemhandleUploadedImage($file,$path,$delete=null) {
        if ($file) {
            if($delete){
                if (file_exists(base_path('../').$path.'/'.$delete)) {
                    unlink(base_path('../').$path.'/'.$delete);
                }
            }

            $thum = Str::random(8).'.'.$file->getClientOriginalExtension();
            $image = \Image::make($file)->resize(230,230);
    
            $image->save(base_path('../').$path.'/'.$thum);
    
            $photo = time().$file->getClientOriginalName();
            $file->move($path,$photo);
            return [$photo,$thum];
        }
    }

    public static function handleUpdatedUploadedImage($file, $path, $data, $delete_path, $field) {
        $cp = $file;
        $extension = strtolower($cp->getClientOriginalExtension());
        $randomFileName = date('Y_m_d_his').'_'.rand(10000000,99999999).'.'.$extension;
        Storage::disk('public')->put($path . $randomFileName, File::get($cp));

        $name = $randomFileName;

        return $name;
    }


    public static function ItemhandleUpdatedUploadedImage($file,$path,$data,$delete_path,$field) {
        $photo = time().$file->getClientOriginalName();
        $thum = Str::random(8).'.'.$file->getClientOriginalExtension();
      
        $image = \Image::make($file)->resize(230,230);

        $image->save(base_path('..').$path.'/'.$thum);

        $file->move(base_path('..').$path,$photo);

        if($data['thumbnail'] != null){
            if (file_exists(base_path('../').$delete_path.$data['thumbnail'])) {
                unlink(base_path('../').$delete_path.$data['thumbnail']);
            }
        }
        if($data[$field] != null){
            if (file_exists(base_path('../').$delete_path.$data[$field])) {
                unlink(base_path('../').$delete_path.$data[$field]);
            }
        }
        return [$photo,$thum];
    }


    public static function handleDeletedImage($data,$field,$delete_path) {
        
        
        if($data[$field] != null){
            if (file_exists(base_path('../').$delete_path.$data[$field])) {
                unlink(base_path('../').$delete_path.$data[$field]);
            }
        }
    }
}
