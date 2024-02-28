<?php

if(isset($_POST)){

    $hashedPassword = password_hash($_POST['password'], PASSWORD_DEFAULT);

    require_once 'dbInit.php';

    $query = $db->prepare('INSERT INTO `loginInfo`(`username`, `password`, `steamID`)VALUES (:username, :password, :steamID);');
    $query->bindParam(':username', $_POST['username']);
    $query->bindParam(':password', $hashedPassword);
    $query->bindParam(':steamID', $_POST['steamID']);

    $query->execute();

    header('Location: loginForm.php');
}