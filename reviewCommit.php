<?php
session_start();

if (isset($_POST)){
    require_once 'dbInit.php';

    $query = $db->prepare('INSERT INTO `userData`(`rating`, `review`, `steamID`, `appID`)VALUES (:rating, :review, :steamID, :appID);');
    $query->bindParam(':rating', $_POST['rating']);
    $query->bindParam(':review', $_POST['reviewText']);
    $query->bindParam(':steamID', $_SESSION['user']);
    $query->bindParam(':appID', $_POST['appID']);
    $query->execute();
}

header('Location: review.php');