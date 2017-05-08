<?php

$db = mysqli_connect('localhost', 'root', '', 'Game-Searcher') or
  die('Error connecting to dababase');

if(!empty($_GET)) {

  $result = $_GET;

  $name = $result['sname'];
  $platform = $result['splatform'];
  $type = $result['stype'];
  $price = $result['sprice'];
  $year = $result['syear'];
  $yearOption = $result['syearOption'];

  $return = ['name'=>$name];

  echo json_encode($return);
}

?>
