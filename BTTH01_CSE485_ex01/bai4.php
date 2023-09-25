<?php
$arrs = array("Italy" => "Rome", "Luxembourg" => "Luxembourg", "Belgium" =>
"Brussels", "Denmark" => "Copenhagen", "Finland" => "Helsinki", "France" =>
"Paris", "Slovakia" => "Bratislava", "Slovenia" => "Ljubljana", "Germany" => "Berlin",
"Greece" => "Athens", "Ireland" => "Dublin", "Netherlands" => "Amsterdam",
"Portugal" => "Lisbon", "Spain" => "Madrid", "Sweden" => "Stockholm", "United
Kingdom" => "London", "Cyprus" => "Nicosia", "Lithuania" => "Vilnius", "Czech
Republic" => "Prague", "Estonia" => "Tallin", "Hungary" => "Budapest", "Latvia" =>
"Riga", "Malta" => "Valetta", "Austria" => "Vienna", "Poland" => "Warsaw");
function countrys($city,$country){
    echo "Thủ đô của ". $country .' là '. $city . '</br>';
}
array_walk($arrs,'countrys')
?>