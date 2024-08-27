<?php
include('header.php');
include('conn.inc');
$ID = '';
if (isset($_POST['ID'])) {
    $ID = $_POST['ID'];
} elseif (isset($_GET['ID'])) {
    $ID = trim($_GET['ID']);
}

$dep_sql = "SELECT DEPT_CODE,DEPT_NAME FROM department_master";
$dep_res = $conn->query($dep_sql);
$dep_op = '';
while ($row = $dep_res->fetch_assoc()) {
  $dep_op .= '<option value="' . $row['DEPT_CODE'] . '">' . $row['DEPT_NAME'] . '</option>';
}
$_SESSION['ID']=$ID;
$sqlQry = "SELECT * FROM service_master WHERE ID ='".$ID."'";
$result = $conn->query($sqlQry);
if ($result->num_rows == 0){
    $_SESSION['record_found']=0;
    $service_code      ="";
    $SERVICE_NAME      ="";
    $dept_id     ="";
    $service_desc      ="";
    $service_status      ="";
    $service_charge      ="";
    $VLE_commission      ="";
    $USER_ID      ="";
    $service_remarks      ="";
    $URL ="";
    
}else{
    $_SESSION['record_found']=1;
    $row = $result->fetch_assoc();
    $service_code      =$row['SERVICE_CODE'];
    $SERVICE_NAME  =$row['SERVICE_NAME'];
    $dept_code  =$row['DEPT_CODE'];
    $service_desc  =$row['SERVICE_DESC'];
    $service_status  =$row['SERVICE_STATUS'];
    $service_charge  =$row['SERVICE_CHARGE'];
    $VLE_commission  =$row['VLE_COMMISSION'];
    $USER_ID  =$row['USER_ID'];
    $service_remarks  =$row['SERVICE_REMARKS'];
    $URL = $row['URL'];
}
?>

<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="comments">  
    <h1 style='text-align:center;color:#896014'>SERVICE MASTER</h1>
    <br>
         <form name="ItemEntryForm" action="service_itementry" method="POST">
                <div class="one_half first">
                    <label>Service Code<ar-span>*</ar-span> </label>
                    <input type="text" id="service_code" name="service_code" placeholder="Enter service code" required value="<?php echo $service_code; ?>">
                </div>  
                <div class="one_half">
                    <label>Service Name<ar-span>*</ar-span> </label>
                    <input type="text" id="SERVICE_NAME" name="SERVICE_NAME" placeholder="Enter service name" required value="<?php echo $SERVICE_NAME; ?>">
                </div>
                <div class="one_half first">            
                    <label for="dept_code" class="form-label">Select Department<ar-span>*</ar-span></label>
                    <select id="dept_code" class="form-select" name="dept_code">
                    <?php echo $dep_op; ?>
                </select>
                </div>
                <div class="one_half">
                    <label>Service Status<ar-span>*</ar-span> </label>
                    <td align="center"><select id="service_status" name="service_status">
                        <option value = "Active">Active</option>
                        <option value="Inactive">Inactive</option>
                    </select></td>
                </div>
                <div class="one">
                    <label>Service Description<ar-span>*</ar-span> </label>
                    <input type="text" placeholder="Enter service desccription" id="service_desc" name="service_desc" required value="<?php echo $service_desc; ?>"></textarea>
                </div>
                <div class="one_third first">
                    <label>Service Charge<ar-span>*</ar-span> </label>
                    <input type="number" id="service_charge" name="service_charge" placeholder="Enter service charge" maxlength="90" required value="<?php echo $service_charge; ?>">
                </div>
                <div class="one_third">
                    <label>VLE commission<ar-span>*</ar-span> </label>
                    <input type="number" id="VLE_commission" name="VLE_commission" placeholder="Enter VLE commission" maxlength="90" required value="<?php echo $VLE_commission; ?>">
                </div>
                <div class="one_third">
                    <label>Service Remarks<ar-span>*</ar-span> </label>
                    <input type="text" placeholder="Enter service remarks" id="service_remarks" name="service_remarks" required value="<?php echo $service_remarks; ?>"></textarea>
                </div>
               <div class="one">
                    <label>Service URl<ar-span>*</ar-span> </label>
                    <input type="text" placeholder="Enter service URL" id="URL" name="URL" required value="<?php echo $URL; ?>"></textarea>
                </div>
        </div>
        <div class="clear"></div><br>
        <center><button type="submit" class="btn btn-warning">Submit Form</button>  <button type="reset" class="btn btn-warning">Reset Form</button></center>
        </form>  
    </div> 
    </main>
    </div><div class="clear"></div><br>
    <h1 style='text-align:center;color:#896014'>List of Services</h1>
<div style="overflow-x:auto;">
  <table class="center" border='1'>
    <tr>
      <th>ID</th>
      <th>Service Code</th>
      <th>Service Name</th>
      <th>Department Code</th>
      <th>Service Description</th>
      <th>Service Status</th>
      <th>Service Charge</th>
      <th>VLE Commission</th>
      <th>Service Remarks</th>
      <th>Entry User</th>
      <th>Service URL</th>
      <th>Update</th>            
    </tr>
    <?php         
           $sqlQry="SELECT * FROM service_master";

           $result = $conn->query($sqlQry);     // excution of sql command
           $i=1;
           while($row = $result->fetch_assoc()) {
          ?>
              <tr>
              <td><?php echo $row["ID"];?></td>
              <td><?php echo $row["SERVICE_CODE"];?></td>
              <td><?php echo $row["SERVICE_NAME"];?></td>
              <td><?php echo $row["DEPT_CODE"];?></td>
              <td><?php echo $row["SERVICE_DESC"];?></td>
              <td><?php echo $row["SERVICE_STATUS"];?></td>
              <td><?php echo $row["SERVICE_CHARGE"];?></td>
              <td><?php echo $row["VLE_COMMISSION"];?></td>
              <td><?php echo $row["SERVICE_REMARKS"];?></td>  
              <td><?php echo $row["USER_ID"];?></td> 
              <td><?php echo $row["URL"];?></td>          
              <td><a href='service_form.php?ID=<?php echo $row["ID"]?>'>Update</a></td>   
              </tr>
     <?php $i=$i+1; } ?>
  </table>
  <!--  <p style = 'text-align: right;'> 
  <?php echo "<a href='print.php' target='_blank'>Print</a>";?> 
    </p> -->
</div>
</body>
<?php
include('footer.php');
 ?>
</html>