<?php
function convertToUpperCase($arr) {
    $result = array_map('strtoupper', $arr);
    return $result;
}

// Mảng 1
$arr1 = ['a', 'b', 'ABC'];
$uppercaseArray1 = convertToUpperCase($arr1);
print_r($uppercaseArray1);

$arr2 = ['1', 'b', 'c', 'd'];
$uppercaseArray2 = convertToUpperCase($arr2);
print_r($uppercaseArray2);

$arr3 = ['a', 0, null, false];
$uppercaseArray3 = convertToUpperCase($arr3);
print_r($uppercaseArray3);
?>