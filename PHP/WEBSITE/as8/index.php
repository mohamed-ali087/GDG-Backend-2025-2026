<?php

$num_one = -1;
$num_two = 2.5;
$let_one = "o";
$let_two = "z";
$str = "El%er0";


$str = str_replace("%", $let_two, $str);


$str = substr_replace($str, $let_one, $num_one, 1);

echo $str;
?>

