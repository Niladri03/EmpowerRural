<?php
session_start();  //on page load

	if (!isset($_SESSION["user_id"]) || $_SESSION["user_id"] == "") // needs login
	{
		$_SESSION['redirect_page']="#";
		echo $_SESSION['user_id'];
		header('Location: login');
		exit;
	}
 
?>

<!DOCTYPE html>
<!--
Template Name: Nalpure
Author: <a href="http://www.os-templates.com/">OS Templates</a>
Author URI: http://www.os-templates.com/
Licence: Free to use under our free template licence terms
Licence URI: http://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>Empower Rural</title>
<link rel = "icon" href = "logo.jpeg" type = "image/x-icon">
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/remixicon/fonts/remixicon.css" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->

<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <div>
    <p class="fl_left">Welcome <?php  echo($_SESSION['name']); ?> !</p>
    </div>
    <!-- ################################################################################################ -->
    <div style="text-align: right;">
    <ul class="nospace">
    <li id="currentDate"></li>
      <li><a href="dashboard" title="Dashboard"><i class="fa fa-lg fa-home"></i></a></li>
      <li><a href="profile_view" title="Profile"><i class="fa fa-lg fa-user"></i></a></li>
      <li><a href="change_pw" title="Change Password"><i class="fa fa-lg fa-lock"></i></a></li>
      <li><a href="logout" title="Logout"><i class="fa fa-lg fa-sign-out"></i></a></li>  
    </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->

<script>
    // Get current date
    var currentDate = new Date();
    // Format the date as desired (e.g., "Month Day, Year")
    var formattedDate = currentDate.toLocaleDateString("en-US", {
        year: "numeric",
        month: "long",
        day: "numeric"
    });
    // Display the formatted date in the element with id "currentDate"
    document.getElementById("currentDate").textContent =  formattedDate;
</script>

<div class="wrapper row1">
  <header id="header" class="hoc clear">
    <section> 
      <!-- ################################################################################################ -->
      <div style="display: flex; align-items: center; justify-content: center; margin-left: 320px;">
        <a href="dashboard"><img src="logo.png" style="width: 50px; height: 50px; margin-right: 10px;">
        <h1 id="logo" style="text-align: center;">Empower Rural</a></h1><br>
      </div>
      <!-- ################################################################################################ -->
    </section>
    <?php
    $role=$_SESSION['role'];
    ?>
    <?php if($role==="1"){ ?>
    <nav id="mainav"> 
      <ul class="clear">
        <li><a class="drop" href="#">Master</a>
          <ul>
            <li><a href="centre_form">Centre</a></li>
            <li><a href="dept_form">Department</a></li>
            <li><a href="service_form">Service</a></li>
            <li><a href="user_form">User</a></li>
          </ul>
        </li>
      <!--  <li><a href="change_pw.php">Change Password</a></li> -->
        <li><a class="drop" href="#">MIS Report</a>
          <ul>
            <li><a href="centre_report">Centre wise report</a></li>
            <li><a href="service_report">Service wise report</a></li>
            <li><a href="op_perform">Operator Performance</a></li>
            <li><a href="contact_report">Request Report</a></li>
          </ul>
        </li>
        <li><a href="login_view">Log View</a></li>
        <li><a href="reset_pw">Reset Password</a></li>
        <li><a class="drop" href="#">Transfer</a>
          <ul>
            <li><a href="transfer">Operator</a></li>
            <li><a href="transfer">Center</a></li>
          </ul>
        </li>
        <!-- <li><a href="contact.php">Contact Us</a></li> -->
      </ul>
    </nav>
    <?php } elseif($role==="2"){ ?>
    <nav id="mainav"> 
      <ul class="clear">
        <li><a class="drop" href="#">Master</a>
          <ul>
            <li><a href="centre_form">Centre</a></li>
            <li><a href="dept_form">Department</a></li>
            <li><a href="service_form">Service</a></li>
            <li><a href="user_form">User</a></li>
          </ul>
        </li>
        <li><a class="drop" href="#">Transfer</a>
          <ul>
            <li><a href="transfer">Operator</a></li>
            <li><a href="transfer">Center</a></li>
          </ul>
        </li>
        <li><a href="reset_pw_manager">Reset Password</a></li>
     <!--   <li><a href="change_pw.php">Change Password</a></li>  -->
        <li><a class="drop" href="#">MIS Report</a>
          <ul>
            <li><a href="centre_report">Centre wise report</a></li>
            <li><a href="op_perform">Operator Performance</a></li>
            <li><a href="contact_report">Request Report</a></li>
          </ul>
        </li>
        
        <!-- <li><a href="contact.php">Contact Us</a></li> -->
      </ul>
    </nav>
    <?php } elseif($role==="4"){ ?>
    <nav id="mainav"> 
      <ul class="clear">
    <!--    <li><a href="change_pw.php">Change Password</a></li>  -->
        <li><a href="provision">List of Provision</a></li>
        <li><a href="servicedelivery">Service Delivery</a></li>
        <li><a class="drop" href="#">Report</a>
          <ul>
            <li><a href="operator_performance">Performance</a></li>
          </ul>
        </li>
      </ul>
    </nav>
    <?php }?>
      <!-- ################################################################################################ -->
  </header>
</div>
</body>
</html>