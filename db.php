<?php
$host = 'gondola.proxy.rlwy.net';
$port = 14792;
$user = 'root';
$password = 'NUiXwduCqkGluQfonLfJeMWhJeYFrEkG';
$database = 'railway';

$conn = new mysqli($host, $user, $password, $database, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
