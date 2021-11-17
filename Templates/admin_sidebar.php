
<script>

	function setIdCategory(Id){
		
		var idtxt=document.getElementById("category_id");
		
		idtxt.value=Id;
        		
		form2.submit();
	}
			
	
</script>

	<?php  //require("product.php");
	//print_r($_POST);
	
	?> 
				<!-- Categories -->
					<div class="row sidebar-box purple">
						
						<div class="col-lg-12 col-md-12 col-sm-12">
							
							<div class="sidebar-box-heading">
								<i class="icons icon-folder-open-empty"></i>
								<h4>Options</h4>
							</div>
							
							<div class="sidebar-box-content">
								<ul>
									<li><a href="add_product.php"> <i class="fa fa-plus-circle"></i>Add Product</a></li>
									<li><a href="delete_product.php">Delete &amp; Update Product</a></li>
									<li><a href="add_category.php">Add Category</a></li>
									<li><a href="delete_category.php">Delete &amp; Update Category </a></li>  
                                    <li><a href="add_packing.php">Add Packing </a></li>
									<li><a href="delete_packing.php">Delete &amp; Update Packing</a></li>
								</ul>
							</div>
							
						</div>
							
					</div>
					<!-- /Categories -->
		