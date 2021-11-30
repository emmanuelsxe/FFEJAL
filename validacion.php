<?php
include('conexion.php');
$usuario = $_POST['user_mail'];
$pass = $_POST['password'];

session_start();

$_SESSION['user_mail'] = $usuario;

include ('db.php');

$consulta = "SELECT * FROM jueces where emailJuez = '$usuario' and passwordJuez = '$pass' ";

$resultado = mysqli_query($conn, $consulta);

$filas = mysqli_num_rows($resultado);

if($filas){
    header("location:jueces.php");
}else{
    ?>
    <?php
    include("Index.php");
    ?>

    <h1>Usuario o contraseña no son correctos</h1>
    <?php
}
mysqli_free_result($resultado);
mysqli_close($conexion);