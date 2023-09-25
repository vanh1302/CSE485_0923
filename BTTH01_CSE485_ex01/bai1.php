<?php
echo '[1]';
function hamtinhtong($arrs) {
    $tong = 0;
    for ($i = 0; $i < count($arrs); $i++) {
        $tong += $arrs[$i];
    }
    echo 'Tổng các phần tử = ' . implode(' + ', $arrs) . ' = ' . $tong.'<br/>';
}
function hamtinhtich($arrs) {
    $tich = 1;
    for ($i = 0; $i < count($arrs); $i++) {
        $tich *= $arrs[$i];
    }
    echo 'Tích các phần tử  = ' . implode(' * ', $arrs) . ' = ' . $tich.'<br/>';
}
function hamtinhhieu($arrs) {
    $hieu = 0;
    for ($i = 0; $i < count($arrs); $i++) {
        $hieu -= $arrs[$i];
    }
    echo 'Hiệu các phần tử = ' . implode(' - ', $arrs) . ' = ' . $hieu.'<br/>';
}
function hamtinhthuong($arrs) {
    $thuong = 1;
    for ($i = 0; $i < count($arrs); $i++) {
        $thuong /= $arrs[$i];
    }
    echo 'Thương các phần tử = ' . implode(' / ', $arrs) . ' = ' . $thuong.'<br/>';
}
$arrs = [2, 5, 6, 9, 2, 5, 6, 12, 5];
hamtinhtong($arrs);
hamtinhhieu($arrs);
hamtinhtich($arrs);
hamtinhthuong($arrs);

?>
