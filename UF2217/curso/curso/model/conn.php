<?php

require_once "./config.php";

class conn {

    private $host;
    private $db;
    private $user;
    private $pass;

    public function __construct() {
        $this->host = constant("HOST");
        $this->db = constant("DB");
        $this->user = constant("USER");
        $this->pass = constant("PASS");

// Create connection
        $conn = new mysqli($this->host, $this->user, $this->pass, $this->db);
// Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        echo '<pre>';
        print_r($conn);
        echo '<pre>';
        die();
        
        return $conn;
    }

}
