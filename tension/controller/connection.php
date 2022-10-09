<?php
const SERVER = 'localhost';
const USER = 'root';
const PASS = '';
const DB = 'tension';

function conectar()
{
    try {
        $conn = mysqli_connect(SERVER, USER, PASS, DB);
    } catch (Exception $th) {
        die('<h1>No ha sido posible conectar con la base de datos</h1>');
    }

    return $conn;
}

function desconectar($conn) {
    mysqli_close($conn);
}
?>
