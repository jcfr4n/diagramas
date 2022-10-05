<?php

include_once '../functions/connection.php';

$idUser = $_POST['idUser'];
$pulsaciones = $_POST['pulsaciones'];
$alta = $_POST['alta'];
$baja = $_POST['baja'];



$sql = "INSERT INTO lecturas (id, idUser, pulsaciones, alta, baja, fecha) VALUES (NULL, '$idUser', '$pulsaciones', '$alta', '$baja', current_timestamp())";


if (mysqli_query($conn, $sql)) {

    echo ("<script>alert('inserción exitosa')</script>");
    mysqli_close($conn);
    header("Location:".$_SERVER['HTTP_REFERER']);
    
}
