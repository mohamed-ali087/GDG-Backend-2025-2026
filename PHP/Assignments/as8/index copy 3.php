
<?php

$str = "<div><b>Elzero</b></div>";


echo str_replace(["<div>", "</div>"], "", $str);
// echo trim($str, "</div>")
echo substr($str, 5, -6);

?>

