<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Zen+Kaku+Gothic+New:wght@300&display=swap');
    </style>
    <script src="https://kit.fontawesome.com/c53008b00f.js" crossorigin="anonymous"></script>
    <title>Sistema de Jueceo</title>
</head>

<body>
    <header>
        <h1>Sistema de Jueceo</h1>
    </header>


    <form action="validacion.php" method="POST" class="inicio-sesion">
        <h1>Iniciar Sesión</h1>

        <div class="contenedor campo">

            <label for"mail">
                <input type="email" id="mail" name="user_mail" placeholder="Ingresa tu correo" required>
            </label>

            <label></label>
            

        </div>

        <div class="campo">
            <label> </label>
            <input type="password" id="password" name="password" placeholder="Ingresa tu contraseña" required>
            <span> Mostrar </span>
        </div>

        <!--<button class="botonMostrar" type="button" onclick="mostrarContrasena()">Mostrar
            Contraseña</button>-->

        <script>
            document.querySelector('.campo span').addEventListener('click', e => {
                const passwordInput = document.querySelector('#password');
                if (e.target.classList.contains('show')) {
                    e.target.classList.remove('show');
                    e.target.textContent = 'Ocultar';
                    passwordInput.type = 'text';
                } else {
                    e.target.classList.add('show');
                    e.target.textContent = 'Mostrar';
                    passwordInput.type = 'password';
                }
            });
        </script>


        <button type="submit" name="iniciar_sesion" value="iniciar_sesion" class="boton-verde">Iniciar Sesión </button>


        </div>

    </form>

    <br><br>

    <nav style="text-align:center">
        <p> ¿Aún no te haz registrado? </p>
        <a href="registroParticipantes.html"> Ingresa aquí para Registrarte </a>

        <p> ¿Eres Juez y no estas registrado?</p>
        <a href="registroJueces.html"> Ingresa aquí para registrar Juez </a>


        <br> <br>

        <a href="prueba.html">Prueba</a>
    </nav>
</body>

</html>