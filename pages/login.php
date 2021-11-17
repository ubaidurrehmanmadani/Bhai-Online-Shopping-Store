<?php 
require '../classes/classDatabaseManager.php';
$db=new databaseManager;

/* if($data=$db->executeQuery($query, array(),'sread' )){
	echo "ID: ".$data[0][0]."<br>";
	echo "Name: ".$data[0][1]."<br>";
}

 */
 $pf=0;$uf=0;
 if(isset($_POST['username']) && isset($_POST['password'])){
		ob_start();									
		$username=$_POST['username']; 
		$password=$_POST['password'];
		
		if(empty($username))
		{
			$uf=1;
		}
		if(empty($password))
		{
			$pf=1;
		}else{
			$pf=0;
			$uf=0;
			// To protect MySQL injection (more detail about MySQL injection)
			$username = stripslashes($username);
			$password = stripslashes($password);
			$username = mysql_real_escape_string($username);
			$password = mysql_real_escape_string($password);

			$query="select count(*) as numb from admin where a_username=? and a_password=?";
			if($data=$db->executeQuery($query, array($username, $password),'cread')){
				if($data[0]['numb']==1){
					header("location:index.php");
				}else{
					header("location:login.php");
				}
			}
			ob_end_flush();
		}
	}
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="../bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        <form role="form" action="" method="post">
                            <fieldset>
                                <div class="form-group">									
                                    <input class="form-control" placeholder="User Name" name="username" type="text" value="" autofocus>
									
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" type="password" value="">								
                                </div>
								<span style="color:red">
									<?php if($uf || $pf){
										echo "Invalid Username or Password!";										
										$uf=0;$pf=0;
										
									}								
									?>
								</span>
                                <div class="checkbox">
                                    <label>
                                        <input name="remember" type="checkbox" value="Remember Me">Remember Me
                                    </label>
                                </div>
                                <!-- Change this to a button or input when using this as a form -->
									
									
                                <button type="submit" class="btn btn-lg btn-success btn-block">Login</button>
								
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

</body>

</html>
