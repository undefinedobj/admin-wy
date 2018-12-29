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
            ->header('评论')
            ->description('列表页')
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
            ->header('评论')
            ->description('详情页')
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
        $show->deleted_at('删除时间');

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

        # 禁用新增
        $grid->disableCreateButton();
        # 禁用行选择checkbox
        $grid->disableRowSelector();

        # 按钮显示
        $grid->actions(function ($actions) {
            $actions->disableDelete();
            // $actions->disableEdit();
            // $actions->disableView();
        });

        # 定义开关(状态)内容
        $states = [
            'on'  => ['value' => 1, 'text' => '已审核', 'color' => 'success'],
            'off' => ['value' => 0, 'text' => '未审核', 'color' => 'danger'],
        ];

        $grid->id('Id');
        $grid->type('评论类型');            # 1:文章评论
        $grid->oauth_user_id('评论者');     # 评论者
        // $grid->pid('Pid');
        $grid->article_id('Article id');    # 管理文章表->文章标题
        $grid->content('内容')->limit(50);
        $grid->status("状态")->switch($states);
        $grid->created_at('添加时间');
        $grid->updated_at('更新时间');
        $grid->deleted_at('删除时间');

        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Comment);
    
    $form->tools (function(Form\Tools $tools)
    {
        
        $tools->disableDelete();    # 去掉`删除`按钮
        // $tools->disableList();   # 去掉`列表`按钮
        // $tools->disableView();   # 去掉`查看`按钮
    }
    );

    $form->footer(function ($footer) {
        $footer->disableReset();            // 去掉`重置`按钮
        $footer->disableViewCheck();        // 去掉`查看`checkbox
        // $footer->disableEditingCheck();     // 去掉`继续编辑`checkbox
        $footer->disableCreatingCheck();    // 去掉`继续创建`checkbox
    });

        $form->number('oauth_user_id', 'Oauth user id');
        $form->switch('type', 'Type')->default(1);
        $form->number('pid', 'Pid');
        $form->number('article_id', 'Article id');
        $form->textarea('content', 'Content');
        $form->switch('status', 'Status');

        return $form;
    }

    /**
     * Edit interface.
     *
     * @param mixed $id
     * @param Content $content
     * @return Content
     */
    public function edit($id, Content $content)
    {
        return $content
            ->header('评论')
            ->description('审核页')
            ->body($this->form()->edit($id));
    }

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

}
