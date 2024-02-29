<?php
require_once 'dbInit.php';
$appID = $_GET['appID'];

$query = $db->prepare('UPDATE `userData` SET `deleted` = 1 WHERE `appID` = \'' . $appID . '\'');
$query->execute();

header('Location: review.php');