<?php
session_start();

require_once  'navbar.php';

require_once  'dbInit.php';

$userGames = $db->prepare('SELECT * FROM `userData` INNER JOIN `gameDisplay` ON `userData`.`appID` = `gameDisplay`.`appID` WHERE `userData`.`steamID` = \'' . $_SESSION['user'] . '\' ');
$userGames->execute();
$userGames = $userGames->fetchAll();


foreach ($userGames as $game) {
    if ($game['deleted'] === null) {
        echo "<div class='review'>";
        echo '<div class="card">';
        echo '<div class="circle"></div>';
        echo '<div class="circle"></div>';
        echo '<div class="card-inner">';
        echo "<h2>" . $game['gameName'] . "</h2>";
        echo "<img src='" . $game['image'] . "/>";
        echo "<div class='rating'>";
        $starImage = 'img/Star_rating_' . $game['rating'] . '_of_5.png';
        echo "<img src='$starImage' id='stars'/>";
        echo "<p>" . $game['review'] . "</p>";
        echo '<p>' . $game["totalPlaytime"] . ' minutes on record</p>';
        echo'<button>';
            echo '<a href="delete.php?appID=' . $game['appID'] . '">DELETE</a>';
        echo'</button>';
        echo "</div>";
        echo "</div>";
        echo "</div>";
        echo "</div>";
    }
}