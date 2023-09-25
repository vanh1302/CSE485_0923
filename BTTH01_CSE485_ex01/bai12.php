<?php
$numbers = [
    'key1' => 12,
    'key2' => 30,
    'key3' => 4,
    'key4' => -123,
    'key5' => 1234,
    'key6' => -12565,
   ];
   
$firstElement = reset($numbers);
$lastElement = end($numbers);
echo "Phần tử đầu tiên: " . $firstElement . "<br>";
echo "Phần tử cuối cùng: " . $lastElement . "<br>";

$maxNumber = max($numbers);
$minNumber = min($numbers);
$sum = array_sum($numbers);
echo "Số lớn nhất: " . $maxNumber . "<br>";
echo "Số nhỏ nhất: " . $minNumber . "<br>";
echo "Tổng các giá trị: " . $sum . "<br>";

sort($numbers);
echo "Mảng sắp xếp tăng dần theo giá trị: ";
print_r($numbers);
echo "<br>";

rsort($numbers);
echo "Mảng sắp xếp giảm dần theo giá trị: " ;
print_r($numbers);
echo "<br>";

ksort($numbers);
echo "Mảng sắp xếp tăng dần theo key: ";
print_r($numbers);
echo "<br>";

krsort($numbers);
echo "Mảng sắp xếp giảm dần theo key: " ;
print_r($numbers);
?>