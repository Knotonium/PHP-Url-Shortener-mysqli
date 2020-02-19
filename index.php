<?php
    $connection = require('inc/connect.php');
    $query = mysqli_query($connection,'SELECT * FROM items ORDER BY id DESC LIMIT 10');

    // Das ist mein Array :)
    $results = $query->fetch_all(MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>URLschrumpfer!</title>
</head>

<body>
<h1>URL Shortener</h1>
<form action='add.php' method='post'>
    <input type='text' name='url'><br>
    <input type='submit' name='shortbtn' value='make it so'>
</form>

<h2>Die letzten 10</h2>
<ul>
    <?php foreach($results as $result): ?>
        <li>
            <strong><?=$result['id']?>:</strong> [<?=$result['code']?>] => <?=$result['url']?>
        </li>
    <?php endforeach; ?>
</ul>
</body>
</html>