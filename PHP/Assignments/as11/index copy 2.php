<?php
//7
$file = "elzero.txt";

$content = file_get_contents($file);

$content = str_replace("Osamaa", "Elzero", $content);

file_put_contents($file, $content);
?>