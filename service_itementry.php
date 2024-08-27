<?php
  $ID = isset($_POST['ID']) ? $_POST['ID'] : '';
  include('conn.inc');
  include('header.php');
  $ID=$_SESSION['ID'];

  $service_code = $_POST['service_code'];
  $SERVICE_NAME = $_POST['SERVICE_NAME'];
  $dept_code = $_POST['dept_code']; 
  $service_desc = $_POST['service_desc'];
  $service_status = $_POST['service_status'];
  $service_charge = $_POST['service_charge'];
  $VLE_commission = $_POST['VLE_commission'];
  $service_remarks = $_POST['service_remarks'];
  $URL = $_POST['URL'];
  $ENTRY_USER =  $_SESSION['user_id'];

if($_SESSION['record_found']==0){

    $sqlQry = "INSERT INTO service_master(service_code,SERVICE_NAME,dept_code,service_desc,service_status,service_charge,VLE_commission,service_remarks,USER_ID,URL) VALUES(
            '" .$service_code. "',
            '" .$SERVICE_NAME. "',
            '" .$dept_code. "',
            '" .$service_desc. "',
            '" .$service_status. "',
            '" .$service_charge. "',
            '" .$VLE_commission. "',
            '" .$service_remarks."',
            '" .$ENTRY_USER. "',
            '" .$URL."')";

    $_SESSION['message_text']  = "Service Successfully Added "; 
}else{ 

    $sqlQry = "UPDATE SERVICE_MASTER SET
      service_code ='".$service_code. "',
      SERVICE_NAME ='".$SERVICE_NAME. "',
      dept_code ='".$dept_code. "',
      service_desc ='".$service_desc. "',
      service_status ='".$service_status. "',
      service_charge ='".$service_charge. "',
      VLE_commission ='".$VLE_commission. "',
      service_remarks = '".$service_remarks. "',
      URL='".$URL."'        
      WHERE ID = '".$ID."'";
    $_SESSION['message_text']  = "Service Successfully Updated ";

 }


  if ($conn->query($sqlQry) === TRUE)  // registered successfully
  {
    $_SESSION['message_type']  = 0;     // success
    $_SESSION['redirect_page'] = "" ;  
  }else{
    $_SESSION['message_text']  =  $conn->error;  ;
    $_SESSION['message_type']  = 1;     // error
    $_SESSION['redirect_page'] = "#" ;   
  }
?>
  <script>
  window.location.href = "message";
</script>
 <?php  include('footer.php'); ?>
