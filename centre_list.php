<?php
include('conn.inc');
include('index_header.php');
?>
<div class="content"> 
<h1 style='text-align:center;color:#896014'>List of Our Centres</h1>
<div class="clear"></div><br>
      <div class="scrollable">
        <table>
          <thead>
              <th>Sl No</th>
              <th>Centre Code</th>
              <th>Centre Name</th>
              <th>District Name</th>
              <th>Centre Pin</th>
              <th>Block Name</th>
              <th>Centre Address</th>
            </tr>
          </thead>
          <?php         
           $sqlQry="SELECT C.CENTRE_CODE,C.CENTRE_NAME,D.DISTRICT_NAME,C.CENTRE_PIN,B.BLOCK_NAME,C.CENTRE_ADDRESS FROM centre_master C, district_master D, block_master B WHERE D.DISTRICT_CODE=C.DISTRICT_CODE AND B.BLOCK_CODE=C.BLOCK_CODE";

           $result = $conn->query($sqlQry);     // excution of sql command
           $i=1;
           while($row = $result->fetch_assoc()) {
          ?>
              <tr>
              <td><?php echo $i;?></td>
              <td><?php echo $row["CENTRE_CODE"];?></td>
              <td><?php echo $row["CENTRE_NAME"];?></td>
              <td><?php echo $row["DISTRICT_NAME"];?></td>
              <td><?php echo $row["CENTRE_PIN"];?></td>
              <td><?php echo $row["BLOCK_NAME"];?></td>
              <td><?php echo $row["CENTRE_ADDRESS"];?></td>
              </tr>
     <?php $i=$i+1; } ?>
  </table>
  <div class="clear"></div><br>
</div>
<?php include 'index_footer.php'; ?>