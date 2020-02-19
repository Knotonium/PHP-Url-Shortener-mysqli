<?php
define('CHARSET', "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789");
define('SHORT_URL_LENGTH', 5);

if (!isset($_POST['url'])) {
    header('Location: index.php'); //// location checken../
    die;
}

function generateShortCode(): string {
    $randomCode = '';
    for ($i = 0; $i < SHORT_URL_LENGTH; $i++) {
        $rand = rand(0, strlen(CHARSET)-1);
        $randomCode .= CHARSET[$rand];
    }
    return $randomCode;
}
assert(strlen(generateShortCode()) === SHORT_URL_LENGTH);
assert(generateShortCode() !== generateShortCode());

function getShortCode(string $url): string {
    $connection = require("connect.php");
    $queryGetShortCodeToUrl = 'SELECT * FROM items WHERE url = \'' . $url . '\'';

    $query = mysqli_query($connection, $queryGetShortCodeToUrl);
    $rows = $query->fetch_assoc();
    if (!empty($rows)) {
        mysqli_close($connection);
        return $rows['code'];
    }

    while (true) {
        $shortCode = generateShortCode();
        $shortCodeQuery = 'SELECT * FROM items WHERE code = \'' . $shortCode . '\'';
        $query = mysqli_query($connection, $shortCodeQuery);
        $rows = $query->fetch_assoc();

        if (empty($rows)) {
            mysqli_close($connection);
            return $shortCode;
        }
    }
}

function insertRow($url, $shortCode) {
    $connection = require("connect.php");
    $shortCodeQuery = "INSERT INTO items (url,    code) 
                       VALUES            ('$url', '$shortCode')";
    return mysqli_query($connection, $shortCodeQuery);
}

$hostname = $_SERVER["HTTP_HOST"];
$url = $_POST['url'];
$shortCode = getShortCode($url);
$worked = insertRow($url, $shortCode);

$fullPageUrl = "http://$hostname/load.php?code=$shortCode";