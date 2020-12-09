<%-- 
    Document   : Registro
    Created on : 4/11/2020, 02:10:14 PM
    Author     : mauricio
--%>

<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Municipio"%>
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
                    <input  type="email" id="correo" name="txtCorreo" placeholder="ingresa el correo" required>
                </div>
                <div class="col-3 col-s-10">

                    <label for="correo" class="lbl">Contraseña</label>
                    <input type="password" id="C" name="txtContrasena" placeholder="ingresa contraseña" >
                </div >
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Confirmar</label>
                    <input type="password" id="CC" name="txtConfContrasena" placeholder="confirme contraseña">
                </div>
                <div class="col-3 col-s-10">
                    <label for="identificación" class="lbl">Identificación</label>
                    <input type="text" id="identifi" name="txtIdentificacion" placeholder="ingresa identificacion">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Primer Nombre</label>
                    <input type="text" id="PN" name="txtNombre1" placeholder="ingresa nombre">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Segundo Nombre</label>
                    <input type="text" name="txtNombre2" placeholder="ingresa nombre">
                    
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Primer Apellido</label>
                    <input type="text" id="PA" name="txtApellido1" placeholder="ingresa apellido">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Segundo Apellido</label>
                    <input type="text" id="" name="txtApellido2" placeholder="ingresa apellido">
                </div>
                <div class="col-3 col-s-10">
                    <label for="direccion" class="lbl">Dirección</label>
                    <input type="text" id="direccion" name="txtDireccion" placeholder="Ingresa tu dirección">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Fecha de nacimiento</label>
                    <input type="date"  name="txtFechaNacimiento" >
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Telefóno</label>
                    <input type="text" id="telefono" name="txtTelefono" placeholder="ingresa el telefono">
                </div>
                <div class="col-3 col-s-10">
                    <label for="correo" class="lbl">Municipio</label>
                    <select name="CBMunicpio">
                        <%
                            try {
                                UsuarioDAO dao = new UsuarioDAO();
                                List<Municipio> LM = dao.listarMunicipios();
                                for (Municipio m : LM) {
                                    out.println("<option>" + m.getNombre() + "</option>");
                                }
                            } catch (Exception ex) {
                                System.out.print(ex.getMessage());
                            }
                            %>

                    </select>
                </div>
                <input type="submit" id="botonEnviar" value="Crear cuenta" name="accion">
                <a href="Inicio_Sesion.jsp">Ya tienes una cuenta</a><br>
                <a href="index.jsp">Volver</a>
            </form>
        </div>
                            <script defer src="js/Registro.js" type="text/javascript"></script>
    </body>
</html>
