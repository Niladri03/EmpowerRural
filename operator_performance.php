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

  $sqlQry = "SELECT SERVICE_CODE, SERVICE_CHARGE FROM provisions WHERE (SERVICE_DATE BETWEEN '".$start_date1."' AND '".$next_day."') AND USER_ID = '$ENTRY_USER';";
  $result = $conn->query($sqlQry);

  if ($result->num_rows > 0) {
    $sqlQry1 = "SELECT COUNT(SERVICE_CODE) FROM provisions WHERE USER_ID = '$ENTRY_USER'";
    $result1 = $conn->query($sqlQry1);
    $row1 = $result1->fetch_assoc();
    $numberOfServices = $row1['COUNT(SERVICE_CODE)'];

    $sqlQry2 = "SELECT SUM(SERVICE_CHARGE) FROM provisions WHERE USER_ID = '$ENTRY_USER'";
    $result2 = $conn->query($sqlQry2);
    $row2 = $result2->fetch_assoc();
    $totalcharge = $row2['SUM(SERVICE_CHARGE)'];

    $currentDate = date('Y-m-d');

    $receiptContent = "
    <html>
    <head>
        <title></title>
    </head>
    <body>
    <center>
    <h1 style='text-align:center;color:#896014'>----------------------OPERATOR PERFORMANCE----------------------</h1>
    <br><br>
        <br>
        <h2>Operator Name: $ENTRY_USER1</h2>
        <p>Number of Services Delivered: $numberOfServices</p>
        <p>Service Charge(Rs.): $totalcharge</p><br>
        <br><br>
    <h1 style='text-align:center;color:#896014'>----------------------------------------------------------------------------------</h1>
        </center>
        <p style='text-align: right;  padding-right: 550px;'> 
     <!--   <a href='print_receipt.php' target='_blank'>Print</a> -->
    </p>
    </body>
    </html>
    <br><br><br>
    ";

    echo $receiptContent;
  } else {
    echo '<div style="text-align: center;">No data found for the selected date range.</div>';
  }
}
?>

<body>
    <div class="wrapper row3">
        <main class="hoc container clear">
            <div id="comments">
                <h2 style='text-align:center;color:#896014'>OPERATOR PERFORMANCE</h2>
                <div class="clear"></div><br>
                <form method="post">
                    <div class="one_half first">
                        <label for="start_date">Start date</label>
                        <input type="date" name="start_date" id="start_date" value="<?php echo $start_date; ?>">
                    </div>
                    <div class="one_half">
                        <label for="end_date">End date</label>
                        <input type="date" name="end_date" id="end_date" value="<?php echo $end_date; ?>">
                    </div>
                    <div class="clear"></div><br>
                    <center><button type="submit" class="btn btn-warning">View Performance</button></center>
                </form>
            </div>
        </main>
    </div>
<div class="clear"></div><br>
    <?php
    include('footer.php');
    ?>
</body>