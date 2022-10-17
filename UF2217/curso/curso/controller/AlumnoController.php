<?php


require_once './model/alumno.php';


if (isset($_POST['submit'])) {
    echo 'Aqui toy';
    die();
}

class AlumnoController
{
    public function __construct()
    {
        $this->alumnoObj = new alumno();
    }

    public function list(){
        $this->alumnoObj->getAlumnos();
    }
    
}
