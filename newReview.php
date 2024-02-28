<?php
session_start();
require_once  'navbar.php';
require_once 'dbInit.php';

$game = $_GET['game'];
$user = $_GET['user'];


$userGames = $db->prepare('SELECT * FROM `gameDisplay` WHERE `steamID` = \'' . $user . '\' AND `appID` = '. $game );
$userGames->execute();
$userGames = $userGames->fetch();


echo '<div class = review>';
    echo    '<h1>' . $userGames['gameName'] . '<h1>';
    echo'<div class= "pictureStars">';
        echo '<img src="'. $userGames["image"] .'">';
        echo '<div class= reviewFavourite>';
            echo'<form action="reviewCommit.php" method="post">';
            echo '<div class="rating">';
                echo'<input type="text" id="appID" name="appID" value="'. $game .'">';
                echo'<input id="rating1" type="radio" name="rating" value="1">';
                echo'<label for="rating1"></label>';
                echo'<input id="rating2" type="radio" name="rating" value="2">';
                echo'<label for="rating2"></label>';
                echo'<input id="rating3" type="radio" name="rating" value="3">';
                echo'<label for="rating3"></label>';
                echo'<input id="rating4" type="radio" name="rating" value="4">';
                echo'<label for="rating4"></label>';
                echo'<input id="rating5" type="radio" name="rating" value="5">';
                echo'<label for="rating5"></label>';
            echo'</div>';
        echo '</div>';
        echo '<textarea id="reviewText" name="reviewText" rows="6" cols="50">Add review</textarea>';
        echo'<input type="submit" value="Post" id="reviewPost">';
        echo'<form>';
    echo '</div>';
echo '</div>';
