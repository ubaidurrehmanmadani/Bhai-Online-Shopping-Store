<?php 
session_start();
	include 'classes/user.php';
	include 'db/dbcon.php';
	$user = new User();
	 if(isset($_POST['btnlogin']))	 {
		$result = $user->logIn($_POST['mobile'],$_POST['password']);
		//print_r($result);die;
		if(!$result){
			echo "<script type='text/javascript'>alert('Username and/or Password Incorrect')</script>";
		}else{
		    echo "<script type='text/javascript'>location.replace('main1.php')</script>";
		}
	}
 ?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Log in</title>
	<link rel="stylesheet" href="css/style for login.css">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-image: url('/rafi/images/login2.jpg'); ">
	<div class="container-fluid bg">
		<div class="row">
			<div class="col-md-4 col-sm-2 col-xs-12"></div>
			<div class="col-md-4 col-sm-8 col-xs-12">
				<!-- form start -->
				<form class="form-container" method="POST">
					<!-- <h1 class="title">Log in</h1> -->
					<img src="/rafi/images/logo.jpeg" style="max-width: 100%">
				  <div class="form-group">
				    <label for="formGroupExampleInput">User ID</label>
				    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="Mobile Number" name="mobile">
				  </div>
				  <div class="form-group">
				    <label for="formGroupExampleInput2">Password</label>
				    <input type="password" class="form-control" id="formGroupExampleInput2" placeholder="password" name="password">
				  </div>
				  <button class="btn btn-success btn-block" name="btnlogin">Log in</button>
				</form>
				<!-- form end -->
			</div>
			<div class="col-md-4 col-sm-2 col-xs-12"></div>
		</div>
	</div>
	


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>	
</body>
</html>