<?php
session_start();
unset($_SESSION["admin"]);
unset($_SESSION["userType"]);
echo "loggedout";
header("location:../login/login_admin.php");
?>