<?php
    include('conn.inc');
    include('header.php');
?>
<div class="content"> 
<h1 style='text-align:center;color:#896014'>REQUEST REPORT</h1>
      
      <div class="scrollable">
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>User Name</th>
              <th>Phone</th>
              <th>Email</th>
              <th>Query</th>
            </tr>
          </thead>
<?php         
           $sqlQry="SELECT * FROM contact_us";

           $result = $conn->query($sqlQry);  
           while($row = $result->fetch_assoc()) {
          ?>
              <tr>
              <td><?php echo $row["ID"];?></td>
              <td><?php echo $row["USER_NAME"];?></td>
              <td><?php echo $row["PHONE"];?></td>
              <td><?php echo $row["EMAIL_ID"];?></td>
              <td><?php echo $row["QUERY_DETAIL"];?></td>
              </tr>
     <?php } ?>
     
  </table>
</div>
<?php
include('footer.php');
?>