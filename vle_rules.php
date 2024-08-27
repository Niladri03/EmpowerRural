<!-- This is a business rules file -->
<?php

// Task 1: Insert record into the user_log

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
include('conn.inc');
$USER_ID = isset($_SESSION['user_id']) ? $_SESSION['user_id'] : '';
$sqlQry="SELECT * FROM user_master WHERE USER_ID='".$USER_ID."'";
$result = $conn->query($sqlQry);
$row = $result->fetch_assoc();
$_SESSION['CENTRE_CODE'] = $row['CENTRE_CODE'];
$_SESSION['USER_MOBILE'] = $row['USER_MOBILE'];
?>
<script>
   window.location.href = "dashboard";
</script>

