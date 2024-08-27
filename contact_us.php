<?php
include('index_header.php');
include('conn.inc');
$ID = '';
if (isset($_POST['ID'])) {
    $ID = $_POST['ID'];
} elseif (isset($_GET['ID'])) {
    $ID = trim($_GET['ID']);
}
$_SESSION['ID']=$ID;
$sqlQry = "SELECT * FROM contact_us WHERE ID ='" . $ID. "'";
$result = $conn->query($sqlQry);

if ($result === false) {
    die("Error executing the SQL query: " . $conn->error);
}

if ($result->num_rows == 0) {
    $_SESSION['record_found'] = 0;
    $USER_NAME = "";
    $PHONE = "";
    $EMAIL_ID = "";
    $QUERY_DETAIL    = "";
} else {
    $_SESSION['record_found'] = 1;
    $row = $result->fetch_assoc();
    $USER_NAME = $row['USER_NAME']; 
    $PHONE = $row['PHONE'];
    $EMAIL_ID = $row['EMAIL_ID'];
    $QUERY_DETAIL = $row['QUERY_DETAIL'];
}

?>

<link rel="stylesheet" href="layout/styles/layout.css"> 
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="comments">  
    <h1 style='text-align:center;color:#896014'>Want to reach us?<br>Fill your details and we'll reach you.</h1>
    <br> 
        <form name="ItemEntryForm" action="contactus_itementry.php" method="POST"> 
                <div class="one_third first">
                    <label for="NAME">Name<span>*</span> </label>
                    <input type="text" id="USER_NAME" name="USER_NAME" placeholder="Enter your name" required value="<?php echo $USER_NAME; ?>">
                </div> 
                <div class="one_third">
                    <label for="PHONE">Mobile<span>*</span> </label>
                    <input type="text" id="PHONE" name="PHONE" placeholder="Enter mobile number" maxlength="10" required value="<?php echo $PHONE; ?>">
                </div>
                <div class="one_third">
                    <label for="EMAIL_ID">Email id<span>*</span> </label>
                    <input type="email" id="EMAIL_ID" name="EMAIL_ID" placeholder="Enter your email id" required value="<?php echo $EMAIL_ID; ?>">
                </div>
                <div class="one">
                    <label for="QUERY_DETAIL">Your Query<span>*</span> </label>
                    <input type="text" id="QUERY_DETAIL" name="QUERY_DETAIL" placeholder="Enter your query" required value="<?php echo $QUERY_DETAIL; ?>">
                </div> 
        </div>
        <div class="clear"></div><br>
        <center><button type="submit" class="btn btn-warning">Save</button>  <button type="reset" class="btn btn-warning">Reset</button></center>
        </form>
    <br><br>
      <!--      <button onclick="close_tab();">Close</button> </center>  -->
    
    </main>
    </div>
</body>

<?php
include('index_footer.php');
?>

