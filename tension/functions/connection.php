<?php
$server = 'localhost';
$user = 'root';
$pass = '';
$db = 'tension';

try {
    $conn = mysqli_connect($server,$user,$pass,$db);
} catch (Exception $th) {
    die('<h1>No ha sido posible conectar con la base de datos</h1>');
}
