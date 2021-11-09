<?php
session_start();
if(!isset($_SESSION["username"])){
header("Location: login.php");
exit(); }
?>
<html>
<p>the page to redirected to after login</p>
<p> You want to sign out? <a href='logout.php'>Click Here</a></p>
</html>
