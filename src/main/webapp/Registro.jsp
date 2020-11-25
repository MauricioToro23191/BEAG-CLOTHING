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

        <div class="login-box  ">
            <div>
                <img src="img/Logo.jpg" class="avatar" alt="Avatar Image">
            </div>

            <h1>Registro</h1>
            <form action="ControladorLogin" method="POST">
                <div class="col-3 col-s-10" style="position: static; height: 30px;">
                    <label for="correo" class="lbl">Correo </label>
                    <input type="text" name="txtCorreo" placeholder="ingresa el correo">
                </div>
                <div class="col-3 col-s-10">

                    <label for="correo" class="lbl">Contraseña</label>
                    <input type="password" name="txtContrasena" placeholder="ingresa contraseña">
                </div >
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Confirmar</label>
                    <input type="password"name="txtConfContrasena" placeholder="confirme contraseña">
                </div>
                <div class="col-3 col-s-10">
                    <label for="identificación" class="lbl">Identificación</label>
                    <input type="text" name="txtIdentificacion" placeholder="ingresa identificacion">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Nombres</label>
                    <input type="text" name="txtNombres" placeholder="ingresa nombres">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Apellidos</label>
                    <input type="text" name="txtApellidos" placeholder="ingresa apellidos">
                </div>
                <div class="col-3 col-s-10">
                    <label for="direccion" class="lbl">Dirección</label>
                    <input type="text" name="txtDireccion" placeholder="Ingresa tu dirección">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Fecha de nacimiento</label>
                    <input type="date" name="txtFechaNacimiento" placeholder="">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Telefóno</label>
                    <input type="text" name="txtTelefono" placeholder="ingresa el telefono">
                </div>
                <input type="submit" value="Crear cuenta" name="accion">
                <a href="Inicio_Sesion.jsp">Ya tienes una cuenta</a><br>
                <a href="index.jsp">Volver</a>
            </form>
        </div>
    </body>
</html>
