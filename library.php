<?php
session_start();

require_once  'navbar.php';
function gameDisplay()
{
    $db = new PDO('mysql:host=db; dbname=gameCollection', 'root', 'password');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $user = $_SESSION['user'];

    $userGames = $db->prepare('SELECT * FROM `gameDisplay` WHERE `steamID` = \'' . $user . '\'');
    $userGames->execute();
    $userGames = $userGames->fetchAll();
//    var_dump($userGames);


    echo '<h1>Your Library</h1>';
    echo '<div class="library">';
    foreach ($userGames as $game)
    {
        echo '<div class = "gameBox">';
            echo '<div class = "gameBoxImage">';
                echo '<img src="'. $game["image"] .'">';
            echo '</div>';
            echo '<div class = "titleText">';
                echo '<h2>'. $game["gameName"] .'</h2>';
                echo '<p>'. $game["description"] .'</p>';
                echo '<div class = "playedReview">';
                    echo '<p>'. $game["totalPlaytime"] .' minutes on record</p>';
                    echo'<button class="reviewButton" role="button">';
                        echo '<a href="newReview.php?user=' . $game['steamID'] . '&game=' . $game['appID'] .'">Write a review</a>';
                    echo'</button>';
                echo '</div>';
            echo '</div>';

        echo '</div>';
    }
    echo '</div>';
}
gameDisplay();