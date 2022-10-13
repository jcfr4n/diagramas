<?php

require_once './model/conn.php';

class alumno
{
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

    function __construct()
    {
        
    }

    function getConnection()
    {
        return $connection = new conn();
    }

    function getAlumnos () {
        $sql = "SELECT * FROM alumnos";
        $result = $this->getConnection()->query($sql);

        var_dump($result);
        die('hola');

        return $result;
    }
}
