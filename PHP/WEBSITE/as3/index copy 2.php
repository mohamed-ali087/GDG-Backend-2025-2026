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
    $name = "elzero";
    $$name = "Web"; // $elzero = "web"

    echo $elzero . "<br>";
    echo $$name. "<br>";
    echo ${$name}. "<br>";
    echo ${"elzero"}. "<br>";
    echo $$name[0] . $$name[1] . $$name[2]. "<br>";
    
    //
    //

    $a = 200;
    $b = &$a;   // b is reference to a
    $a = 100;  
    echo $b;   
    
    //
    echo "<br>";

  ?>
</html>