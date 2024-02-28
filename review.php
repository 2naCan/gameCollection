<?php
session_start();

require_once  'navbar.php';

$db = new PDO('mysql:host=db; dbname=gameCollection', 'root', 'password');
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$userGames = $db->prepare('SELECT * FROM `userData` INNER JOIN `gameDisplay` ON `userData`.`appID` = `gameDisplay`.`appID` WHERE `userData`.`steamID` = \'' . $_SESSION['user'] . '\' ');
$userGames->execute();
$userGames = $userGames->fetchAll();

foreach ($userGames as $game) {
    echo "<div class='review'>";
            echo "<h2>" . $game['gameName'] . "</h2>";
            echo "<img src='" . $game['image'] . "/>";
        echo "<div class='rating'>";
            $starImage = 'img/Star_rating_' . $game['rating'] . '_of_5.png';
            echo "<img src='$starImage' id='stars'/>";
            echo "<p>" . $game['review'] . "</p>";
            echo '<p>'. $game["totalPlaytime"] .' minutes on record</p>';
        echo "</div>";
    echo "</div>";
}