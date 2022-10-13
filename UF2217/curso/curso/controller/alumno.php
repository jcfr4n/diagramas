<?php

require_once './model/alumno.php';

class AlumnoController
{
    public function __construct()
    {
        $this->alumnoObj = new alumno();
    }

    public function list(){
        return $this->alumnoObj->getAlumnos();
    }
    
}
