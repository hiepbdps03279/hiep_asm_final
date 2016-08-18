<meta charset="UTF-8">
<?php
$vConn = mysql_connect("localhost", "root", "") or die ("Server not found!");
mysql_select_db("hiepbdps03279", $vConn) or die("Database not found!");
mysql_query("SET NAMES 'utf8'");
?>