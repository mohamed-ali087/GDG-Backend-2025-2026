
<?php
// 6
$chars = ["A", "B", "C", "D", "E"];
$char = "@@";
$zero = 0;

print_r(array_merge($chars, str_split(str_repeat($char, 2) . substr($char,0,1))));

// Output
// Array
// (
//   [0] => A
//   [1] => B
//   [2] => C
//   [3] => D
//   [4] => E
//   [5] => @
//   [6] => @
//   [7] => @
//   [8] => @
//   [9] => @
// )
?>

