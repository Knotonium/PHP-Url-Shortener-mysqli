<?php

$host = '127.0.0.1';
$user = 'root';
$pass = '';
$db = 'url_shortener';

$connection = mysqli_connect($host, $user, $pass, $db);
if (mysqli_connect_error()) {
    echo "Fehler beim Verbindungs-Aufbau:\n";
    echo mysqli_connect_error() . "\n";
    echo mysqli_connect_errno() . "\n";
    exit;
}

mysqli_set_charset($connection, 'utf8');

return $connection;