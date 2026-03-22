<?php

$mix = [1, 2, 3, "A", "B", "C", 7, 8, 9];
$nums = [4, 5, 6];

array_splice($mix, count(array_slice($mix, 0, 3)), count(array_slice($mix, 3, 3)), $nums);

print_r($mix);

?>

