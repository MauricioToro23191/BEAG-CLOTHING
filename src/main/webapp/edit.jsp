<%-- 
    Document   : edit
    Created on : 17/09/2020, 02:37:02 PM
    Author     : mauri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <div>
            <h3> Editar usuario</h3>

        </div>
        <hr>
        <div>
            <form action="ControladorLogin" method="POST">
                
                ID:<br>
                <input type="text" name="txtCorreo" value="${us.getCorreo()}"><br>
                Contraseña<br>
                <input type="text" name="txtContrasena" value="${us.getContrasena()}"><br>
                Nombres: <br>
                <input type="text" name="txtNombres" value="${us.getNombres()}"><br>
                Apellidos<br>
                <input type="text" name="txtApellidos" value="${us.getApellidos()}"><br>
                Direccion<br>
                <input type="text" name="txtDireccion" value="${us.getDireccion()}"><br>
                Telefono:<br>
                <input type="text" name="txtTelefono" value="${us.getTelefono()}"><br>
                Celular:<br>
                <input type="text" name="txtCelular" value="${us.getCelular()}"><br>
                
                <input type="submit" value="Actualizar" name="accion"/>
            </form>
        </div>

    </center>
    </body>
</html>
