<?php
echo('<h1>HOla</h1>');
echo('<h1>HOla</h1>');

$sql = "SELECT * FROM lecturas";
$result = mysqli_query($conn, $sql);

echo('<h1>HOla</h1>');

if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
      echo "id: " . $row["id"]. " - idUser: " . $row["idUser"]. " " . " - pulsaciones: " . $row["pulsaciones"]. " " . " - Alta: " . $row["alta"]. " " . " - Baja: " . $row["baja"]. " " . " - Fecha: " . $row["fecha"]. " " . "<br>";
    }
  } else {
    echo "0 results";
  }