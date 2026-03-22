<?php
//18
$title = "E&z\$r0 W\$b Sch00&";

$replacements = ["&" => "l", "\\" => "e", "$" => "e", "0" => "o"];
$count = 0;

$result = str_replace(array_keys($replacements), array_values($replacements), $title, $count);

/*
Syntax
str_replace(find,replace,string,count)
Parameter Values
Parameter	Description
find	Required. Specifies the value to find
replace	Required. Specifies the value to replace the value in find
string	Required. Specifies the string to be searched
count	Optional. A variable that counts the number of replacements

*/

echo $result . "<br>";
echo $count;

?>