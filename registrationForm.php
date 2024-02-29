
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="stylesheet.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
</head>
<body>

<div class = 'formBG'>
    <div class ='formDiv'>
        <form class="form" action="register.php" method="post">
          <span class="input-span">
              <label for="username" class="label">Username</label>
              <input type="text" name="username" id="username" required>
          </span>
          <span class="input-span">
              <label for="steamID" class="label">Steam ID</label>
              <input type="text" name="steamID" id="steamID" required>
          </span>
          <span class="input-span">
              <label for="password" class="label">Password</label>
              <input type="password" name="password" id="password" required>
          </span>
            <input class="submit" type="submit" value="Log in">
            <span class="span">Already have an account?<a href="loginForm.php">Log in</a></span>
        </form>
    </div>
</div>

</body>
</html>
