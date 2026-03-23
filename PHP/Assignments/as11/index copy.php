<?php

$file = "c:\Users\Mohamed Ali\Videos\Measurements Section.mp4";

$size = filesize($file);

echo "Size In Megabyte Is " . round($size / 1024 / 1024) . "<br>";
echo "Size In Kilobyte Is " . round($size / 1024);

?>