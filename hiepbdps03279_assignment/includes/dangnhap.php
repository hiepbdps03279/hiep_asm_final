<meta charset="UTF-8">
<?php function abc() {
	$_SESSION['tendangnhap'] = '';
	$_SESSION['matkhau'] = '';
	
	header("Location:index.php");
}?>