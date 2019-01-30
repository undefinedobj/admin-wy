<?php
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
	/**
	 * 审核专用
	 * @return
	 * is_enterprise 企业字段
	 * is_platform 平台字段
	 */
	function examine_data(){
		$data = DB::table('examine')->where('id',1)->first();
		return $data;
	}
	
	/**
	* 调试输出
	* @author By Zhp
	*/
	function print_data($data, $var_dump = false){
	    header("Content-type: text/html; charset=utf-8");
	    echo "<pre>";
	    if ($var_dump) {
	        var_dump($data);
	    } else {
	        print_r($data);
	    }
	    exit();
	}

	/**
	* 数组分页，返回指定条数数据
	* @author By Zhp
	* @param $count 每页显示条数
	*        $page 当前页码
	*        $array 数组
	*        $order 0正序，1倒序 
	*/
    function page_array($count = 0,$page = 1,$array = array(),$order = 0){  
        $page = (empty($page))?'1':$page;  
        #计算每次分页的开始位置 
        $start = ($page-1)*$count;  
        if($order == 1){  
          $array = array_reverse($array);// 倒序排列
        }     
        // $totals = count($array);
        // $countpage = ceil($totals/$count);//计算总页面数  
        $pageData = array();  
        $pageData = array_slice($array,$start,$count);//返回阶段数据
        return $pageData;
    }

	/**
	* 接口数据正常获取 返回-json
	* @author By Zhp
	*/
	function apiSuccess($datas = array(),$msg = '',$status = 1){
		$ret = array(
			# 状态码，1 为操作成功，0 为失败
			'status'  => $status,
			# 主数据
			'datas'   => $datas,
			# 提示语
			'msg'     => $msg
		);
		return json_encode($ret);
		exit();
	}
	/**
	 * 接口数据发生错误 返回-json
	 * @author By Zhp
	 */
	function apiError($msg = '',$status = 0){
		$ret = array(
				'status'  => $status,
				'msg'     => $msg
		);
		return json_encode($ret);
		exit();
	}
	
	/**
	 * @AUTHOR xyf
	 * 拼接完整路径，使得小程序中正常显示图片
	 */
	function imgUrl(){
		$http_type = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') || (isset($_SERVER['HTTP_X_FORWARDED_PROTO']) && $_SERVER['HTTP_X_FORWARDED_PROTO'] == 'https')) ? 'https://' : 'http://';
		$imgurl = str_replace($http_type,$http_type,env("APP_URL"))."/uploads/";
		return $imgurl;
	}

	function combination(){
  
		$array = array();

		$arguments = func_get_args();

		foreach($arguments as $argument){

			if(is_array($argument) === true){

				$array[] = $argument;

			} else {

				$array[] = array($argument);

			}

		}

		$size = count($array);

		if($size === 0) {

			return array();

		} else if($size === 1) {

			return is_array($array[0]) === true ? $array[0] : array();

		} else {

			$result = array();

			$a = $array[0];

			array_shift($array);

			if(is_array($array) === false) {

				return $result;

			}

			foreach($a as $val) {

				$b = call_user_func_array("combination", $array);

				foreach($b as $c) {

					if( is_array($c) === true ) {

						$result[] = array_merge(array($val), $c);

					} else {

						$result[] = array($val, $c);

					}

				}

			}

			return $result;
		}

    }

    /**
     * 价格区间数组
     * @author zhp <[email address]>
     * PC商品列表筛选
     */
    function searchPrice(){
    	return array(
       		1 => array('low' => 0,'heigh' => 99,'show' => '0-99'),
       		2 => array('low' => 100,'heigh' => 199,'show' => '100-199'),
       		3 => array('low' => 200,'heigh' => 299,'show' => '200-299'),
       		4 => array('low' => 300,'heigh' => 499,'show' => '300-499'),
       		5 => array('low' => 500,'heigh' => 999,'show' => '500-999'),
       		6 => array('low' => 1000,'heigh' => 0,'show' => '1000以上')
   		);
    }
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	