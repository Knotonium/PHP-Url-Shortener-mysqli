<?php
include 'inc/database.php';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>URLschrumpfer!</title>
</head>

<body>
    <h1><?=$worked ? 'IT worked!' : 'Ohhh :('?>!</h1>
    <p>We generated a shortcode for your url "<a href="<?=$url?>"><?=$url?></a>"</p>
    <p>Shortcode: <a href="<?=$url?>"><?=$fullPageUrl?></a></p> 
</body>
</html>