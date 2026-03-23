<?php

date_default_timezone_set("Africa/Cairo");

echo date_default_timezone_get() . "<br>";

$date = "2022-10-10 10:10:10";

$newDate = strtotime("+15 hours +15 minutes +15 seconds", strtotime($date));

echo date("Y-m-d h:i:s A", $newDate);

?>