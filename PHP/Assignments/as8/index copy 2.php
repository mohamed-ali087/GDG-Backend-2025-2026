<?php

$str = 'aAa';
$num = 3;
$char = "_";

// Write Your Code Here

// aaa_aaa_aaa_

// echo implode($char, array_fill(0, $num, strtolower($str)));
echo str_repeat(strtolower($str) . $char, $num);

?>

