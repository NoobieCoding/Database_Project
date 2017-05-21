<?php
$db = mysqli_connect('localhost', 'root', '', 'Game-Searcher') or
  die('Error connecting to dababase');
mysqli_set_charset($db, "utf8");

if(!empty($_POST)) {

  $userID = $_POST['userID'];
  $gameID = $_POST['gameID'];
  $query = "INSERT INTO Wishlist(userID, gameID)VALUES('$userID', '$gameID') ";
  $answer = mysqli_query($db, $query);
  echo $username;
}
mysqli_close($db);
?>
