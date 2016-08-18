<meta charset="UTF-8">
<?php

$vDBhost = "localhost";
$vDBport = "";
$vDBuser = "root";
$vDBpass = "";
$vDBname = "hiepbdps03279";



$vErrorMessage = "";

if(!empty($vDBport)) $vDBhost .= ":$vDBport";

$vConn = mysql_connect($vDBhost, $vDBuser, $vDBpass);

if(!$vConn) {
    $vErrorMessage = "Vui lòng tạo Database tên: hiepbdps03279 sau đó mới import file Sql trong Xampp!";
} 
else {
    $vSelectedDB = mysql_select_db($vDBname, $vConn);
    
    if(!$vSelectedDB) $vErrorMessage = "Vui lòng tạo Database tên: hiepbdps03279 sau đó mới import file Sql trong Xampp!";
    
    mysql_query("SET NAMES 'utf8'");
}

?>