<?php 
include('index_header.php');

$message_text="";
$message_type="";
$redirect_page="";

$message_text = isset($_SESSION['message_text']) ? $_SESSION['message_text'] : '';
$message_type = isset($_SESSION['message_type']) ? $_SESSION['message_type'] : '';
$redirect_page =isset($_SESSION['redirect_page']) ? $_SESSION['redirect_page'] : '';
?>
<script>
function close_tab() {
    window.open("index", "_self");
}
</script>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>VLE</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="crud_icon.png"/>
    <link rel="stylesheet" href="layout/styles/layout.css">  
</head>
<body align="master">
<br>
<h1 align="center">Thank you for your interest,<br><br>We will contact you shortly!</h1>
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
include('index_footer.php');
?>
</html>