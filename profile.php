<?php
session_start();

require_once 'navbar.php';

echo '<form action="loginForm.php" method="post">';
echo '<button type="submit" name="logout">Log out</button>';
echo '</form>';