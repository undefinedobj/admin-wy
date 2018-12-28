<?php

namespace App\Admin\Controllers;

use App\Models\Article;
use App\Models\Category;
use App\Http\Controllers\Controller;
use Encore\Admin\Controllers\HasResourceActions;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;

class ArticleController extends Controller
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
            ->header('文章列表')
            ->description('已发布的文章列表')
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
            ->header('编辑文章')
            ->description('编辑文章')
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
            ->header('添加文章')
            ->description('添加新的文章')
            ->body($this->form());
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Article);

        # 按钮显示
        $grid->actions(function ($actions) {
            // $actions->disableDelete();
            // $actions->disableEdit();
            $actions->disableView();
        });

        # 定义开关内容
        $states = [
            'on'  => ['value' => 1, 'text' => '是', 'color' => 'primary'],
            'off' => ['value' => 0, 'text' => '否', 'color' => 'default'],
        ];

        $grid->id('Id');
        $grid->column('category', '分类')->display(function ($id){
            return  $this->category->name;
        });
        $grid->title('标题')->display(function ($text) {
            return str_limit($text, 30, '...');
        })->label();
        $grid->author('作者');
        // $grid->markdown('Markdown');     # markdown文章内容
        // $grid->html('Html');             # markdown转的html页面
        $grid->description('描述')->display(function ($text) {
            return str_limit($text, 39, '...');
        });
        $grid->keywords('关键词')->display(function ($text) {
            return str_limit($text, 30);
        });
        $grid->cover("封面图")->image(env("APP_URL")."/uploads/",50,50);
        $grid->is_top("是否置顶")->switch($states);
        $grid->click('点击数')->badge();
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
        $form = new Form(new Article);
        

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

        $form->select('category_id', '分类')->options(Category::all()->pluck('name', 'id'))->rules('required');
        $form->text('title', '标题')->rules('required');
        $form->text('author', '作者')->default('王宇')->rules('required');
        $form->textarea('markdown', 'Markdown');
        $form->textarea('html', 'Html');
        $form->text('description', '描述');
        $form->text('keywords', '关键词')->rules('required');
        $form->image('cover', '封面图')->rules('required');
        $form->switch('is_top', '是否置顶');
        $form->number('click', '点击数');

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
    //     $show = new Show(Article::findOrFail($id));

    //     $show->id('Id');
    //     $show->category_id('分类');
    //     $show->title('标题');
    //     $show->author('作者');
    //     // $show->markdown('Markdown');            # markdown文章内容 
    //     // $show->html('Html');                    # markdown转的html页面
    //     $show->description('描述');
    //     $show->keywords('关键词');
    //     $show->cover('封面图');
    //     $show->is_top('是否置顶');
    //     $show->click('点击数');
    //     $show->created_at('创建时间');
    //     $show->updated_at('更新时间');
    //     $show->deleted_at('删除时间');

    //     return $show;
    // }
}
