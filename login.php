<?php
session_start(); 
include('conn.inc');
$error_msg = "";
$mode = isset($_REQUEST["mode"]) ? $_REQUEST["mode"] : "";

if($mode==="login"){
    $name = $_POST['username'];
    $pw = $_POST['password'];
    $sqlQry = "SELECT * FROM login_master WHERE USER_ID ='".$name."' AND USER_PW ='".$pw."'";
    $result = $conn->query($sqlQry);
    if($result->num_rows > 0){
      $row=$result->fetch_assoc();
      $_SESSION['user_id']=$row['USER_ID'];
      $_SESSION['name']=$row['USER_NAME'];
      $_SESSION['role']=$row['USER_ROLE'];
      $_SESSION['status']=$row['USER_STATUS'];
      if($row['USER_STATUS']==="ACTIVE"){
        function getDeviceType() {
          return preg_match("/(android|avantgo|blackberry|bolt|boost|cricket|docomo|fone|hiptop|mini|mobi|palm|phone|pie|tablet|up\.browser|up\.link|webos|wos)/i", $_SERVER['HTTP_USER_AGENT']) ? 'Mobile' : 'Desktop';
          }
          $LOG_DEVICE_NAME = getDeviceType();
          $LOG_IP=$_SERVER['REMOTE_ADDR'];
          $LOG_DEVICE_TYPE=$_SERVER['HTTP_USER_AGENT'];
          $USER_ID            =  $name;
          $LOG_IP             =  $LOG_IP;
          $LOG_DEVICE_NAME    =  $LOG_DEVICE_NAME;
          $LOG_DEVICE_TYPE    =  $LOG_DEVICE_TYPE;
   
          $sqlQry = "INSERT INTO user_log(USER_ID,LOG_IP,LOG_DEVICE_NAME,LOG_DEVICE_TYPE) VALUES(
                  '" .$USER_ID. "',
                  '" .$LOG_IP."',
                  '" .$LOG_DEVICE_NAME."',
                  '" .$LOG_DEVICE_TYPE."')";
          $result = $conn->query($sqlQry);     
        header('Location: vle_rules');
        exit;
      }else{
        $error_msg="Your login has expired";
      }      
    }
    else{
      $error_msg="Incorrect Username/Password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <title>ER Login Page</title>
    <link rel = "icon" href = "logo.jpeg" type = "image/x-icon">
    <link
      href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
      rel="stylesheet"
    />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <style>
        /* Base Styles */
        body {
            font-family: 'Montserrat', sans-serif;
        }

        
        @media (max-width: 768px) {
            .col-md-7,
            .col-md-4 {
                padding: 20px;
            }
            .booking-form {
                padding: 20px;
                position: relative;
                right: 87px;
                
            }
            .booking-cta p {
            font-size: 14px;
            display:none;
              
            }
            .booking-cta h1{
              position: relative;
              top: -235px;
              left: 119px;
            }

            #booking{
              overflow: hidden;
            }
            
        }
    </style>
   
  </head>

  <body>
    <div id="booking" class="section">
      <div class="section-center">
        <div class="container">
          <div class="col-md-7 col-md-push-5">
            <div class="booking-cta">
              <h1>Empower Rural(ER)</h1>
              <p class="h1-text">
                EMPOWER RURAL
Empower Rural is an innovative platform that aims to empower rural communities by providing a centralized hub for accessing entrepreneurial services and opportunities. This portal serves as a one-stop solution for aspiring entrepreneurs in rural areas, offering resources, training programs, and financial support to help them establish and grow their businesses. With Empower Rural, rural communities can foster economic development, create employment opportunities, and enhance the overall socio-economic fabric of their regions.
              </p>
            </div>
          </div>
          <div class="col-md-4 col-md-pull-7">
            <div class="booking-form">
              <form method="POST">
                <input type="hidden" name="mode" value="login">
                <div class="form-group">
                  <span class="form-label">Username</span>
                  <input
                    class="form-control" type="text" name="username" autocomplete="off" placeholder="Enter your username"/>
                </div>
                <div class="form-group">
                  <span class="form-label">Password</span>
                  <input
                    class="form-control" type="password" name="password" placeholder="Enter your Password"/>
                </div>

                <div class="form-btn">
                  <button class="submit-btn">Login</button>
                  <a class="forgot-link" href="#">Forgot password ?</a>
                </div>
              </form>
              <div class="clear"></div><br>
              <?php
                if($error_msg!=""){
                  echo($error_msg);
                }
                ?>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
