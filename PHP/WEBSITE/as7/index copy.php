<?php
// 9
$greet = function($name) {
    return "Greetings";
};

echo $greet("Osama"); // Greetings

$greet = fn($name) => "Greetings";

echo $greet("Osama"); // Greetings

?>