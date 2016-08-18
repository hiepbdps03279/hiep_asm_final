<meta charset="UTF-8">
<?php ob_start();?>
<?php
$key=$_GET["id"];
$xoa="delete from giohang where idgh='$key'";
$tt=mysql_query($xoa);
if($tt)
{
echo("<script>location.href = 'customer.php?mod=giohang';</script>");
}
else "Xóa không thành công!";
?>