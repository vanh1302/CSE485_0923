<?php
$a = [
    'a' => [
        'b' => 0,
        'c' => 1
    ],
    'b' => [
        'e' => 2,
        'o' => [
            'b' => 3
        ]
    ]
];

// Lấy giá trị = 3 có key là 'b'
$valueB = $a['b']['o']['b'];
echo "Giá trị của 'b' là: " . $valueB . "</br>";

// Lấy giá trị = 1 có key là 'c'
$valueC = $a['a']['c'];
echo "Giá trị của 'c' là: " . $valueC . "</br>";

// Lấy thông tin của phần tử có key là 'a'
$infoA = $a['a'];
echo "Thông tin của 'a' là: ";
print_r($infoA);
?>