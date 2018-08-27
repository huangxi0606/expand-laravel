<?php

namespace App\Admin\Controllers;

use App\Models\Movies;

use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\ModelForm;

class MoviesController extends Controller
{
    use ModelForm;

    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');
            $content->body($this->grid());
        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form()->edit($id));
        });
    }

    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {

            $content->header('header');
            $content->description('description');

            $content->body($this->form());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Movies::class, function (Grid $grid) {
            // 第一列显示id字段，并将这一列设置为可排序列
            $grid->id('ID')->sortable();

            // 第二列显示title字段，由于title字段名和Grid对象的title方法冲突，所以用Grid的column()方法代替
            $grid->column('title');
//            $grid->title()->display(function ($title) {
//                return "<span class='label'>$title</span>";
//            });

            // 第三列显示director字段，通过display($callback)方法设置这一列的显示内容为users表中对应的用户名
            $grid->director()->display(function($userId) {
                return User::find($userId)->name;
            });

            // 第四列显示为describe字段
//            $grid->describe();
            $grid->describe()->display(function($describe) {
                return str_limit($describe, 30, '...');
            });
            // 第五列显示为rate字段
            $grid->rate();

            // 第六列显示released字段，通过display($callback)方法来格式化显示输出
            $grid->released('上映?')->display(function ($released) {
                return $released ? '是' : '否';
            });

            // 下面为三个时间字段的列显示
            $grid->release_at();
            $grid->created_at();
            $grid->updated_at();
            $grid->column('column_not_in_table')->display(function () {
                return 'blablabla....';
            });
//            $grid->first_name();
//            $grid->last_name();
//
//            // 不存的字段列
//            $grid->column('full_name')->display(function () {
//                return $this->first_name.' '.$this->last_name;
//            });
            $grid->filter(function ($filter) {
                // 设置created_at字段的范围查询
                $filter->between('created_at', 'Created Time')->datetime();
            });
            //禁止创建按钮
//            $grid->disableCreateButton();
//            禁止分页条
//            $grid->disablePagination();
//            禁止查询过滤器
//            $grid->disableFilter();
//            禁止导出按钮
//            $grid->disableExport();
//            禁止行操作
//            $grid->disableActions();
        });

    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Admin::form(Movies::class, function (Form $form) {

            $form->display('id', 'ID');

            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
        });
    }
}
