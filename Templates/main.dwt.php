<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- Title -->
        <title>HomeShop - HTML Template</title>
        
		<!-- Fonts -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,900,700italic,500italic' rel='stylesheet' type='text/css'>
		
        <!-- Stylesheets -->
        <link rel="stylesheet" href="../css/bootstrap.min.css">
		<link rel="stylesheet" href="../css/perfect-scrollbar.css">
        <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/flexslider.css" type="text/css" media="screen" />
		<link rel="stylesheet" href="../css/fontello.css">
		<link rel="stylesheet" type="text/css" href="../css/settings.css" media="screen" />
   		<link rel="stylesheet" href="../css/animation.css">
		<link rel="stylesheet" href="../css/owl.carousel.css">
		<link rel="stylesheet" href="../css/owl.theme.css">
		<link rel="stylesheet" href="../css/chosen.css">

</head>
<?php   
$p="";
if(basename(__DIR__)!="bhai"){
	     $p="../";
	}  

  include($p."Templates/header.php");
	
  
?>

<body>

<div class="col-md-3"> <?php include($p."Templates/sidebar.php"); ?></div>
<!-- TemplateBeginEditable name="EditRegion1" -->

<!-- TemplateEndEditable -->
</body>


<?php include($p."Templates/footer.php")?>

</html>



