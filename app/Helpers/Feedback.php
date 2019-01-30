<?php
/**
 * API - 状态信息反馈类
 * 
 * @Author      WangYu  <8wy701645@163.com>
 */

namespace App\Helpers;
use Illuminate\Http\Request;

class Feedback 
{
    
    /**
     * 成功返回消息
     * @Author     WangYu
     * @property   string                       $code
     * @property   string                       $msg
     * @property   string                       $data
     * @return     array
     */
    public function success($data = [], $msg = '获取成功')
    {
        $msg = [
            'code' => 200,
            'msg' => $msg,
            'data' => $data,
        ];
        return $this->apiReturn($msg);
    }

    /**
     * 失败返回消息
     * @Author     WangYu
     * @property   string                       $code
     * @property   string                       $msg
     * @property   string                       $data
     * @return     array
     */
    public function fail($code = 100, $msg = '获取失败', $data = '')
    {
        $msg = [
            'code' => $code,
            'msg' => $msg,
            'data' => $data,
        ];

        return $this->apiReturn($msg);
    }
    
    public function apiReturn($msg=['code' => 200, 'msg' => '操作成功', 'data' => ''], $type='json')
    {
        switch ($type) {
            case 'json':
                return response()->json($msg);
                break;

            case 'jsonp':
                $result = new \Symfony\Component\HttpFoundation\Request();
                return response()->json($msg)
                        ->setCallback($request->input('callback'));
                break;

            default:
                return response()->json($msg);
                break;
        }
    }

}
