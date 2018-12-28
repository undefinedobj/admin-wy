<?php

namespace App\Admin\Controllers;

use App\Models\Comment;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CommentController extends Controller
{
    use HasResourceActions;

    /**
     * Index interface.
     *
     * @param Content $content
     * @return Content
     */
    public function index(Content $content)
    {
        return $content
            ->header('评论列表')
            ->description('文章评论')
            ->body($this->grid());
    }

    /**
     * Show interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function show($id, Content $content)
    {
        return $content
            ->header('Detail')
            ->description('description')
            ->body($this->detail($id));
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Comment::findOrFail($id));

        $show->id('Id');
        $show->oauth_user_id('评论者');  # 评论者
        $show->type('评论类型');        # 1:文章评论
        // $show->pid('Pid');
        $show->article_id('文章标题');  # 管理文章表->文章标题
        $show->content('内容');
        $show->status('状态');
        $show->created_at('添加时间');
        $show->updated_at('更新时间');
        // $show->deleted_at('Deleted at');

        return $show;
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Comment);

        # 按钮显示
        $grid->actions(function ($actions) {
            $actions->disableDelete();
            $actions->disableEdit();
            // $actions->disableView();
        });

        # 定义开关(状态)内容
        $states = [
            'on'  => ['value' => 1, 'text' => '已审核', 'color' => 'primary'],
            'off' => ['value' => 0, 'text' => '未审核', 'color' => 'default'],
        ];

        $grid->id('Id');
        $grid->type('评论类型');            # 1:文章评论
        $grid->oauth_user_id('评论者');     # 评论者
        // $grid->pid('Pid');
        $grid->article_id('Article id');    # 管理文章表->文章标题
        $grid->content('内容');
        $grid->status("状态")->switch($states);
        $grid->created_at('添加时间');
        $grid->updated_at('更新时间');
        // $grid->deleted_at('Deleted at');

        return $grid;
    }

    // /**
    //  * Edit interface.
    //  *
    //  * @param mixed $id
    //  * @param Content $content
    //  * @return Content
    //  */
    // public function edit($id, Content $content)
    // {
    //     return $content
    //         ->header('Edit')
    //         ->description('description')
    //         ->body($this->form()->edit($id));
    // }

    // /**
    //  * Create interface.
    //  *
    //  * @param Content $content
    //  * @return Content
    //  */
    // public function create(Content $content)
    // {
    //     return $content
    //         ->header('Create')
    //         ->description('description')
    //         ->body($this->form());
    // }

    // /**
    //  * Make a form builder.
    //  *
    //  * @return Form
    //  */
    // protected function form()
    // {
    //     $form = new Form(new Comment);

    //     $form->number('oauth_user_id', 'Oauth user id');
    //     $form->switch('type', 'Type')->default(1);
    //     $form->number('pid', 'Pid');
    //     $form->number('article_id', 'Article id');
    //     $form->textarea('content', 'Content');
    //     $form->switch('status', 'Status');

    //     return $form;
    // }
}