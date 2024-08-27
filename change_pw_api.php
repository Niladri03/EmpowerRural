<?php
include('conn.inc');
session_start();
$success_msg = "";
$error_msg = "";
$message_type = "";

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
            $message_type = "success";
        } else {
            $error_msg = 'Please enter the old password correctly.';
            $message_type = "error";
        }
    } else {
        $error_msg = 'New passwords do not match.';
        $message_type = "error";
    }
}

$conn->close();

$ResponseArray = array(
    "result" => $message_type,
    "message_text" => (!empty($success_msg)) ? $success_msg : $error_msg,
);

header('Content-Type: application/json');
echo json_encode($ResponseArray);
?>
