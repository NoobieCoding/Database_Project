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

    if ($yearOption == 'Before') {
    $query = "SELECT Game.gameID as gID, Game.name as gName, rated, description, Platform.name as plName, Publisher.name as puName, price
    FROM Game, Type, Publisher, Playable, Platform, Classifiable WHERE Game.gameID = Playable.gameID and Playable.platformID = Platform.platformID
    and Game.publisherID = Publisher.publisherID and Game.gameID = Classifiable.gameID and Classifiable.typeID = Type.typeID and Game.name like '%$name%'and Platform.name = '$platform'
    and Type.name = '$type'and price < '$price' and releaseYear < '$year'";
  } else if ($yearOption == 'Since'){
    $query = "SELECT  Game.gameID as gID, Game.name as gName, rated, description, Platform.name as plName, Publisher.name as puName, price
    FROM Game, Type, Publisher, Playable, Platform, Classifiable WHERE Game.gameID = Playable.gameID and Playable.platformID = Platform.platformID
    and Game.publisherID = Publisher.publisherID and Game.gameID = Classifiable.gameID and Classifiable.typeID = Type.typeID and Game.name like '%$name%'and Platform.name = '$platform'
    and Type.name = '$type'and price < '$price' and releaseYear >= '$year'";
  } else {
    $query = "SELECT  Game.gameID as gID, Game.name as gName, rated, description, Platform.name as plName, Publisher.name as puName, price
    FROM Game, Type, Publisher, Playable, Platform, Classifiable WHERE Game.gameID = Playable.gameID and Playable.platformID = Platform.platformID
    and Game.publisherID = Publisher.publisherID and Game.gameID = Classifiable.gameID and Classifiable.typeID = Type.typeID and Game.name like '%$name%'and Platform.name = '$platform'
    and Type.name = '$type'and price < '$price' and releaseYear = '$year'";
  }

  $answer = mysqli_query($db, $query);
  $table = array();
  while ($row = mysqli_fetch_assoc($answer)) {
    $table[] = $row;

  }

echo json_encode($table);
}
mysqli_close($db);

?>
