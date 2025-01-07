<?php

namespace App\Helpers;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Image;

class ImageHelper
{
    public static function handleUploadedImage($file, $path, $delete=null) {
        if ($file) {
            if ($delete) {
                $imagePath = public_path(). '/storage/images/' . $delete;

                if(file_exists(public_path(). '/storage/images/' . $delete)){
                    unlink($imagePath);
                }
            }

            $cp = $file;
            $thum = Str::random(8).'.'.$cp->getClientOriginalExtension();
            $extension = strtolower($cp->getClientOriginalExtension());
            $randomFileName = date('Y_m_d_his').'_'.rand(10000000,99999999).'.'.$extension;

            Storage::disk('public')->put($path . $randomFileName, File::get($cp));

            $name = $randomFileName;

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

    public static function ItemhandleUploadedImage($file, $path, $delete=null) {
        if ($file) {
            if ($delete) {
                $imagePath = public_path(). '/storage/images/' . $delete;

                if(file_exists(public_path(). '/storage/images/' . $delete)){
                    unlink($imagePath);
                }
            }

            $cp = $file;
            $thum = Str::random(8).'.'.$cp->getClientOriginalExtension();
            $extension = strtolower($cp->getClientOriginalExtension());
            $randomFileName = date('Y_m_d_his').'_'.rand(10000000,99999999).'.'.$extension;

            Storage::disk('public')->put($path . $randomFileName, File::get($cp));

            $photo = $randomFileName;

            return [$photo, $thum];
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

    public static function ItemhandleUpdatedUploadedImage($file, $path, $data, $delete_path, $field) {
        $extension = strtolower($file->getClientOriginalExtension());
        $thum = Str::random(8).'.'.$file->getClientOriginalExtension();
        
        $randomFileName = date('Y_m_d_his').'_'.rand(10000000,99999999).'.'.$extension;

        Storage::disk('public')->put($path . $randomFileName, File::get($file));
        Storage::disk('public')->put($path . $thum, File::get($file));

        if($data['thumbnail'] != null){
            $imagePath = public_path(). '/storage/images/' . $data['thumbnail'];

            if(file_exists(public_path(). '/storage/images/' . $data['thumbnail'])){
                unlink($imagePath);
            }
        }

        if($data[$field] != null){
            $imagePath = public_path(). '/storage/images/' . $data[$field];

            if(file_exists(public_path(). '/storage/images/' . $data[$field])){
                unlink($imagePath);
            }
        }

        return [$randomFileName, $thum];
    }

    public static function handleDeletedImage($data,$field,$delete_path) {
        if($data[$field] != null){
            if (file_exists(base_path('../').$delete_path.$data[$field])) {
                unlink(base_path('../').$delete_path.$data[$field]);
            }
        }
    }
}