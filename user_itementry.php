<?php
  $ID = isset($_POST['ID']) ? $_POST['ID'] : '';
  $USER_DISTRICT = isset($_POST['USER_DISTRICT']) ? $_POST['USER_DISTRICT'] : '';
  $USER_BLOCK = isset($_POST['USER_BLOCK']) ? $_POST['USER_BLOCK'] : '';
  include('conn.inc');
  include('header.php');
  $ID=$_SESSION['ID'];
  
  $USER_ID        = $_POST['USER_ID'];
  $USER_NAME      = $_POST['USER_NAME'];
  $USER_GENDER    = $_POST['USER_GENDER'];
  $USER_DOB       = $_POST['USER_DOB'];
  $USER_ADDRESS         = $_POST['USER_ADDRESS'];
  $USER_DISTRICT    = $_POST['USER_DISTRICT'];
  $USER_PIN      = $_POST['USER_PIN'];
  $USER_BLOCK   = $_POST['USER_BLOCK'];
  $USER_EMAIL       = $_POST['USER_EMAIL'];
  $USER_MOBILE       = $_POST['USER_MOBILE'];
  $CENTRE_CODE       = $_POST['CENTRE_CODE'];
  $BANK_ACC       = $_POST['BANK_ACC'];
  $BANK_IFSC       = $_POST['BANK_IFSC'];
  $BANK_NAME       = $_POST['BANK_NAME'];
  $BANK_BRANCH       = $_POST['BANK_BRANCH'];
  $BANK_HOLDER       = $_POST['BANK_HOLDER'];
  $USER_ROLE       = $_POST['USER_ROLE'];
  $USER_STATUS       = $_POST['USER_STATUS'];
  $SECURITY_QS       = $_POST['SECURITY_QS'];
  $SECURITY_ANS       = $_POST['SECURITY_ANS'];
  $ENTRY_USER =  $_SESSION['user_id'];
    
if($_SESSION['record_found']==0){

    $sqlQry = "INSERT INTO USER_MASTER(USER_ID,USER_NAME,USER_GENDER,USER_DOB,USER_ADDRESS,USER_DISTRICT,USER_PIN,USER_BLOCK,USER_EMAIL,USER_MOBILE,CENTRE_CODE,BANK_ACC,BANK_IFSC,BANK_NAME,BANK_BRANCH,BANK_HOLDER,USER_ROLE,USER_STATUS,SECURITY_QS,SECURITY_ANS,ENTRY_USER) VALUES(
            '" .$USER_ID. "',
            '" .$USER_NAME."',
            '" .$USER_GENDER. "',
            '" .$USER_DOB. "',
            '" .$USER_ADDRESS. "',
            '" .$USER_DISTRICT. "',
            '" .$USER_PIN. "',
            '" .$USER_BLOCK. "',
            '" .$USER_EMAIL. "',
            '" .$USER_MOBILE. "',
            '" .$CENTRE_CODE. "',
            '" .$BANK_ACC. "',
            '" .$BANK_IFSC. "',
            '" .$BANK_NAME. "',
            '" .$BANK_BRANCH. "',
            '" .$BANK_HOLDER. "',
            '" .$USER_ROLE. "',
            '" .$USER_STATUS. "',
            '" .$SECURITY_QS. "',
            '" .$SECURITY_ANS. "',
            '" .$ENTRY_USER. "')";
           

    $_SESSION['message_text']  = "User Successfully Added "; 
}else{ 

    $sqlQry = "UPDATE USER_MASTER SET
      USER_ID ='".$USER_ID. "',
      USER_NAME ='".$USER_NAME. "',
      USER_GENDER ='".$USER_GENDER. "',
      USER_DOB ='".$USER_DOB. "',
      USER_ADDRESS ='".$USER_ADDRESS. "',
      USER_DISTRICT ='".$USER_DISTRICT. "',
      USER_PIN ='".$USER_PIN. "',
      USER_BLOCK ='".$USER_BLOCK. "',
      USER_EMAIL ='".$USER_EMAIL. "',
      USER_MOBILE ='".$USER_MOBILE. "',
      CENTRE_CODE ='".$CENTRE_CODE. "',
      BANK_ACC ='".$BANK_ACC. "',
      BANK_IFSC ='".$BANK_IFSC. "',
      BANK_NAME ='".$BANK_NAME. "',
      BANK_BRANCH ='".$BANK_BRANCH. "',
      BANK_HOLDER ='".$BANK_HOLDER. "',
      USER_ROLE ='".$USER_ROLE. "',
      USER_STATUS ='".$USER_STATUS. "',
      SECURITY_QS ='".$SECURITY_QS. "',
      SECURITY_ANS ='".$SECURITY_ANS. "'     
      WHERE ID = '".$ID."'";
    $_SESSION['message_text']  = "User Successfully Updated ";

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
  <?php include('footer.php');   
?>