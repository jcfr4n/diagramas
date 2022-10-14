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
        
        try {
            $conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db, $this->user, $this->pass);
        } catch (PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }

}
