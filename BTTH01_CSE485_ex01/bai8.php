<?php

$array = ['programming', 'php', 'basic', 'dev', 'is', 'program is PHP'];

$max_length = 0;
$min_length = 9999;

$max_string = "";
$min_string = "";

for ($i = 0; $i < count($array); $i++) {
    $length = strlen($array[$i]);

    if ($length > $max_length) {
        $max_length = $length;
        $max_string = $array[$i];
    }

    if ($length < $min_length) {
        $min_length = $length;
        $min_string = $array[$i];
    }
}

echo "Chuỗi lớn nhất là $max_string , độ dài = $max_length";
echo "</br>";
echo "\nChuỗi nhỏ nhất là $min_string , độ dài = $min_length";

?>
