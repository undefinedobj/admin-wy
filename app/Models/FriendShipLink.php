<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\FriendshipLink
 *
 * @property int $id 主键id
 * @property string $name 链接名
 * @property string $url 链接地址
 * @property int|null $sort 排序
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FriendshipLink whereUrl($value)
 * @mixin \Eloquent
 */
class FriendshipLink extends Model
{
    //
}
