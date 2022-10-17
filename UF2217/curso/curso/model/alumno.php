<?php

require_once './model/conn.php';

class alumno {

    public $id;
    public $name;
    public $last_name1;
    public $last_name2;
    public $dni;
    public $phone;

    //  function __construct($name, $last_name1, $last_name2=null, $dni, $phone=null)
    //  {
    //     $this->name = $name;
    //     $this->last_name1 = $last_name1;
    //     $this->last_name2 = $last_name2;
    //     $this->dni = $dni;
    //     $this->phone = $phone;
    //  }

    function __construct() {
        
    }

    function getConnection() {
        $conn = new conn();
    }

    function getAlumnos() {
        $conn = new conn();
        
        echo '<pre>';
        var_dump($conn);
        echo '<pre>';
        die();
        
        $sql = "SELECT * FROM alumnos";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            echo "<table><tr><th>ID</th><th>Nombre</th><th>1er Apellido</th><th>2do Apellido</th><th>dni</th><th>Teléfono</th></tr>";
            // output data of each row
            while ($row = $result->fetch_assoc()) {
                echo 
                "<tr><td>" 
                    . $row["id"] . "</td><td>" 
                    . $row["name"] . "</td><td>"
                    . $row["last_name1"] . "</td><td>"
                    . $row["last_name2"] . "</td><td>"
                    . $row["dni"] . "</td><td>" 
                    . $row["phone"] . "</td></tr>";
            }
            echo "</table>";
        } else {
            echo "0 results";
        }
        $conn->close();
    }

}
