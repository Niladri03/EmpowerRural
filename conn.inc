<?php
date_default_timezone_set('Asia/Calcutta');

// --------- for localhost 
 $db_name       = "project_db";
 $servername    = "localhost";
 $username      = "root";
 $password      = "";

 
// --------- for web server 
//$db_name       = "biggeeks_vle";
//$servername    = "localhost";
//$username      = "biggeeks_vle";
//$password      = "CcZ?h]1eW5r=";

 
// Create connection
$conn = new mysqli($servername, $username, $password, $db_name);


// Check connection
if ($conn->connect_error) {
    die("Connection failed  : " . $conn->connect_error);
 echo "Unable to connect";
} 

//  end
?>