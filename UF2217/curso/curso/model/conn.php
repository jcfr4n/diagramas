<?php

require_once "config.php";

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

//    
//    try {
//      $conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db, $this->user, $this->pass);
//      var_dump($conn);
//      die('fin2');
//      return $conn;
//      // set the PDO error mode to exception
//    } catch (PDOException $e) {
//      echo "Connection failed: " . $e->getMessage();
//      die('Booooomm');
//    }
        // Create connection
        $conn = new mysqli($this->host, $this->user, $this->pass, $this->db);

// Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
    }

}
