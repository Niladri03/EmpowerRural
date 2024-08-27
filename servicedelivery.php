<?php include('header.php');
include('conn.inc');?>
<h1 style='text-align:center;color:#896014'>SERVICE DELIVERY</h1>  
    <div style="overflow-x:auto;">    
    <div class="clear"></div>   <br>
    <table class="center" border='1'>
        <tr>
        <th>Serial No.</th>
        <th>Service Name</th>
        <th>Department Name</th>
        <th>Service Charge</th>
        <th>Action</th>
        </tr>

        <?php
            $sqlQry="SELECT s.SERVICE_CODE, s.SERVICE_NAME, s.DEPT_CODE, s.SERVICE_CHARGE, d.DEPT_NAME FROM service_master s INNER JOIN department_master d ON s.DEPT_CODE = d.DEPT_CODE;";
            $result = $conn->query($sqlQry);
            $i=1;
            if (!$result) {
                echo "Query Error: " . $conn->error;
                exit; 
            }
                while ($row = $result->fetch_assoc()) {
            ?>
                <tr>
                <td><?php echo $i;?></td>
                <td><?php echo $row["SERVICE_NAME"];?></td>
                <td><?php echo $row["DEPT_NAME"];?></td>
                <td><?php echo $row["SERVICE_CHARGE"];?></td>
                <td><a href='citizen_form?SERVICE_CODE=<?php echo $row["SERVICE_CODE"]?>'>GO</a></td>
                </tr>
        <?php $i=$i+1; } ?>
        </table> 
    </div>
<div class="clear"></div><br>
<?php include('footer.php'); ?>