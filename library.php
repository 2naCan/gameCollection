<?php
session_start();

require_once 'navbar.php';
function gameDisplay()
{
    require_once 'dbInit.php';

    $user = $_SESSION['user'];

    $userGames = $db->prepare('SELECT * FROM `gameDisplay` WHERE `steamID` = \'' . $user . '\'');
    $userGames->execute();
    $userGames = $userGames->fetchAll();

    echo'<div class="libraryTitle">';
    echo'<div class="libraryRight">';
        echo'<form action ="userLibrary.php">';
            echo'<button type="submit">Import Games</button>';
        echo'</form>';
    echo'</div>';
    echo'</div>';
    echo '<div class="library">';
    foreach ($userGames as $game)
    {
        echo'<div class="card">';
        echo'<div class="circle"></div>';
        echo'<div class="circle"></div>';
        echo'<div class="card-inner">';
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
        echo'</div>';
        echo '</div>';
        echo '</div>';
        echo '</div>';
        echo'</div>';
    }
    echo '</div>';
}
gameDisplay();