<link rel="stylesheet" href="layout/styles/layout.css"> 
<?php
  $ID = isset($_POST['ID']) ? $_POST['ID'] : '';
  include('conn.inc');
  
  $ID=$_SESSION['ID'];

  $USER_NAME        = $_POST['USER_NAME'];
  $PHONE     = $_POST['PHONE'];
  $EMAIL_ID    = $_POST['EMAIL_ID'];
  $QUERY_DETAIL    = $_POST['QUERY_DETAIL'];
    
if($_SESSION['record_found']==0){

    $sqlQry = "INSERT INTO contact_us(USER_NAME,PHONE,EMAIL_ID,QUERY_DETAIL) VALUES(
            '" .$USER_NAME. "',
            '" .$PHONE. "',
            '" .$EMAIL_ID."',
            '" .$QUERY_DETAIL."')";

    $_SESSION['message_text']  = "We'll contact you soon.<br><br>"; 
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
  window.location.href = "index_msg";
</script>

 <?php include('index_footer.php');
?>
