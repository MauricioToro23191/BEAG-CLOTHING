<%-- 
    Document   : Registro
    Created on : 4/11/2020, 02:10:14 PM
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>BEAG | Registro</title>
        <link rel="stylesheet" href="css/Estilo_Registro.css">
    </head>
    <body>

        <div class="login-box ">
            <div>
                <img src="img/Logo.jpg" class="avatar" alt="Avatar Image">
            </div>

            <h1>Registro</h1>
            <form>
                <div class="col-2 col-s-10">
                    <label for="correo" class="lbl">Correo </label>
                    <input type="text" placeholder="ingresa el correo">
                </div>
                <div class="col-2 col-s-10">

                    <label for="correo" class="lbl">Contraseña</label>
                    <input type="password" placeholder="contraseña">
                </div >
                <div class="col-2 col-s-10">
                    <label for="correo" class="lbl">Confirmar</label>
                    <input type="password" placeholder="confirme contraseña">
                </div>
                <div class="col-2 col-s-10">
                    <label for="correo" class="lbl">Nombres</label>
                    <input type="text" placeholder="ingresa nombres">
                </div>
                <div class="col-2 col-s-10">
                    <label for="correo" class="lbl">Apellidos</label>
                    <input type="text" placeholder="ingresa apellidos">
                </div>
                <div class="col-2 col-s-10">
                    <label for="correo" class="lbl">Edad</label>
                    <input type="text" placeholder="ingresa tu edad ">
                </div >
                <div class="col-2 col-s-10" >
                    <label for="correo" class="lbl">Telefono</label>
                    <input type="text" placeholder="ingresa el telefono">
                </div>
                <div class="col-2 col-s-10">
                    <label for="correo" class="lbl">Celular</label>
                    <input type="text" placeholder="ingresa el celular ">
                </div>  
                <input type="submit" value="Iniciar">
                <a href="Inicio_Sesion.jsp">Ya tienes una cuenta</a><br>
                <a href="index.jsp">Volver</a>
            </form>
        </div>
    </body>
</html>
