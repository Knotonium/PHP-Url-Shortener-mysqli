<?php

if (!isset($_GET['code'])) {
    header('Location: index.php');
    die;
}

$code = $_GET['code'];

$connection = require("inc/connect.php");
$query = mysqli_query($connection, "SELECT * FROM items WHERE code = '$code'");
$rows = $query->fetch_assoc();

if (isset($rows['url'])) {
    $url = $rows['url'];
    header("Location: $url");
    die;
}
