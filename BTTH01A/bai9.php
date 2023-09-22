<?php
function  convertToLowerCase($arr){
    $result = array_map('strtolower', $arr);
    return $result;
}
$arr1 = ['a', 'b', 'ABC'];
$lowerCaseArray = convertToLowerCase($arr1);
print_r($lowerCaseArray);
echo "</br>";

$arr2 = ['1', 'B', 'C', 'E'];
$lowercaseArray2 = convertToLowerCase($arr2);
print_r
($lowercaseArray2);
echo "</br>";

$arr3 = ['a', 0, null, false];
$lowercaseArray3 = convertToLowerCase($arr3);
print_r($lowercaseArray3);
?>