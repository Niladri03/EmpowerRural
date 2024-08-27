<?php
include('conn.inc');
include('index_header.php');
$CENTRE_CODE = isset($_SESSION['CENTRE_CODE']);
$query="SELECT COUNT(CENTRE_CODE) FROM centre_master;";
$res = $conn->query($query);
$row = $res->fetch_assoc();
$CENTRE_CODE=$row['COUNT(CENTRE_CODE)'];
?>
<style>
        .live-chart-container {
            display: flex;
            justify-content: space-between;
        }
        .live-chart {
            width: 300px;
            height: 300px;
        }
       .wrapper.row3 figure img:hover {
        transform: scale(1.05);
        transition: transform 0.3s;
        box-shadow: 0 2.4rem 4.8rem rgba(0, 0, 0, 0.25);
      }
    
    </style>
<div class="bgded" style="background-image: url('img/background2.jpg'); ">
      <div id="pageintro" class="hoc clear">
        <!-- ################################################################################################ -->
        <article style="box-shadow: 0 2.4rem 4.8rem rgba(0, 0, 0, 0.5)">
          <h3 class="heading" style='text-align:center;color:#594E00 ; font-weight:bold'>EMPOWER RURAL</h3>
          <p>
            Welcome to the realm of EMPOWER RURAL, a
            transformative force that brings economic vitality to the heart of
            rural communities.<br>
            <?php echo "<strong>At present, we have $CENTRE_CODE centres across West Bengal.</strong>";?>
          </p>
        </article>
        <!-- ################################################################################################ -->
      </div>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <div class="wrapper row2">
      <section class="hoc container clear">
        <!-- ################################################################################################ -->
        <div class="sectiontitle">
          <h1 style='text-align:center;color:#896014; font-size:2.3rem;'>Our Objectives</h1>
          <p style='text-align:center;color:#896014;font-size:1.1rem;'>How we will be empowering growth and development</p>
        </div>
        <ul class="nospace group overview services">
          <li class="one_third">
            <article>
              <a href="#"><i class="fa fa-home"></i></a>
              <h6 class="heading">
                <a href="#">Enhanced Livelihoods</a>
              </h6>
              <p>
                ER creates sustainable income opportunities in rural areas.
              </p>
              <footer><a href="#">View Details &raquo;</a></footer>
            </article>
          </li>
          <li class="one_third">
            <article>
              <a href="#"><i class="fa fa-user-plus"></i></a>
              <h6 class="heading">
                <a href="#">Access to Essential Services</a>
              </h6>
              <p>ER brings crucial services closer to communities.</p>
              <footer><a href="#">View Details &raquo;</a></footer>
            </article>
          </li>
          <li class="one_third">
            <article>
              <a href="#"><i class="fa fa-feed"></i></a>
              <h6 class="heading"><a href="#">Digital Empowerment</a></h6>
              <p>VLEs bridge the digital divide through technology outreach.</p>
              <footer><a href="#">View Details &raquo;</a></footer>
            </article>
          </li>
          <li class="one_third">
            <article>
              <a href="#"><i class="fa fa-graduation-cap"></i></a>
              <h6 class="heading"><a href="#">Skill Development</a></h6>
              <p>
                VLEs enable skill-building and capacity enhancement among
                locals.
              </p>
              <footer><a href="#">View Details &raquo;</a></footer>
            </article>
          </li>
          <li class="one_third">
            <article>
              <a href="#"><i class="fa fa-ambulance"></i></a>
              <h6 class="heading"><a href="#">Last-Mile Connectivity</a></h6>
              <p>VLEs ensure essential resources reach remote regions.</p>
              <footer><a href="#">View Details &raquo;</a></footer>
            </article>
          </li>
          <li class="one_third">
            <article>
              <a href="#"><i class="fa fa-wpexplorer"></i></a>
              <h6 class="heading"><a href="#">Community Outreach</a></h6>
              <p>
                VLEs foster social and economic development through engagement.
              </p>
              <footer><a href="#">View Details &raquo;</a></footer>
            </article>
          </li>
        </ul>
        <!-- ################################################################################################ -->
      </section>
    </div>
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->
    <!-- ################################################################################################ -->

    </body>
</html>

<?php
include('index_footer.php');
?>