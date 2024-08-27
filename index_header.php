<?php session_start();
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
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->

<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <div>    <div>
    <p class="fl_left">Welcome to empower rural !</p>
    </div></div>
    <!-- ################################################################################################ -->
    <div style="text-align: right;">
    <ul class="nospace">
    <li id="currentDate"></li>
      <li><a href="index" title="Home"><i class="fa fa-lg fa-home"></i></a></li>
      <li><a href="login" title="Login"><i class="fa fa-lg fa-sign-in"></i></a></li>  
    </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>

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
        <a href="index"><img src="logo.png" style="width: 50px; height: 50px; margin-right: 10px;">
        <h1 id="logo" style="text-align: center;">Empower Rural</a></h1><br>
      </div>
      <p style="text-align: center; font-size: 1.2rem;">A Village Level Entrepreneurship Organization</p>
      <!-- ################################################################################################ -->
    </section>
    <nav id="mainav"> 
      <ul class="clear">
      <li><a href="aboutus">ABOUT US</a></li>
        <li><a href="centre_list">OUR CENTRES</a></li>
        <li><a href="gallery">GALLERY</a></li>
        <li><a href="contact_us">CONTACT US</a></li>
      </ul>
    </nav>
    </header>
</div>
</body>