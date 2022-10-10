<?php include_once './controller/listarMediciones.php';

echo '<div class="container collapse" id="listTable">';
echo '<div class="container-fluid">';
    echo '<table class="table table-striped table-hover table-success display" id="medidas" style="width: 100%">';
    echo '<thead>';
    echo '<tr><th>Id registro</th><th>Id Usuario</th><th>Pulsaciones</th><th>alta</th><th>baja</th><th>fecha</th></tr>';
    echo '</thead>';
    echo '<tbody>';
    $result = json_decode(listarMedidas(),true);
    if ($result) {
        foreach ($result as $key => $value) {
    
            $str = '<tr><td>' . $value["id"] . '</td><td>' . $value["idUser"] . '</td><td>' . $value["pulsaciones"] . '</td><td>' . $value["alta"] . '</td><td>' . $value["baja"] . '</td><td>' . $value["fecha"] . '</td></tr>';
            echo($str);
            
        }
    }
    echo '<table>';

    ?>
    </div>
</div>