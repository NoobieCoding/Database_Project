<?php

$db = mysqli_connect('localhost', 'root', '', 'Game-Searcher') or
  die('Error connecting to dababase');
mysqli_set_charset($db, "utf8");

if(!empty($_POST)) {

  $result = $_POST;

  $name = $result['sname'];
  $platform = $result['splatform'];
  $type = $result['stype'];
  $price = $result['sprice'];
  $year = $result['syear'];
  $yearOption = $result['syearOption'];
  $query = "SELECT * FROM Game WHERE rated like \"18%\"";
  $answer = mysqli_query($db, $query);
  $table = array();
  while ($row = mysqli_fetch_assoc($answer)) {
    $table[] = $row;

  }

echo json_encode($table);
}
mysqli_close($db);

?>
