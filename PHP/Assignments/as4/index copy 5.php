<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Elzero Courses">
    <title>Welcome To Elzero Courses</title>
  </head>
  <body>
    <?php
      $name = "Elzero Courses";
    ?>
    <h1>Elzero Courses</h1>
    <p>Here In <?php echo $name ?> We Provide Front-End And Back-End Courses</p>
    <hr>
    <div><?php echo $name ?> Is The What You Need.</div>
    <footer>All Right Reserved To <?php echo $name ?></footer>
  </body>

  <?php 

  // Replace ? With Arithmetic Operators
  echo 10 * 20 + 15 % 3 + 190 + 10 - 400 . "<br>"; // 0

  //

  $a = "10";

  echo (int) $a . "<br>";
  echo gettype((int) $a);
 
  echo "<br>";
  
  
  echo intval($a ) . "<br>";
  echo gettype(intval($a )). "<br>";

  $b = $a;
  settype($b, "integer");
  echo $b . "<br>";
  echo gettype($b);
  echo "<br>";

  $c = $a + 0;
  echo $c ;
  echo "<br>";
  echo gettype($c) ;
  echo "<br>";
  
  //

  $a = 10;
  $b = 20;

  echo ($a - $b ) / $a . "<br>";
  
  //

  $a = 10;
$b = 20;
$c = 15;

var_dump($a < $b); // True
var_dump($c > $a); // True
var_dump($a != $b); // True
var_dump($a <= $b) ; // True
var_dump($a <= $c); // True
var_dump($a != $c); // True
var_dump(gettype($a) == gettype($b)); // True
var_dump(gettype($a) >= gettype($b)); // True
var_dump(gettype((float) $a) < gettype($b)); // True


//
$points = 10;

// Write Your Code Here
  echo "<br>";

$points++;
$points++;
$points++;

echo $points; // 13

  echo "<br>";
// Write Your Code Here
$points--;
$points--;
$points--;
$points--;
$points--;

echo $points; // 8;

  echo "<br>";

  //
// 
$a = "Elzero";
$b = "Web";
$c = "School";

$d = $a . " " . $b . " " . $c;
$d = "$a $b $c";
$d = "{$a} {$b} {$c}";
$d = $a; $d .= " " . $b; $d .= " " . $c;
echo $d;







  ?>
</html>