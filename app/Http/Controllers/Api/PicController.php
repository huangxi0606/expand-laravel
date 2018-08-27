<?php

namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;


class PicController extends Controller
{
    //
    public function interventionImage(){
//        1.读取图片
//        $img = Image::make('images/111.jpg')->resize(200, 200);
//        2.绘制图片
//        $img = Image::canvas(800, 600, '#ccc');
//        3.编辑图片
//        $img = Image::make('images/222.png')->resize(320, 240)->insert('images/111.jpg');
//        Image::make(Input::file('photo'))->resize(300, 200)->save('foo.jpg');
//        4.水印
//        $img = Image::make('images/111.jpg');
//        $img->insert('images/222.png', 'bottom-right', 15, 10);
//        return $img->response('jpg');
//        https://blog.csdn.net/beyond__devil/article/details/62230610
    }
}
