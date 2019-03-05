<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Site
 *
 * @property int $id
 * @property int $oauth_user_id 第三方用户id
 * @property string $name 网站名
 * @property string $description 描述
 * @property string $url 网站链接
 * @property int $audit 审核状态1为通过审核
 * @property int $sort 排序
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereAudit($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereDescription($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereOauthUserId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Site whereUrl($value)
 * @mixin \Eloquent
 */
class Site extends Model
{
    //
}
