<meta charset="UTF-8">

<?php 
include('./ketnoi.php');
$vSQL_PL = "SELECT * FROM products_type WHERE ID=$vType";
$vResult_PL = mysql_query($vSQL_PL);
$rowPL = mysql_fetch_array($vResult_PL)
?>
	<h3><?php echo $rowPL["ProductTypeName"]; ?></h3>
	
	<?php 
	$vSQL = "SELECT * FROM products WHERE ProductTypeID=$vType";
	$vResult = mysql_query($vSQL);
	
	while($row = mysql_fetch_array($vResult)) {
	?>
		<div class="product_item">
			<a href="?mod=chitietsanpham&ID=<?php echo $row["ID"];?>" >	<img  class="image"src="<?php echo $row["Image"] ?>"  border="0" alt="" />
			<span>	
			<p class="chitiet">		Hệ điều hành: &nbsp;	<?php echo $row["Hedieuhanh"]; ?>
		</p>		
		<p class="chitiet">		Màn hình: &nbsp;	<?php echo $row["Manhinh"]; ?>
			
</p>			<p class="chitiet">		Ram: &nbsp;	<?php echo $row["Ram"]; ?>
			
</p>			<p class="chitiet">		Camera: &nbsp;	<?php echo $row["Camera"]; ?>
			
</p>			
	<p class="chitiet">		CPU: &nbsp;	<?php echo $row["CPU"]; ?>
			
</p>		
<p class="chitiet">		Pin: &nbsp;	<?php echo $row["Pin"]; ?>
			
</p>		
			</span></a>
			
		<a href="?mod=chitietsanpham&ID=<?php echo $row["ID"];?>" >
		<div class="title"><?php echo $row["ProductName"]; ?></div></a>
									<div class="price"><?php echo number_format($row['Price'],0,',','.'); ?>&nbsp;đ</div>
																		<div class="stat"><img src="images/IcoRating0.png" alt="" /></div>

					<div class="link">	<a href="?mod=them&ID=<?php echo $row["ID"];?>" >MUA HÀNG</a></div>


		</div>
	<?php } ?>
	<div class="clear"></div>
