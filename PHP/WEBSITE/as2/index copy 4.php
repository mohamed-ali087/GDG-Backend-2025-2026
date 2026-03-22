<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="<?php

use function PHPSTORM_META\type;

 echo 'UTF-8'; ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php "My First PHP Page"; ?></title>
  </head>
  <body>
    <div><?php echo "We Love"; ?></div> 
    <div><?php echo "Elzero Channel"; ?></div>
  <?php
    echo floor(15.2 + 14.7 + (10.5 + 10.5)). "<br>"; // 50
    echo (int)(15.2 + 14.7 + (10.5 + 10.5)). "<br>"; // 50
    echo gettype((int)(15.2 + 14.7 + (10.5 + 10.5))) . "<br>"; // Integer

    echo "<hr>";

    echo gettype(100);

    echo "<br>";

    var_dump(100); 

    echo "<br>";

    echo get_debug_type(100);

    //

    echo "Hello \"Elzero\" \\\\ \"\"\" We Love \"\$\$PHP\" <br>";
    //

    echo "We <br> Love <br> Elzero <br> Web <br> School <br>";

    //

    echo 'Hello "\'Elzero\'"
    We Love $Programming$ 
    Languages Specially "PHP"';

  ?>
  </body>
</html>