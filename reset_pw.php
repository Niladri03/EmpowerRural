<?php include 'header.php'; ?>
<?php

include('conn.inc');

function updatePassword($conn, $user_id)
{
    $new_password = "vle#123";
    $update_query = "UPDATE login_master SET USER_PW = '$new_password' WHERE USER_ID = '$user_id'";
    if ($conn->query($update_query) === TRUE) {
        return true;
    } else {
        return false;
    }
}

function updateUserStatus($conn, $user_id, $new_status)
{
    $update_query_user_master = "UPDATE user_master SET USER_STATUS = '$new_status' WHERE USER_ID = '$user_id'";
    $update_query_login_master = "UPDATE login_master SET USER_STATUS = '$new_status' WHERE USER_ID = '$user_id'";

    if ($conn->query($update_query_user_master) === TRUE && $conn->query($update_query_login_master) === TRUE) {
        return true;
    } else {
        return false;
    }
}

if (isset($_GET['action']) && isset($_GET['user_id'])) {
    $action = $_GET['action'];
    $user_id = $_GET['user_id'];

    if ($action === 'password_reset') {
        if (updatePassword($conn, $user_id)) {
            $success_msg = "Password reset successful for user ID: $user_id";
        } else {
            $error_msg = "Error resetting password for user ID: $user_id";
        }
    } elseif ($action === 'status_update') {
        $new_status = $_POST['new_status'];
        if (updateUserStatus($conn, $user_id, $new_status)) {
            $success_msg = "User status updated successfully for user ID: $user_id";
        } else {
            $error_msg = "Error updating user status for user ID: $user_id";
        }
    }
}


$sqlQuery = "SELECT u.USER_ID, u.USER_NAME, l.USER_PW, l.USER_ROLE, u.USER_STATUS FROM user_master u
             JOIN login_master l ON u.USER_ID = l.USER_ID ORDER BY l.USER_ROLE ASC";
$result = $conn->query($sqlQuery);

?>

<div class="wrapper row3">
    <main class="hoc container clear">
        <!-- main body -->
        <!-- ################################################################################################ -->
        <div id="comments">
            <h1 style="text-align: center; color: #896014">RESET PASSWORD</h1>
            <div class="clear"></div><br>
            <div>

                <table style="width: 100%; text-align: center;">
                    <tr>
                        <th>User Role</th>
                        <th>User ID</th>
                        <th>User Name</th>
                        <th>Password Reset</th>
                        <th>User Status</th>
                    </tr>
                    <?php
                    if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                            $user_role = $row['USER_ROLE'];
                            $user_id = $row['USER_ID'];
                            $user_name = $row['USER_NAME'];
                            $user_status = $row['USER_STATUS'];
                    ?>
                            <tr>
                                <td><?php echo $user_role; ?></td>
                                <td><?php echo $user_id; ?></td>
                                <td><?php echo $user_name; ?></td>
                                <td><a href="#" onclick="resetPassword('<?php echo $user_id; ?>')"><i class="fa fa-refresh" aria-hidden="true"></i></a></td>
                                <td>
                                    <form style="display: inline;" action="?action=status_update&user_id=<?php echo $user_id; ?>" method="POST">
                                        <select name="new_status" onchange="this.form.submit()" style="color: <?php echo ($user_status === 'ACTIVE') ? 'green' : 'red'; ?>">
                                            <option value="ACTIVE" <?php echo ($user_status === 'ACTIVE') ? 'selected' : ''; ?>>Active</option>
                                            <option value="INACTIVE" <?php echo ($user_status === 'INACTIVE') ? 'selected' : ''; ?>>Inactive</option>
                                        </select>
                                    </form>
                                </td>
                            </tr>
                    <?php
                        }
                    } else {
                        echo '<tr><td colspan="6">No records found.</td></tr>';
                    }
                    ?>
                </table>
            </div>
        </div>
        <!-- ################################################################################################ -->
    </main>
</div>

<script>
    function resetPassword(user_id) {
        var confirmation = confirm("Are you sure you want to reset the password for this user to 'vle#123'?");
        if (confirmation) {
            window.location.href = "?action=password_reset&user_id=" + user_id;
        }
    }
</script>

<?php include 'footer.php'; ?>