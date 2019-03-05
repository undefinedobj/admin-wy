<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * App\Models\OauthUser
 *
 * @property int $id 主键id
 * @property int $type 类型 1：QQ  2：新浪微博 3：github
 * @property string $name 第三方昵称
 * @property string $avatar 头像
 * @property string $openid 第三方用户id
 * @property string $access_token access_token token
 * @property string $last_login_ip 最后登录ip
 * @property int $login_times 登录次数
 * @property string $email 邮箱
 * @property int $is_admin 是否是admin
 * @property string|null $remember_token
 * @property \Illuminate\Support\Carbon|null $created_at
 * @property \Illuminate\Support\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser newModelQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser newQuery()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser query()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereAccessToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereAvatar($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereIsAdmin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereLastLoginIp($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereLoginTimes($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereOpenid($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\OauthUser whereUpdatedAt($value)
 * @mixin \Eloquent
 */
class OauthUser extends Model
{
    //
}
