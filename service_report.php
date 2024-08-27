<?php
include('conn.inc');
include('header.php');
$ENTRY_USER =  $_SESSION['name'];
$result = null;
$start_date =date('Y-m-d', strtotime(' -1 day'));
$end_date = date('Y-m-d');
$next_day = date('Y-m-d', strtotime(' +1 day'));

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $start_date1 = isset($_POST['start_date']) ? date("Y-m-d", strtotime($_POST['start_date'])) : null;
    $end_date1 = isset($_POST['end_date']) ? date("Y-m-d", strtotime($_POST['end_date'])) : null;

    if (isset($_POST['search_text'])) {
        $search_text = $_POST['search_text'];}
        $sqlQry = "SELECT P.SERVICE_CODE, S.SERVICE_NAME, COUNT(DISTINCT P.SERVICE_CODE) UniqueServiceCodes,COUNT(P.SERVICE_CODE) TimesAvailed,
              SUM(P.SERVICE_CHARGE) TotalServiceCharge, P.SERVICE_CHARGE FROM provisions P, service_master S WHERE
              P.SERVICE_DATE BETWEEN '".$start_date1."' AND '".$next_day."' AND P.SERVICE_CODE=S.SERVICE_CODE
              GROUP BY SERVICE_CODE";
        $result = $conn->query($sqlQry);
    }
?>
<body>
 <div class="wrapper row3">
  <main class="hoc container clear"> 
    <div id="comments">
      <h2 style='text-align:center;color:#896014'>SERVICE REPORT</h2>
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
      <th>Serial No.</th>
      <th>Service Name</th>
      <th>Service Charge(Rs.)</th>
      <th>No. of Times Availed</th>
      <th>Total Service Charge Earned(Rs.)</th>    
    </tr>
    <?php         
          if ($result && $result->num_rows > 0) {
            $i = 1; $total = 0; $popular = ''; $time = 0;
            while ($row = $result->fetch_assoc()) {
                ?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $row["SERVICE_NAME"]; ?></td>
                    <td><?php echo $row["SERVICE_CHARGE"]; ?></td>
                    <td><?php echo $row["TimesAvailed"]; ?></td>
                    <td><?php echo $row["TotalServiceCharge"]; ?></td>
                </tr>
                <?php $i = $i + 1; $total = $total + $row["TotalServiceCharge"];
                if($time < $row["TimesAvailed"]){
                  $popular = $row["SERVICE_NAME"];
                  $time = $row["TimesAvailed"];}
            }echo "<h3 style='text-align:center;color:#896014'>Summary</h3><p style='text-align:center;'>Popular Service: $popular<br>Total Charge: $total</p>";
        } else {
          echo '<tr><td  style="text-align:center;" colspan="9">No data found for the selected date range.</td></tr>';
        }
   ?>
</table></div></body>
</div><div class="clear"></div><br>
<?php include 'footer.php' ?>