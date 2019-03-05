<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Nav
 *
 * @property int $id 菜单主键
 * @property int $sort 排序
 * @property string $name 菜单名
 * @property string $url 链接
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Nav whereUrl($value)
 * @mixin \Eloquent
 */
class Nav extends Model
{
    //
}
