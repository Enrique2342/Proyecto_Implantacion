<?php
$conexion = new mysqli("localhost", "root", "", "pruebas");

if ($conexion->connect_error) {
    die("Conexión fallida: " . $conexion->connect_error);
}

$nombre = $_POST['nombre'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);

$rol = (strpos($nombre, 'Profesor') !== false) ? 'profesor' : 'alumno';
$numeroCuenta = ($rol == 'profesor') ? 'P' . rand(10000000, 99999999) : 'A' . rand(10000000, 99999999);

$sql = "INSERT INTO usuarios (nombre, password, numero_cuenta, rol) VALUES ('$nombre', '$password', '$numeroCuenta', '$rol')";

if ($conexion->query($sql) === TRUE) {
    echo "Usuario dado de alta exitosamente.";
} else {
    echo "Error al dar de alta al usuario: " . $conexion->error;
}

$conexion->close();
?>
