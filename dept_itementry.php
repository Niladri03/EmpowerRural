<?php
  $ID = isset($_POST['ID']) ? $_POST['ID'] : '';
  include('conn.inc');
  include('header.php');
  $ID=$_SESSION['ID'];

  $dept_code        = $_POST['dept_code'];
  $dept_name     = $_POST['dept_name'];
  $dept_status    = $_POST['dept_status'];
  $USER_ID =  $_SESSION['user_id'];
    
if($_SESSION['record_found']==0){

    $sqlQry = "INSERT INTO department_master(dept_code,dept_name,dept_status,USER_ID) VALUES(
            '" .$dept_code. "',
            '" .$dept_name. "',
            '" .$dept_status."',
            '" .$USER_ID. "')";

    $_SESSION['message_text']  = "Department Successfully Added "; 
}else{ 

    $sqlQry = "UPDATE department_master SET
      dept_code ='".$dept_code. "',
      dept_name ='".$dept_name. "',
      dept_status = '".$dept_status. "'           
      WHERE ID = '".$ID."'";
    $_SESSION['message_text']  = "Department Successfully Updated ";

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

  <?php include('footer.php'); ?>
