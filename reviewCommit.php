<?php
session_start();

if (isset($_POST)){
    $db = new PDO('mysql:host=db; dbname=gameCollection', 'root', 'password');
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = $db->prepare('INSERT INTO `userData`(`rating`, `review`, `steamID`, `appID`)VALUES (:rating, :review, :steamID, :appID);');
    $query->bindParam(':rating', $_POST['rating']);
    $query->bindParam(':review', $_POST['reviewText']);
    $query->bindParam(':steamID', $_SESSION['user']);
    $query->bindParam(':appID', $_POST['appID']);
    $query->execute();
}

header('Location: review.php');