<?php
$userID = '76561198149865619';

$apiKey = 'E63BA099319EBFEBB90D76F475B9FBFF';
$steamID = $userID;
$apiUrl = 'https://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=' . $apiKey . '&steamid=' . $steamID . '&format=json';
$json = json_decode(file_get_contents($apiUrl), true);

$db = new PDO('mysql:host=127.0.0.1; dbname=gameCollection', 'root', 'password');
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

function getUserInfo()
{
    global $steamID;
    global $json;
    global $db;

   foreach ($json['response']['games'] as $game)
   {
       $appID = $game['appid'];
       $totalPlaytime = $game['playtime_forever'];

       $gameDataApiUrl = 'https://store.steampowered.com/api/appdetails?appids=' . $appID;
       $gameDataJson = json_decode(file_get_contents($gameDataApiUrl), true);

       $gameName = $gameDataJson[$appID]['data']['name'];
       $description = $gameDataJson[$appID]['data']['short_description'];
       $image = $gameDataJson[$appID]['data']['header_image'];

       $query =$db->prepare('SELECT `gameName` FROM `gameDisplay` WHERE `appID` = :appID');
       $query->bindParam(':appID', $appID);
       $query->execute();
       $name = $query->fetch();
       if($name === false){
           $query = $db->prepare('INSERT INTO `gameDisplay`(`gameName`, `description`, `image`, `steamID`, `appID`, `totalPlaytime`)VALUES (:gameName, :description, :image, :steamID, :appID, :totalPlaytime);');
           $query->bindParam(':gameName', $gameName);
           $query->bindParam(':description', $description);
           $query->bindParam(':image', $image);
           $query->bindParam(':appID', $appID);
           $query->bindParam(':totalPlaytime', $totalPlaytime);
           $query->bindParam(':steamID', $steamID);

           $query->execute();
       }
       elseif ($name['gameName'] === null){
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
