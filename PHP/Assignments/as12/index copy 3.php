<?php

date_default_timezone_set("Africa/Cairo");

$date = "1990-10-01";

$start = date_create("1970-01-01");
$end = date_create($date);

$diff = date_diff($start, $end);

echo "From Epoch Time Till $date Is Approximately " . $diff->days . " Days<br>";
echo "From Epoch Time Till $date Is Approximately " . $diff->y . " Years";

?>