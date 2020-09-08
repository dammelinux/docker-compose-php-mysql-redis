<?php
  $conn = new mysqli("mysql-db", "root", "tel4vn", "tel4vn");
  
  if ($conn->connect_error) {
    die("ERROR: Unable to connect: " . $conn->connect_error);
  } 

  echo 'Connected to the database MySQL.<br>';


  $conn->close();
?>
