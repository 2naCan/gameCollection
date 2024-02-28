<?php
session_start();
require_once  'navbar.php';
require_once 'dbInit.php';

$game = $_GET['game'];
$user = $_GET['user'];


$userGames = $db->prepare('SELECT * FROM `gameDisplay` WHERE `steamID` = \'' . $user . '\' AND `appID` = '. $game );
$userGames->execute();
$userGames = $userGames->fetch();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
</head>
<body>

<div class = review>
    <h1><?= $userGames['gameName']; ?><h1>
    <div class= "pictureStars">
        <img src="<?= $userGames["image"]; ?>">
        <div class= reviewFavourite>
            <form action="reviewCommit.php" method="post">
            <div class="rating">
                <input type="text" id="appID" name="appID" value="<?= $game; ?>">
                <input id="rating1" type="radio" name="rating" value="1">
                <label for="rating1"></label>
                <input id="rating2" type="radio" name="rating" value="2">
                <label for="rating2"></label>
                <input id="rating3" type="radio" name="rating" value="3">
                <label for="rating3"></label>
                <input id="rating4" type="radio" name="rating" value="4">
                <label for="rating4"></label>
                <input id="rating5" type="radio" name="rating" value="5">
                <label for="rating5"></label>
            </div>
        </div>
        <textarea id="reviewText" name="reviewText" rows="6" cols="50">Add review</textarea>
        <input type="submit" value="Post" id="reviewPost">
        <form>
    </div>
</div>

</body>