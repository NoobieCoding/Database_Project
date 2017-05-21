<?php
$db = mysqli_connect('localhost', 'root', '', 'Game-Searcher') or
  die('Error connecting to dababase');
mysqli_set_charset($db, "utf8");

if(!empty($_POST)) {

  $username = $_POST['username'];
  $password = $_POST['password'];
  $query = "INSERT INTO User(userID, username, password)VALUES(NULL, '$username', '$password') ";
  $answer = mysqli_query($db, $query);
  echo $username;
}
mysqli_close($db);
?>
