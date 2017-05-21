<?php
$db = mysqli_connect('localhost', 'root', '', 'Game-Searcher') or
  die('Error connecting to dababase');
mysqli_set_charset($db, "utf8");

if(!empty($_POST)) {

  $gameName = $_POST['gameName'];
  $query = "DELETE FROM Wishlist WHERE gameID in (SELECT gameID from Game where Game.name = '$gameName')";
  $answer = mysqli_query($db, $query);
  echo $gamename;
}
mysqli_close($db);
?>
