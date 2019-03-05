<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Config
 *
 * @property int $id 主键
 * @property string $name 配置项键名
 * @property string|null $value 配置项键值 1表示开启 0 关闭
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Config whereValue($value)
 * @mixin \Eloquent
 */
class Config extends Model
{
    //
}
