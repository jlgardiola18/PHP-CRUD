<?php

    $server = "sql12.freesqldatabase.com";
    $username = "sql12765164";
    $password = "6YhCRCwI6t";
    $dbname = "sql12765164";

    $conn = new mysqli($server, $username, $password, $dbname);

    if($conn->connect_error){
        die ("Connection failed" .$conn->connect_error);
    }

?>