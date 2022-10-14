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
        $connection = new conn();
        return $connection;
    }

    function getAlumnos() {
        
        $conn = $this->getConnection();
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $stmt = $conn->prepare("SELECT id, firstname, lastname FROM MyGuests");        
        $stmt->execute();
        // set the resulting array to associative
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
        foreach (new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k => $v) {
            echo $v;
        }
        die('pummmm');
        return $result;
    }

}
