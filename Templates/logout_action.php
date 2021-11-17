<?php
session_start();
unset($_SESSION["user"]);
unset($_SESSION["username"]);
unset($_SESSION["ca"]);
unset($_SESSION["total"]);
unset($_SESSION["image"]);
//echo "loggedout";
 echo "<script type='text/javascript'>location.replace('../main1.php')</script>";
?>