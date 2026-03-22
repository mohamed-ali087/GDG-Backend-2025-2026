  <?php 

    unset($b);
    $a = @$b or die("Variable not found");

    // Code 2
    $f = @file("Not_A_File") or die("custom error");

    // Code 3
    (@include("Not_A_File")) or die("custom error");


  ?>