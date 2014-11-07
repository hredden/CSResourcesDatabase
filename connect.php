<?php

$user = 'root';
$pass = '';
$db = 'CSResources';

$db = new mysqli('localhost', $user, $pass, $db) or die ("Unable to connect to CSResources");

echo"Connection Successful";

?>