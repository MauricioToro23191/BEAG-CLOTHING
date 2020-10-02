<%-- 
    Document   : add
    Created on : 17/09/2020, 03:12:32 AM
    Author     : mauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Usiario</title>
    </head>
    <body>
    <center>
        <div>
            <h3> Agregar Usuario</h3>

        </div>
        <hr>
        <div>
            <form action="ControladorLogin" method="POST">             
                Correo:<br>
                <input type="text" name="txtCorreo"><br>
                Contraseña<br>
                <input type="text" name="txtContrasena"><br>
                Nombres: <br>
                <input type="text" name="txtNombres"><br>
                Apellidos<br>
                <input type="text" name="txtApellidos"><br>
                Direccion<br>
                <input type="text" name="txtDireccion"><br>
                Telefono:<br>
                <input type="text" name="txtTelefono"><br>
                Celular:<br>
                <input type="text" name="txtCelular"><br>
                
                
                <input type="submit" value="Guardar" name="accion"/>
            </form>
        </div>

    </center>



</body>
</html>
