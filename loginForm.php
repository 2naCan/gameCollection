<?php
session_start();
if(isset($_POST)) {
    session_destroy();
}
?>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
</head>
<body>
<div class ='registerForm'>
    <div class='formBackground'>
        <h2>Login to your Account</h2>
        <form action="login.php" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <button type="submit">Login</button>
        </form>
        <form action ='registrationForm.php'>
            <button type="submit">Create an account</button>
        </form>
    </div>
</div>

</body>
</html>
