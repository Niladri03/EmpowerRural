<?php
include('conn.inc');
include('header.php');
$ID = '';
if (isset($_POST['ID'])) {
    $ID = $_POST['ID'];
} elseif (isset($_GET['ID'])) {
    $ID = trim($_GET['ID']);
}
$_SESSION['ID']=$ID;
$sqlQry = "SELECT * FROM department_master WHERE ID ='" . $ID. "'";
$result = $conn->query($sqlQry);

if ($result === false) {
    die("Error executing the SQL query: " . $conn->error);
}

if ($result->num_rows == 0) {
    $_SESSION['record_found'] = 0;
    $dept_code = "";
    $dept_name = "";
    $dept_status = "";
} else {
    $_SESSION['record_found'] = 1;
    $row = $result->fetch_assoc();
    $dept_code = $row['DEPT_CODE']; 
    $dept_name = $row['DEPT_NAME'];
    $dept_status = $row['DEPT_STATUS'];
}
?>


<link rel="stylesheet" href="layout/styles/layout.css"> 
<body>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="comments">  
    <h1 style='text-align:center;color:#896014'>DEPARTMENT MASTER</h1>
    <br> 
        <form name="ItemEntryForm" action="dept_itementry" method="POST"> 
                <div class="one_third first">
                    <label for="dept_name">Department Code<span>*</span> </label>
                    <input type="text" id="dept_code" name="dept_code" placeholder="Enter dept code" required value="<?php echo $dept_code; ?>">
                </div> 
                <div class="one_third">
                    <label for="dept_name">Department Name<span>*</span> </label>
                    <input type="text" id="dept_name" name="dept_name" placeholder="Enter dept name" required value="<?php echo $dept_name; ?>">
                </div>
                <div class="one_third">
                    <label for="status">Department Status<span>*</span> </label>
                    <td align="center"><select id="dept_status" name="dept_status">
                        <option value = "Active">Active</option>
                        <option value="Inactive">Inactive</option>
                    </select></td>
                </div>
        </div>
        <div class="clear"></div><br>
        <center><button type="submit" class="btn btn-warning">Submit Form</button>  <button type="reset" class="btn btn-warning">Reset Form</button></center>
        </form>
    <br><br>
      <!--      <button onclick="close_tab();">Close</button> </center>  -->
    
    </div><div class="clear"></div><br>
    <h1 style='text-align:center;color:#896014'>List of Departments</h1>
    <div style="overflow-x:auto;">
    <table class="center" border='1'>
        <tr>
        <th>ID</th>
        <th>Department Code</th>
        <th>Department Name</th>
        <th>Department Status</th>
        <th>Entry User</th>
        <th>Update</th>        
        </tr>
        </main>
        <?php         
            $sqlQry="SELECT * FROM department_master";

            $result = $conn->query($sqlQry);  
            $i=1;
            while($row = $result->fetch_assoc()) {
            ?>
                <tr>
                <td><?php echo $row["ID"];?></td>
                <td><?php echo $row["DEPT_CODE"];?></td>
                <td><?php echo $row["DEPT_NAME"];?></td>
                <td><?php echo $row["DEPT_STATUS"];?></td>     
                <td><?php echo $row["USER_ID"];?></td>        
                <td><a href='dept_form.php?ID=<?php echo $row["ID"]?>'>Update</a></td>   
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