<?php

$dns = "mysql:host=db; port=3306; dbname=sample";

$user = "root";

$password = "password";


try {
    $pdo = new PDO($dns, $user, $password);
    echo 'Connection success </br>';


    $sql = 'select * from user';
    foreach ($pdo->query($sql) as $row) {
        echo 'id:' . $row['id'] . '</br>';
        echo 'name:' . $row['name'] . '</br>';
    }
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
