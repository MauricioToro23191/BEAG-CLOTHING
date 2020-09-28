<%-- 
    Document   : login
    Created on : 27/09/2020, 08:32:25 PM
    Author     : mauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <title>Inicio de sesión</title>
        <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>

        <form action="" class="login">
            <h3 class="text-center">Inicio de sesión</h3>
            <div class="form-group">
                <label for="Nombre">Correo</label>
                <input type="text" class="form-control" name="txtNombre" id="Nombre" placeholder="Escribe tu nombre">
            </div>
            <div class="form-group">
                <label for="Pass">Clave</label>
                <input type="password" class="form-control" name="txtpass" id="Pass" placeholder="Escribe tu Clave">
            </div>
            <p class="text-center">
                <button class="btn btn-primary btn-block">Ingresar</button>
                <button class="btn btn-primary btn-block">Cancelar</button>
            </p>
        </form>	
    </body>
</html>
