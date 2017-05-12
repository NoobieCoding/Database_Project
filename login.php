<?php
$db = mysqli_connect('localhost', 'root', '', 'Game-Searcher') or
  die('Error connecting to dababase');
mysqli_set_charset($db, "utf8");

if(!empty($_POST)) {

  $username = $_POST['susername'];
  $password = $_POST['spassword'];
  $query = "SELECT userID, username FROM User WHERE username='$username' AND password='$password'";
  $answer = mysqli_query($db, $query);
  $table = array();

  while ($row = mysqli_fetch_assoc($answer)) {
    $table[] = $row;

  }

echo json_encode($table);
}
mysqli_close($db);
?>
