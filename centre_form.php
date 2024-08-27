<?php
include('conn.inc');
include('header.php');
$CENTRE_ID = '';
if (isset($_POST['CENTRE_ID'])) {
    $CENTRE_ID = $_POST['CENTRE_ID'];
} elseif (isset($_GET['CENTRE_ID'])) {
    $CENTRE_ID = trim($_GET['CENTRE_ID']);
}

$dep_sql = "SELECT DISTRICT_CODE,DISTRICT_NAME FROM district_master";
$dep_res = $conn->query($dep_sql);
$dep_op = '';
while ($row = $dep_res->fetch_assoc()) {
$dep_op .= '<option value="' . $row['DISTRICT_CODE'] . '">' . $row['DISTRICT_NAME'] . '</option>';
}
$dep_sql1 = "SELECT BLOCK_CODE,BLOCK_NAME FROM block_master";
$dep_res1 = $conn->query($dep_sql1);
$dep_op1 = '';
while ($row = $dep_res1->fetch_assoc()) {
$dep_op1 .= '<option value="' . $row['BLOCK_CODE'] . '">' . $row['BLOCK_NAME'] . '</option>';
}

$_SESSION['CENTRE_ID']=$CENTRE_ID;
$sqlQry = "SELECT * FROM centre_master WHERE CENTRE_ID ='".$CENTRE_ID."'";
$result = $conn->query($sqlQry);

if ($result === false) {
    die("Error executing the SQL query: " . $conn->error);
}

if ($result->num_rows == 0){
    $_SESSION['record_found']=0;
    $centre_id      ="";
    $centre_code      ="";
    $centre_name     ="";
    $district_code      ="";
    $centre_pin      ="";
    $block_code      ="";
    $centre_status      ="";
    $centre_date      ="";
    $centre_address     ="";
    $centre_lat     ="";
    $centre_lon      ="";
    
}else{
    $_SESSION['record_found']=1;
    $row = $result->fetch_assoc();
    $centre_id      =$row['CENTRE_ID'];
    $centre_code   =$row['CENTRE_CODE'];
    $centre_name   =$row['CENTRE_NAME'];
    $district_code      =$row['DISTRICT_CODE'];
    $centre_pin      =$row['CENTRE_PIN'];
    $block_code     =$row['BLOCK_CODE'];
    $centre_status      =$row['CENTRE_STATUS'];
    $centre_date      =$row['CENTRE_DATE'];
    $centre_address      =$row['CENTRE_ADDRESS'];
    $centre_lat      =$row['CENTRE_LAT'];
    $centre_lon     =$row['CENTRE_LON'];
}
?>

<link rel="stylesheet" href="layout/styles/layout.css"> 
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="comments">
    <h1 style='text-align:center;color:#896014'>CENTRE MASTER</h1>
    <br>
         <form name="ItemEntryForm" action="centre_itementry" method="POST">  
                <div class="one_half first">
                    <label>Centre Code<span>*</span> </label>
                    <input type="text" id="centre_code" name="centre_code" placeholder="Enter centre code"  required value="<?php echo $centre_code; ?>">
                </div>
                <div class="one_half">
                    <label>Centre Name<span>*</span> </label>
                    <input type="text" id="centre_name" name="centre_name" placeholder="Enter centre name"  required value="<?php echo $centre_name; ?>">
                </div>
                <div class="one_third first">
                    <label for="district_code" class="form-label">Select District<span>*</span></label>
                    <select id="district_code"  class="form-select" name="district_code">
                    <?php echo $dep_op; ?>
                </select> 
                </div>
                <div class="one_third">
                    <label>Centre PIN<span>*</span> </label>
                    <input type="text" id="centre_pin" name="centre_pin" placeholder="Enter centre pin" maxlength="6" required value="<?php echo $centre_pin; ?>">
                </div>
                <div class="one_third">
                    <label for="block_code" class="form-label">Select Block<span>*</span></label>
                    <select id="block_code"  class="form-select" name="block_code">
                    <?php echo $dep_op1; ?>
                </select> 
                </div>             
                <div class="one_half first">
                    <label>Centre Status<span>*</span> </label>
                    <td><select id="centre_status" name="centre_status">
                        <option value = "Active">Active</option>
                        <option value="Inactive">Inactive</option>
                    </select></td>
                </div>
                <div class="one_half">
                    <label>Centre Date<span>*</span> </label>
                    <input type="date"  id="centre_date" name="centre_date" placeholder="Enter centre date" required value="<?php echo $centre_date; ?>">
                </div>
                <div class="one">
                    <label>Centre Address<span>*</span> </label>
                    <input type="text" placeholder="Enter centre address" id="centre_address" name="centre_address" required value="<?php echo $centre_lat; ?>"></textarea>
                </div>
                <div class="one_half first">
                    <label>Centre Latitude<span>*</span> </label>
                    <input type="text" id="centre_lat"  name="centre_lat" placeholder="Enter centre lat"  required value="<?php echo $centre_lat; ?>">
                </div>
                <div class="one_half">
                    <label>Centre Longitude<span>*</span> </label>
                    <input type="text" id="centre_lon"  name="centre_lon" placeholder="Enter centre lon"  required value="<?php echo $centre_lon; ?>">
                </div> 
            </div>
        <div class="clear"></div><br>
        <center><button type="submit" class="btn btn-warning">Submit Form</button>  <button type="reset" class="btn btn-warning">Reset Form</button></center>
        </form>
        <div class="clear"></div><br>
      <!--      <button onclick="close_tab();">Close</button> </center>  -->
    
    </main>
    </div>
    <div class="clear"></div><br>
    <h1 style='text-align:center;color:#896014'>List of Centres</h1>
    <div style="overflow-x:auto;">
    <table class="center" border='1'>
        <tr>
        <th>ID</th>
        <th>Centre Code</th>
        <th>Centre Name</th>
        <th>District Code</th>
        <th>Centre PIN</th>
        <th>Block Code</th>
        <th>Centre Status</th>
        <th>Centre Date</th>
        <th>Centre Address</th>
        <th>Centre Latitude</th>
        <th>Centre Longitude</th>
        <th>Entry User</th>
        <th>Update</th>         
        </tr>
        <?php         
            $sqlQry="SELECT * FROM centre_master";

            $result = $conn->query($sqlQry);     // excution of sql command
            $i=1;
            while($row = $result->fetch_assoc()) {
            ?>
                <tr>
                <td><?php echo $row["CENTRE_ID"];?></td> 
                <td><?php echo $row["CENTRE_CODE"];?></td>  
                <td><?php echo $row["CENTRE_NAME"];?></td>     
                <td><?php echo $row["DISTRICT_CODE"];?></td> 
                <td><?php echo $row["CENTRE_PIN"];?></td> 
                <td><?php echo $row["BLOCK_CODE"];?></td> 
                <td><?php echo $row["CENTRE_STATUS"];?></td>
                <td><?php echo $row["CENTRE_DATE"];?></td>
                <td><?php echo $row["CENTRE_ADDRESS"];?></td>
                <td><?php echo $row["CENTRE_LAT"];?></td>
                <td><?php echo $row["CENTRE_LON"];?></td>
                <td><?php echo $row["USER_ID"];?></td>
                <td><a href='centre_form.php?CENTRE_ID=<?php echo $row["CENTRE_ID"]?>'>Update</a></td>   
            </tr>
        <?php $i=$i+1; } ?>
    </table>
  <!--  <p style = 'text-align: right;'> 
  <?php echo "<a href='print.php' target='_blank'>Print</a>";?> 
    </p> -->
    </div>
</div>
</div>
</body>
<?php
include('footer.php');
?>
</html>