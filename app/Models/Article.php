<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    /**
     * 关联文章类别表
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    /**
     * 关联标签表
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function tags()
    {
        return $this->belongsToMany(Tag::class, 'article_tags');
    }

    // /**
    //  * 获取与文章关联的评论表
    //  *
    //  * @return \Illuminate\Database\Eloquent\Relations\hasMany
    //  */
    // public function comments()
    // {
    //     return $this->hasMany(Comment::class, 'article_id', 'id');
    // }
}
