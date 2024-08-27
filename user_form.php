<?php
include('conn.inc');
include('header.php');
$ID = '';
if (isset($_POST['ID'])) {
    $ID = $_POST['ID'];
} elseif (isset($_GET['ID'])) {
    $ID = trim($_GET['ID']);
}

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
$dep_sql2 = "SELECT CENTRE_CODE,CENTRE_NAME FROM centre_master";
$dep_res2 = $conn->query($dep_sql2);
$dep_op2 = '';
while ($row = $dep_res2->fetch_assoc()) {
$dep_op2 .= '<option value="' . $row['CENTRE_CODE'] . '">' . $row['CENTRE_NAME'] . '</option>';
}

$_SESSION['ID']=$ID;
$sqlQry = "SELECT * FROM user_master WHERE ID ='".$ID."'";
$result = $conn->query($sqlQry);

if ($result === false) {
    die("Error executing the SQL query: " . $conn->error);
}

if ($result->num_rows == 0){
    $_SESSION['record_found']=0;
    $USER_ID      ="";
    $USER_NAME      ="";
    $USER_GENDER     ="";
    $USER_DOB      ="";
    $USER_ADDRESS      ="";
    $USER_DISTRICT      ="";
    $USER_PIN      ="";
    $USER_BLOCK      ="";
    $USER_EMAIL     ="";
    $USER_MOBILE     ="";
    $CENTRE_CODE      ="";
    $BANK_ACC        ="";
    $BANK_IFSC        ="";
    $BANK_NAME        ="";
    $BANK_BRANCH        ="";
    $BANK_HOLDER        ="";
    $USER_ROLE        ="";
    $USER_STATUS        ="";
    $SECURITY_QS        ="";
    $SECURITY_ANS        ="";
    
}else{
    $_SESSION['record_found']=1;
    $row = $result->fetch_assoc();
    $USER_ID      =$row['USER_ID'];
    $USER_NAME   =$row['USER_NAME'];
    $USER_GENDER   =$row['USER_GENDER'];
    $USER_DOB      =$row['USER_DOB'];
    $USER_ADDRESS      =$row['USER_ADDRESS'];
    $USER_DISTRICT     =$row['USER_DISTRICT'];
    $USER_PIN      =$row['USER_PIN'];
    $USER_BLOCK      =$row['USER_BLOCK'];
    $USER_EMAIL      =$row['USER_EMAIL'];
    $USER_MOBILE      =$row['USER_MOBILE'];
    $CENTRE_CODE     =$row['CENTRE_CODE'];
    $BANK_ACC     =$row['BANK_ACC'];
    $BANK_IFSC     =$row['BANK_IFSC'];
    $BANK_NAME     =$row['BANK_NAME'];
    $BANK_BRANCH     =$row['BANK_BRANCH'];
    $BANK_HOLDER     =$row['BANK_HOLDER'];
    $USER_ROLE     =$row['USER_ROLE'];
    $USER_STATUS     =$row['USER_STATUS'];
    $SECURITY_QS     =$row['SECURITY_QS'];
    $SECURITY_ANS     =$row['SECURITY_ANS'];
}
?>

<link rel="stylesheet" href="layout/styles/layout.css"> 
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="comments">
        
    <h1 style='text-align:center;color:#896014'>USER MASTER</h1>   
    <div class="clear"></div>   <br>
         <form name="ItemEntryForm" action="user_itementry" method="POST">
                <div class="one_half first">
                    <label>User ID<span>*</span> </label>
                    <input type="text" id="USER_ID" name="USER_ID" placeholder="Enter user ID" required value="<?php echo $USER_ID; ?>">
                </div>  
                <div class="one_half">
                    <label>User Name<span>*</span> </label>
                    <input type="text" id="USER_NAME" name="USER_NAME" placeholder="Enter user name" required value="<?php echo $USER_NAME; ?>">
                </div>
                <div class="one_half first">
                    <label>User Gender<span>*</span> </label>
                    <td align="center"><select id="USER_GENDER" name="USER_GENDER">
                        <option value = "Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Others">Others</option>
                    </select></td>
                </div>
                <div class="one_half">
                    <label>User DOB<span>*</span> </label>
                    <input type="date" id="USER_DOB" name="USER_DOB" required value="<?php echo $USER_DOB; ?>">
                </div>
                <div class="one">
                    <label>User Address<span>*</span> </label>
                    <input type="text" placeholder="Enter user address" id="USER_ADDRESS" name="USER_ADDRESS" required value="<?php echo $USER_ADDRESS; ?>"></textarea>
                </div>
                <div class="one_third first">
                    <label for="USER_DISTRICT" class="form-label">Select District<span>*</span></label>
                    <select id="USER_DISTRICT"  class="form-select" name="USER_DISTRICT">
                    <?php echo $dep_op; ?>
                </select> 
                </div>               
                <div class="one_third">
                    <label>User PIN<span>*</span> </label>
                    <input type="text" id="user_pin" name="USER_PIN" placeholder="Enter user pin" maxlength="6" required value="<?php echo $USER_PIN; ?>">
                </div>
                <div class="one_third">
                    <label for="USER_BLOCK" class="form-label">Select Block<span>*</span></label>
                    <select id="USER_BLOCK"  class="form-select" name="USER_BLOCK">
                    <?php echo $dep_op1; ?>
                </select>
                </div>
                <div class="one_third first">
                    <label>User Email Address<span>*</span> </label>
                    <input type="email" id="USER_EMAIL" name="USER_EMAIL" placeholder="Enter email address" required value="<?php echo $USER_EMAIL; ?>">
                </div>
                <div class="one_third">
                    <label>User Mobile NO.<span>*</span> </label>
                    <input type="text" id="USER_MOBILE" name="USER_MOBILE" placeholder="Enter user mobile no" maxlength="10" required value="<?php echo $USER_MOBILE; ?>">
                </div>
                <div class="one_third">
                    <label for="CENTRE_CODE" class="form-label">Select Centre<span>*</span></label>
                    <select id="CENTRE_CODE"  class="form-select" name="CENTRE_CODE">
                    <?php echo $dep_op2; ?>
                </select> 
                </div> 
                <div class="one_third first">
                    <label>User Bank Account Number<span>*</span> </label>
                    <input type="text" id="BANK_ACC" name="BANK_ACC" placeholder="Enter bank account" required value="<?php echo $BANK_ACC; ?>">
                </div>
                <div class="one_third">
                    <label>User Bank IFSC<span>*</span> </label>
                    <input type="text" id="BANK_IFSC" name="BANK_IFSC" placeholder="Enter ifsc code" required value="<?php echo $BANK_IFSC; ?>">
                </div>
                <div class="one_third">
                    <label>User Bank Name<span>*</span> </label>
                    <input type="text" id="BANK_NAME" name="BANK_NAME" placeholder="Enter bank name" required value="<?php echo $BANK_NAME; ?>">
                </div>
                <div class="one_third first">
                    <label>User Bank Branch<span>*</span> </label>
                    <input type="text" id="BANK_BRANCH" name="BANK_BRANCH" placeholder="Enter bank branch" required value="<?php echo $BANK_BRANCH; ?>">
                </div>
                <div class="one_third">
                    <label>User Bank Holder Name<span>*</span> </label>
                    <input type="text" id="BANK_HOLDER" name="BANK_HOLDER" placeholder="Enter bank holder name" required value="<?php echo $BANK_HOLDER; ?>">
                </div>
                <div class="one_third">
                    <label>User Role<span>*</span> </label>
                    <td align="center"><select id="USER_ROLE" name="USER_ROLE">
                        <option value="1">Admin</option>
                        <option value="2">Manager</option>
                        <option value="3">Officer</option>
                        <option value="4" selected="selected">Operator</option>
              <!--          <option value="5">5</option>
                        <option value="6">6</option>  -->
                    </select></td>
                </div>
                <div class="one_third first">
                    <label>User Status<span>*</span> </label>
                    <td align="center"><select id="USER_STATUS" name="USER_STATUS">
                        <option value = "Active">Active</option>
                        <option value="Inative">Inative</option>
                    </select></td>
                </div>
                <div class="one_third">
                    <label>Security Question<span>*</span> </label>
                    <input type="text" id="SECURITY_QS" name="SECURITY_QS" placeholder="Enter security question" required value="<?php echo $SECURITY_QS; ?>">
                </div>
                <div class="one_third">
                    <label>Security Answer<span>*</span> </label>
                    <input type="text" id="SECURITY_ANS" name="SECURITY_ANS" placeholder="Enter security answer" required value="<?php echo $SECURITY_ANS; ?>">
                </div>
            </div>
        <div class="clear"></div><br>
        <center><button type="submit" class="btn btn-warning">Submit Form</button>  <button type="reset" class="btn btn-warning">Reset Form</button></center>
        </form>
      <!--      <button onclick="close_tab();">Close</button> </center>  -->
    </main>
</div><div class="clear"></div><br>
<h1 style='text-align:center;color:#896014'>List of Users</h1>
<div style="overflow-x:auto;">
  <table class="center" border='1'>
    <tr>
      <th>ID</th>
      <th>User ID</th>
      <th>User Name</th>
      <th>User Gender</th>
      <th>User DOB</th>
      <th>User Address</th>
      <th>User District</th>
      <th>User PIN</th>
      <th>User Block</th>
      <th>User Email</th>
      <th>User Mobile No.</th>
      <th>Centre ID</th>
      <th>Bank Account</th>
      <th>Bank IFSC</th>
      <th>Bank Name</th>
      <th>Bank Branch</th>
      <th>Bank Holder Name</th>
      <th>User Role</th>
      <th>User Status</th>
      <th>Security Question</th>
      <th>Security Answer</th>
      <th>Entry User</th>
      <th>Update</th>            
    </tr>
    <?php         
           $sqlQry="SELECT * FROM user_master";

           $result = $conn->query($sqlQry);     // excution of sql command
           $i=1;
           while($row = $result->fetch_assoc()) {
          ?>
              <tr>
              <td><?php echo $row["ID"];?></td>
              <td><?php echo $row["USER_ID"];?></td>
              <td><?php echo $row["USER_NAME"];?></td>
              <td><?php echo $row["USER_GENDER"];?></td>
              <td><?php echo $row["USER_DOB"];?></td>
              <td><?php echo $row["USER_ADDRESS"];?></td>
              <td><?php echo $row["USER_DISTRICT"];?></td>
              <td><?php echo $row["USER_PIN"];?></td>
              <td><?php echo $row["USER_BLOCK"];?></td>  
              <td><?php echo $row["USER_EMAIL"];?></td>    
              <td><?php echo $row["USER_MOBILE"];?></td>    
              <td><?php echo $row["CENTRE_CODE"];?></td>    
              <td><?php echo $row["BANK_ACC"];?></td>    
              <td><?php echo $row["BANK_IFSC"];?></td>  
              <td><?php echo $row["BANK_NAME"];?></td>  
              <td><?php echo $row["BANK_BRANCH"];?></td>  
              <td><?php echo $row["BANK_HOLDER"];?></td>
              <td><?php echo $row["USER_ROLE"];?></td>
              <td><?php echo $row["USER_STATUS"];?></td>
              <td><?php echo $row["SECURITY_QS"];?></td>
              <td><?php echo $row["SECURITY_ANS"];?></td>   
              <td><?php echo $row["ENTRY_USER"];?></td>      
              <td><a href='user_form.php?ID=<?php echo $row["ID"]?>'>Update</a></td>   
              </tr>
     <?php $i=$i+1; } ?>
  </table>
  <!--  <p style = 'text-align: right;'> 
  <?php echo "<a href='print.php' target='_blank'>Print</a>";?> 
    </p> -->
</div>
</div>
</body>
<?php
include('footer.php');
 ?>
</html>