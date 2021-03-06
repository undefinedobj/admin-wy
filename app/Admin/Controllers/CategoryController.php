<?php

namespace App\Admin\Controllers;

use App\Models\Category;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class CategoryController extends Controller
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
            ->header('分类列表')
            ->description('博客分类')
            ->body($this->grid());
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
            ->header('编辑分类')
            ->description('编辑分类')
            ->body($this->form()->edit($id));
    }

    /**
     * Create interface.
     *
     * @param Content $content
     * @return Content
     */
    public function create(Content $content)
    {
        return $content
            ->header('添加分类')
            ->description('添加新的分类')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category);

        # 按钮显示
        $grid->actions(function ($actions) {
            // $actions->disableDelete();
            // $actions->disableEdit();
            $actions->disableView();
        });


        $grid->id('Id');
        $grid->name('分类名')->label();
        $grid->sort('排序')->editable();
        $grid->keywords('关键字');
        $grid->description('描述');
        // $grid->pid('Pid');
        $grid->created_at('创建时间');
        $grid->updated_at('更新时间');
        // $grid->deleted_at('删除时间');

        return $grid;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Category);

        $form->tools(function (Form\Tools $tools) {
            // 去掉`列表`按钮
            // $tools->disableList();
            // 去掉`删除`按钮
            // $tools->disableDelete();
            // 去掉`查看`按钮
            $tools->disableView();
        });

        $form->footer(function ($footer) {
            // 去掉`重置`按钮
            $footer->disableReset();
            // 去掉`提交`按钮
            // $footer->disableSubmit();
            // 去掉`查看`checkbox
            $footer->disableViewCheck();
            // 去掉`继续编辑`checkbox
            $footer->disableEditingCheck();
            // 去掉`继续创建`checkbox
            $footer->disableCreatingCheck();
        });

        $form->text('name', '分类名');
        $form->text('keywords', '关键字');
        $form->text('description', '描述');
        $form->number('sort', '排序');
        $form->hidden('pid', 0);

        return $form;
    }
    
    // /**
    //  * Show interface.
    //  *
    //  * @param mixed $id
    //  * @param Content $content
    //  * @return Content
    //  */
    // public function show($id, Content $content)
    // {
    //     return $content
    //         ->header('Detail')
    //         ->description('description')
    //         ->body($this->detail($id));
    // }

    // /**
    //  * Make a show builder.
    //  *
    //  * @param mixed $id
    //  * @return Show
    //  */
    // protected function detail($id)
    // {
    //     $show = new Show(Category::findOrFail($id));

    //     $show->id('Id');
    //     $show->name('Name');
    //     $show->keywords('Keywords');
    //     $show->description('Description');
    //     $show->sort('Sort');
    //     $show->pid('Pid');
    //     $show->created_at('Created at');
    //     $show->updated_at('Updated at');
    //     $show->deleted_at('Deleted at');

    //     return $show;
    // }

}
