<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\GitProject
 *
 * @property int $id 项目主键
 * @property int $sort 排序
 * @property int $type 1:github 2:gitee
 * @property string $name 项目名
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereSort($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\GitProject whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class GitProject extends Model
{
    //
}
