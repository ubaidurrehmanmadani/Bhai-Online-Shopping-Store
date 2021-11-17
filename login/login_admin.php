
 <?php
 if ( session_status() == PHP_SESSION_NONE ) {
    session_start();
} 
    require_once("../classes/user.php");
    require_once("../db/dbcon.php");
    if(isset($_POST["login"])){
		$user=new User();
		$user->logIn($_POST["number"],$_POST["password"],3);	
		if($_SESSION["userType"]==3){
		header('Location: ../admin_panel.php');
		}
		else if($_SESSION["userType"]!=3){
		echo "<script type='text/javascript'>alert('You Dont have the access to Login Here');</script>";
		header('Location: ../login/login.php');
		}
	 }

	
  ?>





<html>

<head>
<link rel="stylesheet" href="login.css">
 <script src="login.js"></script> 
  <script src="../js/validation.js"></script> 

 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 

 
 
</head>

<body>
<div class="container">
  <label id="l2"></label>
  <div class="row" id="pwd-container">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">
        <form method="post" action="#" role="login">
			
          <img src="../img/logo6.png" class="img-responsive" alt="" />
          <h3 id="l1" > </h3>
          <input type="text" name="number" placeholder="Phone Number " onkeypress="isNumber(event);" required class="form-control input-lg" maxlength="11" />
          
          <input type="password" class="form-control input-lg" id="password" name="password" placeholder="Password" required="" maxlength="15" />
          
          
          <div class="pwstrength_viewport_progress"></div>
          
          
          <button type="submit" name="login" class="btn btn-lg btn-primary btn-block" >LogIn</button>
          <div>
            <a href="../register_user.php">Create account</a> or <a href="../update_user.php">reset password</a>
          </div>
          
        </form>
        
        <div class="form-links">
          <a href="../main1.php">www.Bhai.com</a>
        </div>
      </section>  
      </div>
      
      <div class="col-md-4"></div>
      

  </div>
  
  <p>
    <a href="http://validator.w3.org/check?uri=http%3A%2F%2Fbootsnipp.com%2Fiframe%2FW00op" target="_blank"><small></small><sup>5</sup></a>
    <br>
    <br>
    
  </p>     
  
  
</div>
</body>
</html>


 
