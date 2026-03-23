<?php

$drives = ["C:", "D:"];

foreach ($drives as $drive) {
    $size = disk_total_space($drive); 
    $terabyte = $size / 1099511627776; 
    echo number_format($terabyte, 2) . " Terabyte<br>";
}

?>