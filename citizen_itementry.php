<?php
  include('header.php');
  include('conn.inc');

// Citizen Table--------------------------------------------------------------------------------------------
$citizen_name=$_POST['citizen_name'];
$citizen_mobile=$_SESSION['citizen_mobile'];
$citizen_address=$_POST['citizen_address'];
$citizen_gender=$_POST['citizen_gender'];
$citizen_district=$_POST['DISTRICT_NAME'];
$citizen_pin=$_POST['citizen_pin'];
$citizen_block=$_POST['BLOCK_NAME'];
$citizen_age=$_POST['age'];
$citizen_id_type=$_POST['id_type'];
$citizen_id_no=$_POST['id_number'];

$sqlQry = "INSERT INTO citizen_master(CITIZEN_NAME,CITIZEN_MOBILE,CITIZEN_ADDRESS,CITIZEN_PIN,CITIZEN_AGE,CITIZEN_GENDER,DISTRICT_NAME,BLOCK_NAME,ID_TYPE,ID_NO) VALUES(
  '" .$citizen_name."',
  '" .$citizen_mobile."',
  '" .$citizen_address."',
  '" .$citizen_pin."',
  '" .$citizen_age."',
  '" .$citizen_gender."',
  '" .$citizen_district."',
  '" .$citizen_block."',
  '" .$citizen_id_type."',
  '" .$citizen_id_no."')";
  $_SESSION['message_text']  = "Citizen Successfully Added "; 

// Provisions Table--------------------------------------------------------------------------------------------

$service_code=$_SESSION['SERVICE_CODE'];
$queryy="SELECT * FROM service_master WHERE SERVICE_CODE='".$service_code."'";
$res = $conn->query($queryy);
$row = $res->fetch_assoc();
$service_charge=$row["SERVICE_CHARGE"];
$service_commission=$row["VLE_COMMISSION"];
$user_id=$_SESSION['user_id'];
$url=$row['URL'];
$centre_code=$_SESSION['CENTRE_CODE'];


$sqlQry1 = "INSERT INTO provisions(SERVICE_CODE,CITIZEN_NAME,CITIZEN_MOBILE,CENTER_CODE,USER_ID,SERVICE_CHARGE,SERVICE_COMMISSION) VALUES(
  '" .$service_code."',
  '" .$citizen_name."',
  '" .$citizen_mobile."',
  '" .$centre_code."',
  '" .$user_id."',
  '" .$service_charge."',
  '" .$service_commission."')";

  if ($conn->query($sqlQry1) === TRUE && $conn->query($sqlQry) === TRUE)  // registered successfully
  {
   $_SESSION['header'] = "header.php" ;  
    $_SESSION['redirect_page'] = "dashboard.php" ;  
  }else{
    $_SESSION['message_text']  =  $conn->error;  ;
    $_SESSION['header'] = "header.php" ;  
    $_SESSION['redirect_page'] = "dashboard.php" ;   
  }
  $_SESSION['RECEIPT_CENTRE']=$centre_code;
  $_SESSION['RECEIPT_SERVICE']=$service_code;
  $_SESSION['RECEIPT_NAME']=$citizen_name;
  $_SESSION['RECEIPT_MOBILE']=$citizen_mobile;
  $_SESSION['RECEIPT_CHARGE']=$service_charge;
  $_SESSION['RECEIPT_DATE']=date('d-m-Y');
?>
<center><a href="print_receipt?id=*" target='_blank' class="btn">Print Receipt</a><br><br><br>
<a href="dashboard" class="btn">Go To Home</a></center><br><br><br>
<?php
  include('footer.php');
?>