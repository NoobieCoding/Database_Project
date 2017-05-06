<?php

$result = $_GET;

$name = $result['sname'];
$platform = $result['splatform'];
$type = $result['stype'];
$price = $result['sprice'];
$year = $result['syear'];
$yearOption = $result['syearOption'];

$return = ['name'=>$name];

echo json_encode($return);

?>
