<?php
include('conn.inc');
include('header.php');
$ENTRY_USER =  $_SESSION['user_id'];
$ENTRY_USER1 =  $_SESSION['name'];
$result = null;
$start_date =date('Y-m-d', strtotime(' -1 day'));
$end_date = date('Y-m-d');
$next_day = date('Y-m-d', strtotime(' +1 day'));

if (isset($_POST['start_date'])) {
  $start_date1 = date("Y-m-d", strtotime($_POST['start_date']));
  $end_date1 = date("Y-m-d", strtotime($_POST['end_date']));

  $sqlQry = "SELECT P.USER_ID, U.USER_NAME, COUNT(P.ID) NUMBER, SUM(P.SERVICE_CHARGE) CHARGE FROM provisions P, user_master U WHERE P.USER_ID=U.USER_ID AND P.SERVICE_DATE BETWEEN '".$start_date1."' AND '".$next_day."' GROUP BY P.USER_ID;";
  $result = $conn->query($sqlQry);}
?>
<body>
 <div class="wrapper row3">
  <main class="hoc container clear"> 
    <div id="comments">
      <h2 style='text-align:center;color:#896014'>OPERATOR PERFORMANCE</h2>
      <form method="post">
    <div class="one_half first">
        <label for="start_date">Start date</label>
        <input type="date" name="start_date" id="start_date" value="<?php echo $start_date; ?>" required>
    </div>
    <div class="one_half">
        <label for="end_date">End date</label>
        <input type="date" name="end_date" id="end_date" value="<?php echo $end_date; ?>" required>
    </div>
    <center><button type="submit" class="btn btn-warning">View Report</button></center>
</form>
</div></main></div>
<div class="clear"></div><br>
    <div class="scrollable">
        <table>
            <tr>
              <th>Sl No</th>
              <th>Operator ID</th>
              <th>Operator Name</th>
              <th>No.of Services</th>
              <th>Total Charge</th>
            </tr>
          <?php         
          if ($result && $result->num_rows > 0) {
            $i = 1; $total = 0; $popular = ''; $time = 0;
            while ($row = $result->fetch_assoc()) {
                ?>
              <tr>
              <td><?php echo $i;?></td>
              <td><?php echo $row["USER_ID"];?></td>
              <td><?php echo $row["USER_NAME"];?></td>
              <td><?php echo $row["NUMBER"];?></td>
              <td><?php echo $row["CHARGE"];?></td>
              </tr>
              <?php $i = $i + 1; $total = $total + $row["CHARGE"];
                if($time < $row["NUMBER"]){
                  $popular = $row["USER_NAME"];
                  $time = $row["NUMBER"];}
            }echo "<h3 style='text-align:center;color:#896014'>Summary</h3><p style='text-align:center;'>Popular Operator: $popular<br> Service Charge: $total</p>";
            }else {
              echo '<tr><td  style="text-align:center;" colspan="9">No data found for the selected date range.</td></tr>';
            }
         ?>
  </table></div></body>
  </div><div class="clear"></div><br>
<?php include 'footer.php'?>