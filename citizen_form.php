<?php
include('conn.inc');
include('header.php');

$SERVICE_CODE =  trim($_GET["SERVICE_CODE"]) ;
$_SESSION['SERVICE_CODE']=$SERVICE_CODE;

$msg="No user with this mobile number exists...";

$citizen_mobile = isset($_POST['citizen_mobile']) ? $_POST['citizen_mobile'] : '';
$_SESSION['citizen_mobile']=$citizen_mobile;

$dep_sql = "SELECT DISTRICT_CODE,DISTRICT_NAME FROM district_master";
$dep_res = $conn->query($dep_sql);
$dep_op = '';
while ($row = $dep_res->fetch_assoc()) {
$dep_op .= '<option value="' . $row['DISTRICT_CODE'] . '">' . $row['DISTRICT_NAME'] . '</option>';
}
$dep_sql1 = "SELECT BLOCK_CODE,BLOCK_NAME FROM block_master";
$dep_res1 = $conn->query($dep_sql1);
$dep_op1 = '';
while ($row = $dep_res1->fetch_assoc()) {
$dep_op1 .= '<option value="' . $row['BLOCK_CODE'] . '">' . $row['BLOCK_NAME'] . '</option>';
}

    $sqlQry = "SELECT * FROM citizen_master WHERE CITIZEN_MOBILE = '".$citizen_mobile."'";
    $result = $conn->query($sqlQry);
    if ($result === false) {
        die("Error executing the SQL query: " . $conn->error);
    }
    if ($result->num_rows == 0){
        echo "$msg";
        $citizen_name      ="";
        $citizen_address    ="";
        $citizen_gender    ="";
        $DISTRICT_NAME     ="";
        $citizen_pin   ="";
        $BLOCK_NAME       ="";
        $age          ="";
        $id_type          ="";
        $id_number          ="";
    }else{
        $row = $result->fetch_assoc();
        $citizen_name      =	$row['CITIZEN_NAME'];
        $citizen_address   =	$row['CITIZEN_ADDRESS'];
        $citizen_gender    =	$row['CITIZEN_GENDER'];
        $DISTRICT_NAME = $row['DISTRICT_NAME'];
        $citizen_pin       = $row['CITIZEN_PIN'];
        $BLOCK_NAME       = $row['BLOCK_NAME'];
        $age      =	$row['CITIZEN_AGE'];
        $id_type       = $row['ID_TYPE'];
        $id_number       = $row['ID_NO'];
    }

$gender_type1="";
$gender_type2="";
$gender_type3="";
switch($citizen_gender){
  case "MALE":
    $gender_type1="SELECTED";
    break;
  case "FEMALE":
    $gender_type2="SELECTED";
    break;
  case "OTHERS":
    $gender_type3="SELECTED";
    break;
}

$ID_TYPE1="";
$ID_TYPE2="";
$ID_TYPE3="";
$ID_TYPE4="";
$ID_TYPE5="";
switch($id_type){
  case "Aadhaar Card":
    $ID_TYPE1="SELECTED";
    break;
  case "Voter ID Card":
    $ID_TYPE2="SELECTED";
    break;
  case "Driving License":
    $ID_TYPE3="SELECTED";
    break;
  case "PAN Card":
    $ID_TYPE4="SELECTED";
    break;
  case "Others":
    $ID_TYPE5="SELECTED";
    break;
}

$SERVICE_CODE = $_SESSION['SERVICE_CODE'];
$URL = "";
$sql = "SELECT URL FROM service_master WHERE SERVICE_CODE = '$SERVICE_CODE'";
$result = $conn->query($sql);
if ($result && $result->num_rows > 0) {
    $row = $result->fetch_assoc();
    $URL = $row['URL'];
}
?>

<link rel="stylesheet" href="layout/styles/layout.css"> 
<body>
<div class="wrapper row3">
  <main class="hoc container clear">
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="comments">
    <h1 style='text-align:center;color:#896014'>CITIZEN INFORMATION</h1>
    <br>
    <form method="post">
    <div class="one_half first">
        <label>Citizen Mobile No.<span>*</span> </label>
        <div class="search-input">
        <input type="text" id="citizen_mobile" name="citizen_mobile" maxlength="10" placeholder="Enter citizen mobile no" required value="<?php echo $citizen_mobile; ?>">
        <button type="submit" name="search"><i class="fa fa-search"></i></button>
    </div></div></form>
    <style>
    .search-input {
            display: flex;
        }
    .search-input input[type="text"] {
        flex: 1;
    }
    .search-button {
        margin-left: 10px;
        margin-top: 26px;
    }
    </style>
<script type="text/javascript">
    function openWebsite() {
        var url = "<?php echo $URL; ?>"; 
        var newTab = window.open(url, '_blank'); 
    }
</script>

    <form name="ItemEntryForm" action="citizen_itementry" method="POST">
                <div class="one_half">
                    <label>Citizen Name<span>*</span> </label>
                    <input type="text" id="citizen_name" name="citizen_name" placeholder="Enter citizen name"  required value="<?php echo $citizen_name; ?>">
                </div>
                <div class="one_half first">
                    <label>Citizen PIN<span>*</span> </label>
                    <input type="text" id="citizen_pin" name="citizen_pin" placeholder="Enter citizen pin" maxlength="6" required value="<?php echo $citizen_pin; ?>">
                </div>
                <div class="one_half">
                    <label>Citizen Address<span>*</span> </label>
                    <input type="text" id="citizen_address" name="citizen_address" placeholder="Enter citizen address"  required value="<?php echo $citizen_address; ?>">
                </div>
                <div class="one_half first">
                    <label>Citizen Age<span>*</span> </label>
                    <input type="number" id="age" name="age" placeholder="Enter citizen age" required value="<?php echo $age; ?>">
                </div>            
                <div class="one_half">
                <label for="citizen_gender">Gender<span>*</span></label>
                <select id="citizen_gender" name="citizen_gender" style="padding: 9px;" required  value="<?php echo $citizen_gender ; ?>">
                    <option value="MALE" <?php echo $gender_type1; ?> >MALE</option>
                    <option value="FEMALE" <?php echo $gender_type2; ?> >FEMALE</option>
                    <option value="OTHER" <?php echo $gender_type3; ?> >OTHER</option>
                </select>
                </div>
                <div class="one_half first" >
                    <label for="DISTRICT_NAME" class="form-label">District Name<span>*</span></label>
                    <select id="DISTRICT_NAME"  class="form-select" name="DISTRICT_NAME">
                    <?php echo $dep_op; ?>
                </select> 
                </div>
                <div class="one_half ">
                    <label for="BLOCK_NAME" class="form-label">Block Name<span>*</span></label>
                    <select id="BLOCK_NAME"  class="form-select" name="BLOCK_NAME">
                    <?php echo $dep_op1; ?>
                </select>
                </div>
                <div class="one_half first">
                <label for="id_type">ID Type<span>*</span></label>
                <select id="id_type" name="id_type" style="padding: 9px;" required  value="<?php echo $id_type ; ?>">
                    <option value="Aadhaar Card" <?php echo $ID_TYPE1; ?> >Aadhaar Card</option>
                    <option value="Voter ID Card" <?php echo $ID_TYPE2; ?> >Voter ID Card</option>
                    <option value="Driving License" <?php echo $ID_TYPE3; ?> >Driving License</option>
                    <option value="PAN Card" <?php echo $ID_TYPE4; ?> >PAN Card</option>
                    <option value="Others" <?php echo $ID_TYPE5; ?> >Others</option>
                </select>
                </div>
                <div class="one_half">
                    <label for="id_number">ID No.<span>*</span> </label>
                    <input type="text" id="id_number" name="id_number" placeholder="Enter ID no" required value="<?php echo $id_number; ?>">
                </div> 
            </div>
        <div class="clear"></div><br>
        <center><button type="submit" class="btn btn-warning" onclick="openWebsite()">Submit Form</button>  <button type="reset" class="btn btn-warning">Reset Form</button></center>
        </form>
        <div class="clear"></div><br>
      <!--      <button onclick="close_tab();">Close</button> </center>  -->
    
    </main>
    </div>
</body>
<?php include('footer.php');