<?php
// This file retrieves a user's information from the steam API including their game library
// that data is then routed through another of steam's APIs to gather information on each of the games
// that retrieved data is then used to populate my database gameCollection
require_once 'dbInit.php';

$userID = '76561198149865619'; // My steam user ID. will be changed to variable in future

$apiKey = 'E63BA099319EBFEBB90D76F475B9FBFF';
$steamID = $userID;
$apiUrl = 'https://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=' . $apiKey . '&steamid=' . $steamID . '&format=json';
$json = json_decode(file_get_contents($apiUrl), true); // this api retrieves all the users games



function getUserInfo()
{
    global $steamID;
    global $json;
    global $db;

   foreach ($json['response']['games'] as $game) // iterates over each game in a user's library and assigns them to $game variable
   {
       $appID = $game['appid']; // defining variables with data obtained from the user's library api
       $totalPlaytime = $game['playtime_forever'];

       $gameDataApiUrl = 'https://store.steampowered.com/api/appdetails?appids=' . $appID;
       $gameDataJson = json_decode(file_get_contents($gameDataApiUrl), true); // this api uses the app id and retrieves information about the game

       $gameName = $gameDataJson[$appID]['data']['name']; // defining variables with data obtained from the app info api
       $description = $gameDataJson[$appID]['data']['short_description'];
       $image = $gameDataJson[$appID]['data']['header_image'];

       $query =$db->prepare('SELECT `gameName` FROM `gameDisplay` WHERE `appID` = :appID');
       $query->bindParam(':appID', $appID);
       $query->execute();
       $name = $query->fetch();
       if($name === false){ // this checks to see if the game is already in the database and if it isn't it adds it
           $query = $db->prepare('INSERT INTO `gameDisplay`(`gameName`, `description`, `image`, `steamID`, `appID`, `totalPlaytime`)VALUES (:gameName, :description, :image, :steamID, :appID, :totalPlaytime);');
           $query->bindParam(':gameName', $gameName);
           $query->bindParam(':description', $description);
           $query->bindParam(':image', $image);
           $query->bindParam(':appID', $appID);
           $query->bindParam(':totalPlaytime', $totalPlaytime);
           $query->bindParam(':steamID', $steamID);

           $query->execute();
       }
       elseif ($name['gameName'] === null){ //this checks to see if the name of the game is in the database but the information was failed to be retrieved. if it failed, it trys again
           $query = $db->prepare('UPDATE `gameDisplay` SET `gameName` = :gameName, `description` = :description, `image` = :image, `steamID` = :steamID, `totalPlaytime` = :totalPlaytime WHERE `appID` = :appID');
           $query->bindParam(':gameName', $gameName);
           $query->bindParam(':description', $description);
           $query->bindParam(':image', $image);
           $query->bindParam(':appID', $appID);
           $query->bindParam(':totalPlaytime', $totalPlaytime);
           $query->bindParam(':steamID', $steamID);

           $query->execute();
       }

   }

}
getUserInfo();