<?php
include_once './connection.php';

$idUser = $_POST['idUser'];
$pulsaciones = $_POST['pulsaciones'];
$alta = $_POST['alta'];
$baja = $_POST['baja'];



$sql = "INSERT INTO lecturas (id, idUser, pulsaciones, alta, baja, fecha) VALUES (NULL, '$idUser', '$pulsaciones', '$alta', '$baja', current_timestamp())";


if (mysqli_query(conectar(), $sql)) {

    echo ("<script>alert('inserción exitosa')</script>");
    header("Location:" . $_SERVER['HTTP_REFERER']);
}
