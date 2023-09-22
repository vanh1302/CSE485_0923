<?php
$array = [12, 5, 200, 10, 125, 60, 90, 345, -123, 100, -125, 0];
$result = [];
for ($i = 0; $i<count($array);$i++)
{
    $number = $array[$i];
    if($number > 100 && $number <=200 && $number % 5 == 0){
        $result[] = $number;
    }
}
echo "Số chia hết cho 5 trong khoảng từ 100 - 200 là " ;
print_r($result);
?>