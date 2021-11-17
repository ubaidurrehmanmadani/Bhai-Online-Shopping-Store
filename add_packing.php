<?php
session_start();
$p="";
if(basename(__DIR__)!="bhai"){
	     $p="../";
	}  
	
if(isset($_SESSION['user']) ){include($p."Templates/admin_loggedin_header.php");}
 else {header('Location:login/login_admin.php');}
  

if(isset($_POST["buttonAddPacking"])){
	$product = new Product();
	$lastId=$product->getLastPackingId();	
	$itemId=$lastId[0]["packing_id"];	
	$itemId++;
	$product->addLog($_SESSION['user'],"Packing Added",$itemId);
	$product->addPacking(strtoupper($_POST['inputAddPacking']));
}

?>

<html>

    
<!-- Mirrored from velikorodnov.com/html/homeshop/create_an_account.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:04 GMT -->
<head>
        <script src="js/validation.js"></script>
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Title -->
        <title>HomeShop - HTML Template</title>
        
		<!-- Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,900,700italic,500italic' rel='stylesheet' type='text/css'>
		
        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/perfect-scrollbar.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="css/fontello.css">
   		<link rel="stylesheet" href="css/animation.css">
		<link rel="stylesheet" href="css/chosen.css">
        
		<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
			<link rel="stylesheet" href="css/ie.css">
        <![endif]-->
		<!--[if IE 7]>
			<link rel="stylesheet" href="css/fontello-ie7.css">
		<![endif]-->
        <script type="javascript">
		</script>
		<style>
		.error {color: #FF0000;
		font-size: 12px;
		}
		</style>
    </head>
    
    
    <body>
	
   <form method="post" enctype="multipart/form-data">	
		
		<!-- Container -->
		<div class="container">
			
			
			
			
			<!-- Content -->
			<div class="row content">
				
                <div class="col-lg-12 col-md-12 col-sm-12">
                	<div class="breadcrumbs">
                    	<p><a href="admin_panel.php">Home</a> <i class="icons icon-right-dir"></i> Add Packing</p>
                    </div>
                </div>
                
				<!-- Main Content -->
				<section class="main-content col-lg-9 col-md-9 col-sm-9">
                    
                    
                    
                    
                    
                    
                    <div class="row">
                    	
                        <div class="col-lg-12 col-md-12 col-sm-12 register-account">
                        	
                           <!-- Compare Products -->
					<div class="row sidebar-box blue">
						
						<div class="col-lg-12 col-md-12 col-sm-12">
							
							<div class="sidebar-box-heading">
                            	<i class="icons icon-docs"></i>
								<h4>Add Packing</h4>
							</div>
							<div class="sidebar-box-content">
                                <table class="compare-table">  
                                   
									<tr>
										<td>Enter Packing Name</td>
										<td class="product-thumbnail"><input type="text" name="inputAddPacking" placeholder="Enter Packing Name" onkeypress="return isCharacter(event)"/></td>
									</tr>
                                    </br>
									
									
                                </table>
							
                                <div class="padding-box align-right">
                                	<input class="big" type="submit" value="Add Packing"  name="buttonAddPacking"/>
                                </div>
							</div>
						</div>
						
					</div>
					<!-- /Compare Products -->
                    	</div>
                          
                    </div>
                        
                    </form>
				</section>
				<!-- /Main Content -->
                
                
                <!-- Sidebar -->
				<aside class="sidebar col-lg-3 col-md-3 col-sm-3 right-sidebar">
					
					<!-- Categories -->
					<?php include($p."Templates/admin_sidebar.php"); ?>
					<!-- /Categories -->
                    
                    
                    
                    
				</aside>
                <!-- /Sidebar -->
                
			</div>
			<!-- /Content -->
			
			
			


			
			<?php include($p."Templates/footer.php")?>
		
    </body>
    

<!-- Mirrored from velikorodnov.com/html/homeshop/create_an_account.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 22 Jan 2016 16:29:04 GMT -->
</html>