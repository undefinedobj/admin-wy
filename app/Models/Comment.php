<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    /**
     * 获取拥有此评论的文章
     * 
     * Date    2019/01/02
     * Author  WangYu
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function articles()
    {
        return $this->belongsTo(Article::class, 'article_id', 'id');
    }

    /**
     * 获取此评论的归属人
     * 
     * Date    2019/01/02
     * Author  WangYu
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function users()
    {
        return $this->belongsTo(OauthUser::class, 'oauth_user_id', 'id');        
    }
}
