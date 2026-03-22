
<?php

$chars = ["A", "B", "C"];


array_push($chars, "D");


$chars[] = "D"; // add to the end


$chars = array_merge($chars, ["D"]);


array_splice($chars, count($chars), 0, "D");

print_r($chars);

?>

