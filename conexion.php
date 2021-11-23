<?php


$conn = mysqli_connect('127.0.0.1 ', 'root','','bd_ffejal') or die (mysqli_connect_error($mysqli));

if (!$conn) {
    echo "Error: No se pudo conectar a MySQL." . PHP_EOL;
    echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
    echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
    exit;
}
/*function diferencia($conn){
    if(isset($_POST['datosParticipantes'])){
        insertarConcursante($conn);
    }
} */

insertarConcursante($conn);

function insertarConcursante($conn){

    $nombreC = $_POST['nombreC'];
    $apellidoPaternoC = $_POST['apellidoPaternoC'];
    $apellidoMaternoC = $_POST['apellidoMaternoC'];
    $correoElectronicoC = $_POST['correoElectronicoC'];
    $passwordC = $_POST['passwordC'];
    $sexoC = $_POST['sexoC'];
    $estadoNacC = $_POST['estadoNacC'];
    $fechaNacimientoC = $_POST['fechaNacimientoC'];
    $edadC = $_POST['edadC'];
    $curpC = $_POST['curpC'];
    $gradoEstudiosC = $_POST['gradoEstudiosC'];
    $estudioC = $_POST['estudioC'];
    $celularC = $_POST['celularC'];
    $fijoC = $_POST['fijoC'];
    $facebookC = $_POST['facebookC'];
    $twitterC = $_POST['twitterC'];
    $medio = $_POST['medio'];
    $calleConcur = $_POST['calleConcur'];
    $numExtConcur = $_POST['numExtConcur'];
    $numIntConcur = $_POST['numIntConcur'];
    $coloniaConcur = $_POST['coloniaConcur'];
    $municipioConcur = $_POST['municipioConcur'];
    $estadoConcur = $_POST['estadoConcur'];
    $cpConcur = $_POST['cpConcur'];
    $nombreGimnasio = $_POST['nombreGimnasio'];
    $calleGimnasio = $_POST['calleGimnasio'];
    $numExtGim = $_POST['numExtGim'];
    $numIntGim = $_POST['numIntGim'];
    $coloniaGim = $_POST['coloniaGim'];
    $municipioGim = $_POST['municipioGim'];
    $estadoGim = $_POST['estadoGim'];
    $cpGim = $_POST['cpGim'];
    $nombreEntrenador = $_POST['nombreEntrenador'];
    $apPaternoEntrenador = $_POST['apPaternoEntrenador'];
    $apMaternoEntrenador = $_POST['apMaternoEntrenador'];
    $celEntrenador = $_POST['celEntrenador'];
    $estadoRepresentado = $_POST['estadoRepresentado'];
    $categoria1 = $_POST['categoria1'];
    $categoria2 = $_POST['categoria2'];
    $categoria3 = $_POST['categoria3'];


    $consulta = "INSERT INTO concursantes (nombre_concursante, apPaternoConcu, apMaternoConcu, emailConcur, passwordConcur,
    sexoConcu, lugarNacimientoConcu, fechaNacimientoConcur, edadConcur, curpConcur, estudiosConcur, estudiaConcur,
    estudiaConcur, celularConcur, telFijoConcur, facebookConcur, twitterConcur,
    calleConcur, numExtConcur, numIntConcur, coloniaConcur, municipioConcur, estadoConcur, cpConcur,
    nombreGim, calleGim, numExtGim, numIntGim, coloniaGim, municipioGim, estadoGim, cpGim,
    nombreEntrenador, apePatEntrenador, apMatEntrenador, celularEntrenador,
    estadoRepresentado, primerCategoria, segundaCategoria, tercerCategoria )

    VALUES ('$nombreC', '$apellidoPaternoC', '$apellidoMaternoC', '$correoElectronicoC', '$passwordC',
     '$sexoC', '$estadoNacC', '$fechaNacimientoC', '$edadC', '$curpC', '$gradoEstudiosC', '$estudioC',
     '$celularC', '$fijoC', '$facebookC', '$twitterC','$medio', 
     '$calleConcur', '$numExtConcur', '$numIntConcur', '$coloniaConcur', '$municipioConcur', '$estadoConcur', '$cpConcur',
     '$nombreGimnasio', '$calleGimnasio', '$numExtGim', '$numIntGim', '$coloniaGim', '$municipioGim', '$estadoGim', '$cpGim',
     '$nombreEntrenador', '$apPaternoEntrenador', '$apMaternoEntrenador', '$celEntrenador',
     '$estadoRepresentado', '$categoria1', '$categoria2', '$categoria3')" ;


    echo "Éxito: Se realizó una conexión apropiada a MySQL!" . PHP_EOL;
    echo "Información del host: " . mysqli_get_host_info($conn) . PHP_EOL;

    mysqli_query($conn, $consulta);
    mysqli_close($conn);

}

?>