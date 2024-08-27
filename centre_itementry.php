<?php
  $CENTRE_ID = isset($_POST['CENTRE_ID']) ? $_POST['CENTRE_ID'] : '';
  include('conn.inc');
  include('header.php');
  $CENTRE_ID=$_SESSION['CENTRE_ID'];

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
  
  $USER_ID    =  $_SESSION['user_id'];  
    
if($_SESSION['record_found']==0){

    $sqlQry = "INSERT INTO centre_master(centre_code,centre_name,district_code,centre_pin,block_code,centre_status,centre_date,centre_address,centre_lat,centre_lon,USER_ID) VALUES(
            '" .$centre_code. "',
            '" .$centre_name."',
            '" .$district_code. "',
            '" .$centre_pin. "',
            '" .$block_code. "',
            '" .$centre_status. "',
            '" .$centre_date. "',
            '" .$centre_address. "',
            '" .$centre_lat. "',
            '" .$centre_lon. "',
            '" .$USER_ID. "')";
           

    $_SESSION['message_text']  = "Centre Successfully Added "; 
}else{ 

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
    $_SESSION['message_text']  = "Centre Successfully Updated ";

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
<?php include('footer.php');    ?>
