<?php
  include('conn.inc');
  try{
  $centre_code        = $_POST['centre_code'];
  $centre_name      = $_POST['centre_name'];
  $district_code    = $_POST['district_code'];
  $centre_pin       = $_POST['centre_pin'];
  $block_code         = $_POST['block_code'];
  $centre_status    = $_POST['centre_status'];
  $centre_date      = $_POST['centre_date'];
  $centre_address   = $_POST['centre_address'];
  $centre_lat       = $_POST['centre_lat'];
  $centre_lon       = $_POST['centre_lon'];
  
  $USER_ID    =  $_GET['user_id'];  
    
    $sqlQry = "UPDATE CENTRE_MASTER SET
      centre_code ='".$centre_code. "',
      centre_name ='".$centre_name. "',
      district_code ='".$district_code. "',
      centre_pin ='".$centre_pin. "',
      block_code ='".$block_code. "',
      centre_status ='".$centre_status. "',
      centre_date ='".$centre_date. "',
      centre_address ='".$centre_address. "',
      centre_lat ='".$centre_lat. "',
      centre_lon ='".$centre_lon. "'    
      WHERE CENTRE_ID = '".$CENTRE_ID."'";

  if ($conn->query($sqlQry) === TRUE)  // registered successfully
  {    
    $message  = "Centre Successfully Updated ";
    $message_type = "success";   
    // $logMessage ="Centre Updation Successful [Mobile]";  
  }else{
    $message  =  $conn->error;
    $message_type = "success";   
    // $logMessage ="Centre Updation Successful [Mobile]";
  }
}

  catch(Exception $e) {

    $message  =  $conn->error;
    $message_type = "success";   
    // $logMessage ="Centre Updation Successful [Mobile]";

} finally {

    // logwrite($logMessage); // write to log file
    $conn->close();
    
    $ResponseArray=array(
        "result" =>$message_type,
        "message_text" => $message,
    );

    echo json_encode($ResponseArray);
}
