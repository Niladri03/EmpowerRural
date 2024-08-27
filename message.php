<?php 
include('header.php');

$message_text="";
$message_type="";
$redirect_page="";

$message_text = isset($_SESSION['message_text']) ? $_SESSION['message_text'] : '';
$message_type = isset($_SESSION['message_type']) ? $_SESSION['message_type'] : '';
$redirect_page =isset($_SESSION['redirect_page']) ? $_SESSION['redirect_page'] : '';
?>
<script>
function close_tab() {
    window.open("dashboard", "_self");
}
</script>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>ER</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="crud_icon.png"/>
    <link rel="stylesheet" href="layout/styles/layout.css">  
</head>

<body align="master">

<h1 align="center" style="font-size:2.1rem;">Empower Rural</h1>
<div class="container"> 
<center>
            <h2> <?php echo $message_text; ?> </h2>
</center>    
                <center>
                     <button class="btn btn-warning" onclick="close_tab();">Close</button>
                </center>
</div>

</body>
<?php
include('footer.php');
?>
</html>