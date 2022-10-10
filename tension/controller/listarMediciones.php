<?php
include_once './controller/connection.php';

function listarMedidas()
{

$sql = "SELECT * FROM lecturas";
$result = mysqli_query(conectar(), $sql);

$tensiones = array();

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while ($row = mysqli_fetch_assoc($result)) {
    $tensiones[] = $row;
  }
  $tensionesJson = json_encode($tensiones);
  return ($tensionesJson);
} else {
  return "0 results";
}

}

