<?php 
$siginFlag = false;

if(isset($_SESSION['user']))
{
	$siginFlag = true;
}
else
{
	$siginFlag = false;
}


?>