<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\Console
 *
 * @property int $id
 * @property string $name 名称
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Console whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class Console extends Model
{
    //
}
