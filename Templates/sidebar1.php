
<script>

	function setId(Id){
		
		var idtxt=document.getElementById("category_id");
		
		idtxt.value=Id;		
		form2.submit();
	}
			
	
</script>

	<?php  //require("product.php") ;
	//print_r($_POST);
	
	header('Location:../main1.php');
	?> 
				<!-- Categories -->
				<form name="form2" id="form2" method="post" action="main1.php">
					<div class="row sidebar-box purple">
					<input type="text" name="category_id" id="category_id"  hidden/>
						<br/>
						<div class="col-lg-12 col-md-12 col-sm-12">
							
							<div class="sidebar-box-heading">
								<i class="icons icon-folder-open-empty"></i>
								<h4>Categories</h4>
							</div>
							
							<div class="sidebar-box-content">
								<ul>
								        
								<?php $count=0;
									$product=new Product();
									$data12=$product->getCategory();
									 foreach($data12 as $result12){ ?> 
									<li>
										<a onclick="setId(<?php echo $result12[1]; ?>)" ><?php echo $result12[0]; ?><i class="icons icon-right-dir"></i></a>
										
										<ul class="sidebar-dropdown">
                                        	
											<li>
                                            	<ul><?php 
											$data1=$product->getChildCategories($result12["category_id"]);
											foreach($data1 as $result1){
											?>
                                                	<li>
														<a ><?php echo $result1["category_name"]; ?></a>
													</li><?php } ?>
                                                   
                                                </ul>
									 </li>
                                           <!-- <li>
                                            	<ul>
                                                	<li><a href="#">Chargers & Cradles</a></li>
                                                 
                                                </ul>
                                            </li>-->
                                        </ul>
                                    
									</li>
									<?php } ?>
									<li><a class="purple" href="#"></a></li>
								</ul>
							</div>
							
						</div>
							
					</div>
					<!-- /Categories -->
					</form>
		