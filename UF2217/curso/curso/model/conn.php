<?php
const HOST = "localhost";
const DB = "curso";
const USER = "root";
const PASS = "";

try {
    $conn = new PDO("mysql:host=" . HOST . ";dbname=" . DB, USER, PASS);
    // set the PDO error mode to exception
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connected successfully";
  } catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
  }