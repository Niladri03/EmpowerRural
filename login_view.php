<?php
include('header.php');
include('conn.inc');
$result = null;
$start_date =date('Y-m-d', strtotime(' -1 day'));
$end_date = date('Y-m-d');
$next_day = date('Y-m-d', strtotime(' +1 day'));

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $start_date1 = isset($_POST['start_date']) ? date("Y-m-d", strtotime($_POST['start_date'])) : $start_date;
    $end_date1 = isset($_POST['end_date']) ? date("Y-m-d", strtotime($_POST['end_date'])) : $next_day;

    if (isset($_POST['search_text'])) {
        $search_text = $_POST['search_text'];}
        $sqlQry = "SELECT * FROM user_log WHERE LOG_DATE_TIME BETWEEN '".$start_date1."' AND '".$next_day."' 
        ORDER BY LOG_DATE_TIME DESC;";
        $result = $conn->query($sqlQry);
    }
?>
<body>
 <div class="wrapper row3">
  <main class="hoc container clear"> 
    <div id="comments">
      <h2 style='text-align:center;color:#896014'>LOGIN DETAILS</h2>
      <form method="post">
    <div class="one_half first">
        <label for="start_date">Start date</label>
        <input type="date" name="start_date" id="start_date" value="<?php echo $start_date; ?>" required>
    </div>
    <div class="one_half">
        <label for="end_date">End date</label>
        <input type="date" name="end_date" id="end_date" value="<?php echo $end_date; ?>" required>
    </div>
    <center><button type="submit" class="btn btn-warning">View</button></center>
</form>
</div></main></div>
<div class="clear"></div><br>
    <div class="scrollable">
<div class="clear"></div><br>
    <div style="overflow-x:auto;">
    <table class="center" border='1'>
        <tr>
        <th>ID</th>
        <th>User ID</th>
        <th>Login Date and Time</th>
        <th>Login IP Address</th>
        <th>Login Device Name</th>
        <th>Login Device Type</th>
        </tr>

        <?php         
          if ($result && $result->num_rows > 0) {
            $i = 1;
            while ($row = $result->fetch_assoc()) {
                ?>
                <tr>
                <td><?php echo $i;?></td>
                <td><?php echo $row["USER_ID"];?></td>
                <td><?php echo $row["LOG_DATE_TIME"]; ?></td>
                <td><?php echo $row["LOG_IP"];?></td>
                <td><?php echo $row["LOG_DEVICE_NAME"]; ?></td>
                <td><?php echo $row["LOG_DEVICE_TYPE"]; ?></td>
                </tr>  <?php $i = $i + 1;
        }
    } else {
        echo '<tr><td  style="text-align:center;" colspan="6">No data found for the selected date range.</td></tr>';
    }
    ?>
        </table> 
    </div>
</div>
<?php
include('footer.php');
?>