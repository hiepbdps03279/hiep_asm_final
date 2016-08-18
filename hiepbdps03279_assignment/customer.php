<meta charset="UTF-8">
<?php
include_once("includes/dangnhap.php");

include_once("config.php");
include_once("admin/includes/lib.php");
session_start();
$_SESSION['user'] = isset($_SESSION['user']) ? $_SESSION['user'] : '';
$_SESSION['pass'] = isset($_SESSION['pass']) ? $_SESSION['pass'] : '';

$vModule = isset($_GET["mod"]) ? $_GET["mod"] : '';
$vType = isset($_GET["type"]) ? $_GET["type"] : '';
$vAct = isset($_GET["act"]) ? $_GET["act"] : '';
$vID = isset($_GET["id"]) ? $_GET["id"] : '';
$vMsgStatus = isset($_GET["msgstatus"]) ? $_GET["msgstatus"] : '';

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>PHP-01: LESSON 15</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/lib.js"></script>

	<script type="text/javascript" src="slider/engine1/jquery.js"></script>
	
    <link href="css/cssmenu.css" rel="stylesheet" type="text/css">
    <link href="css/menu.css" rel="stylesheet" type="text/css">
</head>

<body>

<div id="wrapper">
		<a href="index.php"	<button type="button" onclick="alert('Chao mung qway tro lai!')" style="color:#03C;background-color:#0FC">Chọn để quay trở lại trang admin</button></a>
 
	<div id="topmenu"><?php include_once("includes/topmenu.php"); ?></div>

		
	<div id="header"><?php include_once("includes/header.php"); ?></div>
		<div id="nav-menu"><?php echo create_menu(); ?></div>
			<div><?php include_once("includes/slider.php"); ?></div>
	<div class="clear"></div>
	<div id="main">
	
	<div  id="mainleft"></div>
	<?php 
				
                if(!empty($vErrorMessage)) {
                    echo '<div class="error">' . $vErrorMessage . '</div>';
                } 
                else 
                {
                    if(empty($vModule)) {
    					include_once("modules/products/products.php"); 
    				} 
    				else 
    				{
						$type = (!empty($vType)) ? '_type' : '';
						
    					$vPathModule = "modules/$vModule/$vModule$type.php";
    				
    					if(file_exists($vPathModule)) 
    					{
    						include_once($vPathModule); 
    					} 
    					else 
    					{
    						echo "Đây là mục chỉ danh riêng cho Admin!";
    					}
    				}
                }
				
			?>
	<div id="mainright"></div>
	<div class="clear"></div>
	</div>


	

</div>

<div id="footer"><?php include_once("includes/footer.php"); ?></div>
</body>
</html>
