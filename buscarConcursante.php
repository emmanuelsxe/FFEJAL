<?php

    $conn = mysqli_connect('localhost', 'root', 'root', 'bd_ffejal') or die(mysqli_connect_error($mysqli));

    $id = $_POST['id_concursante'];

    $sql = "SELECT id_concursante, nombre_concursante, apPaternoConcu, apMaternoConcu, primerCategoria FROM concursantes WHERE 
    id_concursante LIKE '$id'";


$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<br> <b> ID: </b>" . $row["id_concursante"] . "<br>";
        echo "<br> <b> Usuario: </b>" . $row["nombre_concursante"] . " " . $row["apPaternoConcu"] . " " . $row["apMaternoConcu"];
        echo "<br> <b> Categoria: </b>" .$row["primerCategoria"] ;
    }
} else {
    echo "No se encontraron resultados";
}

mysqli_close($conn);

?>




<html>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Buscar Concursante</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>


    <form action="" method="post"></form>

    <br>
    <label>Calificacion Primera Ronda</label>
    <input type="number" name="caliPrimerRonda">
    <button type="submit" name="buscarConcursante" class="boton-verde">Enviar Calificación </button>
    <br>

    <br>
    <label>Calificacion Segunda Ronda</label>
    <input type="number" name="caliSegundaRonda">
    <button type="submit" name="buscarConcursante" class="boton-verde">Enviar Calificación </button>

    <br>

    <br>
    <label>Calificacion Tercer Ronda</label>
    <input type="number" name="caliTercerRonda">
    <button type="submit" name="buscarConcursante" class="boton-verde">Enviar Calificación </button>

    <br>



    </form>


<footer class="site-footer seccion">
        <div class="contenedor contenedor-footer">
            <nav >
                <a href="jueces.php"> Buscar otro Participante </a>
                <a href="Index.php"> Volver al Inicio </a>
                
            </nav>
            
        </div>
    </footer>

</body>

</html>
   