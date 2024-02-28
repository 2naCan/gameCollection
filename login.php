<?php
session_start();

if(isset($_SESSION['user'])){
    header('Location: index.php');
}

if(isset($_POST)){
    require_once 'dbInit.php';

    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = $db->prepare('SELECT `password`, `steamID` FROM `loginInfo` WHERE `username` = \'' . $username . '\'');
    $query->execute();
    $userInfo = $query->fetch();

    if(password_verify($password, $userInfo['password'])){
        $_SESSION['user'] = $userInfo['steamID'];
        header('Location: index.php');
    }
    else{
        header('Location: loginForm.php');
    }
}