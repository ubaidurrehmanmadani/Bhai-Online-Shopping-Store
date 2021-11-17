<?php 
require '../classes/classDatabaseManager.php';
$db=new databaseManager;
$query="select item.i_name,item.sku,catagory.type,user.u_name,sell_item.s_date,item.price,sell_item.s_quantity,admin.a_name from sell_item,item,user,admin,catagory where sell_item.item_id=item.i_id and sell_item.user_id=user.u_id and sell_item.admin_id=admin.a_id and item.cat_id=catagory.cat_id";
/* if($data=$db->executeQuery($query, array(),'sread' )){
	echo "ID: ".$data[0][0]."<br>";
	echo "Name: ".$data[0][1]."<br>";
}

 */
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

    <!-- DataTables CSS -->
    <link href="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet">

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

    <div id="wrapper">

        <!-- Navigation -->
         <?php require_once "nav.php";?>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Sales</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper table-responsive">
                                <table class="table table-striped table-bordered table-hover"  id="dataTables-example">
                                    <thead>
                                        <tr>
                                            
                                            <th>Item</th>
											<th>Model</th>
											<th>Category</th>
											<th>Company</th>
                                            <th>Sale Date</th>
											<th>Price</th>
											<th>Quantity</th>
											<th>Total</th>
                                            <th>Admin Name</th>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
										<?php
										if($data=$db->executeQuery($query, array(),'sread' )){
											foreach ($data as $row){
												echo  '<tr>';
												
													echo  "<td>".$row['i_name']."</td>";
													echo  "<td>".$row['sku']."</td>";
													echo  "<td>".$row['type']."</td>";
													echo  "<td>".$row['u_name']."</td>";
													echo  "<td>".$row['s_date']."</td>";
													echo  "<td>".$row['price']."</td>";
													echo  "<td>".$row['s_quantity']."</td>";
													echo  "<td>".$row['s_quantity']* $row['price']."</td>";
													echo  "<td>".$row['a_name']."</td>";																							
												echo "</tr>\n";
											}
										}
										?>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->                           
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
           
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="../bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="../bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../dist/js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>

</body>

</html>
