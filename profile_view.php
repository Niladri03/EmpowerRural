<?php
include('conn.inc');
include('header.php');

$sqlQry="SELECT * FROM user_master
    WHERE USER_ID='".$_SESSION['user_id']."'";
$result = $conn->query($sqlQry);
$row = $result->fetch_assoc();

    $user_id        = $row['USER_ID'];
    $user_name      =	$row['USER_NAME'];
    $user_gender    =	$row['USER_GENDER'];
    $user_dob      =	$row['USER_DOB'];
    $user_address   =	$row['USER_ADDRESS'];
    $user_district = $row['USER_DISTRICT'];
    $user_pin       = $row['USER_PIN'];
    $user_block       = $row['USER_BLOCK'];
    $user_email       = $row['USER_EMAIL'];
    $user_mobile       = $row['USER_MOBILE'];
    $centre_code    =	$row['CENTRE_CODE'];
    $bank_acc       = $row['BANK_ACC'];
    $bank_ifsc       = $row['BANK_IFSC'];
    $bank_name       = $row['BANK_NAME'];
    $bank_branch       = $row['BANK_BRANCH'];
    $bank_holder       = $row['BANK_HOLDER'];
    $user_role       = $row['USER_ROLE'];
    $user_status       = $row['USER_STATUS'];
    $security_qs       = $row['SECURITY_QS'];
    $security_ans       = $row['SECURITY_ANS'];
?>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div id="comments">
      <h1 style='text-align:center;color:#896014'>PROFILE</h1>
        <form>
          <div>
          <div class="one_third first">
            <label for="User ID">User ID</label>
            <input type="text" name="user_id" id="user_id" size="22" value="<?php echo $user_id ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="user name">User Name</label>
            <input type="text" name="user_name" id="user_name" size="22" value="<?php echo $user_name ; ?>" readonly>
          </div>

          <div class="one_third">
          <label>User Gender</label>
          <input type="text" id="user_gender" name="user_gender" value="<?php echo $user_gender ; ?>" readonly>
          </div>

          <div class="one_third first">
            <label>User Date of Birth</label>
            <input type="date" id="user_dob" name="user_dob" size="22" value="<?php echo $user_dob ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="user_address">User Address</label>
            <input name="user_address" id="user_address" value="<?php echo $user_address ; ?>" readonly></input>
          </div>

          <div class="one_third">
          <label for="User_district">User District</label>
          <input type="text" name="user_district" id="user_district" size="22" value="<?php echo $user_district ; ?>" readonly>
          </div>

          <div class="one_third first">
            <label for="user_pin">User Pin</label>
            <input type="text" name="user_pin" id="user_pin" size="22" value="<?php echo $user_pin ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="user_block">User Block</label>
            <input type="text" name="user_block" id="user_block" size="22" value="<?php echo $user_block ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="user_email">User Email</label>
            <input type="email" name="user_email" id="user_email" size="22" value="<?php echo $user_email ; ?>" readonly>
          </div>

          <div class="one_third first">
            <label for="user_mobile">User Mobile</label>
            <input type="tel" name="user_mobile" id="user_mobile" size="22" value="<?php echo $user_mobile ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="centre Code">Centre Code</label>
            <input type="text" name="centre_code" id="centre_code" size="22" value="<?php echo $centre_code ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="bank_acc">User Bank Account</label>
            <input type="text" name="bank_acc" id="bank_acc" size="22" value="<?php echo $bank_acc ; ?>" readonly>
          </div>

          <div class="one_third first">
            <label for="bank_ifsc">User IFSC Number</label>
            <input type="text" name="bank_ifsc" id="bank_ifsc" size="22" value="<?php echo $bank_ifsc ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="bank_name">User Bank Name</label>
            <input type="text" name="bank_name" id="bank_name" size="22" value="<?php echo $bank_name ; ?>" readonly>
          </div>

          <div class="one_third">
          <label for="bank_branch">User Bank Branch</label>
          <input type="text" name="bank_branch" id="bank_branch" size="22" value="<?php echo $bank_branch ; ?>" readonly>
          </div>

          <div class="one_third first">
            <label for="bank_holder">User Bank Holder</label>
            <input type="text" name="bank_holder" id="bank_holder" size="22" value="<?php echo $bank_holder ; ?>" readonly>
          </div>

          <div class="one_third">
          <label for="user_role">User Role</label>
            <select id="user_role" name="user_role" id="user_role" style="padding: 9px;" value="<?php echo $user_role ; ?>" readonly>
            <option value="1">Admin</option>
            <option value="2">Manager</option>
            <option value="3">Officer</option>
            <option value="4" selected>Operator</option>
            <!-- <option value="5">5</option>
            <option value="6">6</option> -->
            </select>
          </div>

          <div class="one_third">
          <label for="user_status">User Status</label>
            <select id="user_status" name="user_status" id="user_status" style="padding: 9px;" value="<?php echo $user_status ; ?>" readonly>
            <option value="ACTIVE">ACTIVE</option>
            <option value="INACTIVE">INACTIVE</option>
            </select>
          </div>

          <div class="one_third first">
            <label for="security_qs">User Security Questions</label>
            <input type="text" name="security_qs" id="security_qs" size="22" value="<?php echo $security_qs ; ?>" readonly>
          </div>

          <div class="one_third">
            <label for="security_ans">User Security Ans</label>
            <input type="text" name="security_ans" id="security_ans" size="22" value="<?php echo $security_ans ; ?>" readonly>
          </div>
        <div class = "one_third first">              
          
          </div>
          
          <div class="one_third">          
          
          </div>
        </form>
      </div>
    </div>
    <div class="clear"></div>
  </main>
</div>
<?php
include('footer.php');
?>