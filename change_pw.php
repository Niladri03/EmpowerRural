<?php
include('conn.inc');
include('header.php');

$success_msg = "";
$error_msg = "";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $old_pw = $_POST['old_pw'];
    $new_pw = $_POST['new_pw'];
    $re_new = $_POST['re_new'];

    if ($new_pw === $re_new) {
      $sqlQry = "UPDATE login_master SET
          USER_PW='" . $new_pw . "'
          WHERE USER_ID='" . $_SESSION['user_id'] . "' AND USER_PW='" . $old_pw . "'";
      $result = $conn->query($sqlQry);

      if ($result === true && mysqli_affected_rows($conn) > 0) {
          $success_msg = 'Password changed successfully.';
      } else {
          $error_msg = 'Please enter the old password correctly.';
      }
  } else {
      $error_msg = 'New passwords do not match.';
  }
}

?>

<div class="wrapper row3">
  <main class="hoc container clear"> 
    <div id="comments">
      <h1 style='text-align:center;color:#896014'>CHANGE PASSWORD</h1>
      <div class="clear"></div><br>
        <form method="post">
          <div>
          <div class="one">
            <label for="old_pw">Enter current password<span>*</span></label>
            <input type="password" name="old_pw" id="old_pw" size="22" required >
          </div>

          <div class="one_half first">
            <label for="new_pw">Enter new password<span>*</span></label>
            <input type="password" name="new_pw" id="new_pw" size="22" required >
          </div>
          <div class="one_half">
            <label for="re_new">Re Enter new password<span>*</span></label>
            <input type="password" name="re_new" id="re_new" size="22" required >
          </div>
          <center>
          <?php
                    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                        if (!empty($success_msg)) {
                            echo "<p style='color: green;'>$success_msg</p>";
                        } elseif (!empty($error_msg)) {
                            echo "<p style='color: red;'>$error_msg</p>";
                        }
                    } else{
                      echo "<p> </p>";
                    }
            ?></center>
          <center><button type="submit" class="btn btn-warning">Submit</button>  <button type="reset" class="btn btn-warning">Reset</button></center>
          
          <div class="one_third first">         
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