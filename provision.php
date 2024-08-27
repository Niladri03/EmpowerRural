<?php
include('conn.inc');
include('header.php');
$ENTRY_USER =  $_SESSION['user_id'];
$result = null;
$start_date =date('Y-m-d', strtotime(' -1 day'));
$end_date = date('Y-m-d');
$next_day = date('Y-m-d', strtotime(' +1 day'));
$search_text ='';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $start_date1 = isset($_POST['start_date']) ? date("Y-m-d", strtotime($_POST['start_date'])) : null;
  $end_date1 = isset($_POST['end_date']) ? date("Y-m-d", strtotime($_POST['end_date'])) : null;

  if (isset($_POST['search_text'])) {
      $search_text = $_POST['search_text'];}
  $sqlQry="SELECT * FROM provisions WHERE (SERVICE_DATE BETWEEN '".$start_date1."' AND '".$next_day."' OR CITIZEN_MOBILE='".$search_text."' OR CITIZEN_NAME='".$search_text."') AND USER_ID = '$ENTRY_USER';";

  $result = $conn->query($sqlQry);
}
?>
<body>
 <div class="wrapper row3">
  <main class="hoc container clear"> 
    <div id="comments">
      <h2 style='text-align:center;color:#896014'>Select the start date and end date</h2>
      <div class="clear"></div><br>
      <form method="post">
    <div class="one_half first">
        <label for="start_date">Enter start date</label>
        <input type="date" name="start_date" id="start_date" value="<?php echo $start_date; ?>">
    </div>
    <div class="one_half">
        <label for="end_date">Enter end date</label>
        <input type="date" name="end_date" id="end_date" value="<?php echo $end_date; ?>">
    </div>
    <div class="one">
        <label for="search_text">Enter Name/Mobile no</label>
        <input type="text" name="search_text" placeholder="Enter name/mobile number to search" id="search_text" value="<?php echo $search_text; ?>">
    </div>
    <div class="clear"></div><br>
    <center><button type="submit" class="btn btn-warning">View Provisions</button></center>
</form>

      </div>
    </div>
    <div class="clear"></div>
  </main> 

<div class="container"> 
<div style="overflow-x:auto;">
<h1 style='text-align:center;color:#896014'>LIST OF PROVISIONS</h1>
<div class="clear"></div><br>
  <table id="provisions-table" class="center" border='1'>
    <tr>
      <th>Serial No.</th>
      <th>Service Code</th>
      <th>Citizen Name</th>
      <th>Citizen Mobile</th>
      <th>Service Date</th>
      <th>Service Charge(Rs.)</th>    
      <th>Print Receipt</th>   
    </tr>
    <?php         
          if ($result && $result->num_rows > 0) {
            $i = 1;
            while ($row = $result->fetch_assoc()) {
                ?>
                <tr>
                    <td><?php echo $i; ?></td>
                    <td><?php echo $row["SERVICE_CODE"]; ?></td>
                    <td><?php echo $row["CITIZEN_NAME"]; ?></td>
                    <td><?php echo $row["CITIZEN_MOBILE"]; ?></td>
                    <td><?php echo $row["SERVICE_DATE"]; ?></td>
                    <td><?php echo $row["SERVICE_CHARGE"]; ?></td>
                    <td><a href="print_receipt?id=<?php echo $row["ID"]?>" target="_blank"><button class=''>Go</button></a></td>
                </tr>
                <?php $i = $i + 1;
            }
        } else {
            echo '<tr><td colspan="9">No data found for the selected date range.</td></tr>';
        }?>
  </table>
  <p style = 'text-align: right; padding:20px; margin-right:15px;'> 
    <?php echo "<a href='print' target='_blank'>Download as PDF file</a>";?>
    <br> 
    <?php echo "<a href='download_provisions' target='_blank'>Download as CSV file</a>";?> 
  </p>
</div>
</div>

</body>
<?php
include('footer.php');
?>
