
<?php

$str = "Elzero Web School";
$e = "e";
$o = "O";
$four = 4;

echo substr_count(substr($str, 2, $four), strtolower($o)); // 1

echo "<br>";

echo substr_count($str, $e); // 2


?>

