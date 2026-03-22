<?php
// 8
$message = "Hello";

$$message = function($name) use ($message) {
    return "$message $name";
};

echo $Hello("Osama"); // Hello Osama

?>