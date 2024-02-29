
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
</head>
<body>
<div class ='registerForm'>
    <div class ='formBackground'>
        <h2>Create an Account</h2>
        <form action="register.php" method="post">
            <input type="text" name="username" placeholder="Username" required><br>
            <input type="password" name="password" placeholder="Password" required><br>
            <input type="text" name="steamID" placeholder="steamID" required><br><br>
            <button type="submit">Register</button>
        </form>
        <form action="loginForm.php">
            <button type="submit">Already have an account?</button>
        </form>
    </div>
</div>

</body>
</html>
