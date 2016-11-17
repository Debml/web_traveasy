<?php
	header('Accept: application/json');
	header('Content-type: application/json');

    function connectionToDataBase(){
        $servername = "localhost:8889";
        $username = "root";
        $password = "root";
        $dbname = "traveasy";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error){
            return null;
        }
        else{
            return $conn;
        }
    }
?>