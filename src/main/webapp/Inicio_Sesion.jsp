<%-- 
    Document   : inicio_sesion
    Created on : 4/11/2020, 01:56:39 AM
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEAG  | Iniciar sesión</title>
        <link rel="stylesheet" href="css/Estilos_Login.css">
    </head>
    <body>

        <div class="login-box ">
            <div>
                <img src="img/Logo.jpg" class="avatar" alt="Avatar Image">
            </div>

            <h1>Iniciar sesión</h1>
            <form method="POST" action="">
                <!-- USERNAME INPUT -->
                <label for="correo">Correo Electronico</label>
                <input type="text" placeholder="ingresa el correo electrónico">
                <!-- PASSWORD INPUT -->
                <label for="contrasena">Contraseña</label>
                <input type="password" placeholder="Ingresa la contraseña">
                <a href="UsuarioRegistrado.jsp"><input class="boton" type="button" value="Iniciar"></a>
                <a href="#">¿Olvidaste tu contraseña?</a><br>
                <a href="Registro.jsp">¿Aún no tienes una cuenta?</a><br>
                <a href="index.jsp">Volver a inicio</a>
            </form>
        </div>
    </body>
</html>
