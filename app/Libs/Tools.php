<?php
namespace App\Libs;
/**
 * 随机生成单双
 * 随机生成定位的数字
 * 判断单双是否中奖
 * 判断定位是否中奖
 */
class Tools 
{
	protected static $arr = ['单','双','双','单','双','单'];
	protected static $bs  = [1,3,8,24,72,216,648,1944,5832,17496,52488,157464,472392,1417176,4251528,12754584,38263752,114791256,344373768];

	//随机生成单双
	public static function RoundOE()
	{
		$index = array_rand(self::$arr);
		return self::$arr[$index]; 	
	} 

	//随机生成定位数字(5位)
	public static function RoundNum($min,$max,$n=1)
	{
		$arr = [];
		for($i=$min; $i <= $max; $i++) { 
			$arr[$i] = $i;
		}
		//随机取出来$max个字数
		for ($i=0; $i < $max; $i++) { 
			$index = array_rand($arr);
			$newArr[$i] = $arr[$index];
		}
		//从0开始到$n 结束
		$d = array_slice(array_unique($newArr),0,$n);
		sort($d);
		return json_encode($d);
	}

	//单双是否中奖
	public static function PDRoundOE($d)
	{
		if(is_array($d)){
			$sum = array_sum($d);
			if($sum%2 == 0){
				return '双';
			}else{
				return '单';
			}
		}
	}

	//定位是否中奖 返回中奖的数值
	public static function PDRoundNum($kj,$jh)
	{
		if(is_array($kj) && is_array($jh)){
			$res = array_intersect($kj,$jh);

			return $res;
		}
	}

	//不中奖的时候获取到下一轮的倍率	最后的元素的时候返回false
	public static function BSbet($xbs)
	{
		foreach(self::$bs as $k => $v) {
			if($xbs == end(self::$bs))return false;

			if($v == $xbs){
				$index = $k+1;
				return self::$bs[$index];
			}
		}
	}
}

