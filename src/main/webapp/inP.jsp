<%-- 
    Document   : index
    Created on : 16/09/2020, 11:07:52 PM
    Author     : mauri
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>inicio</title>
    </head>
    <body>
    <center>
        <div >
            <h3>Usuarios</h3>
            <form action="ControladorLogin" method="POST">
                <input type="submit" value="Listar" name="accion" />
                <input type="submit" value="Nuevo" name="accion" />
            </form>
            <hr>
        </div>
        <div>
            <table border="1">
                <thead>
                    <tr>
                        <th>Correo</th>
                        <th>Contraseña</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Direccion</th>
                        <th>Telefono</th>
                        <th>Celular</th>                 
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="dato" items="${datos}" >
                        <tr>
                            <td>${dato.getCorreo()}</td>
                            <td>${dato.getContrasena()}</td>
                            <td>${dato.getNombres()}</td>
                            <td>${dato.getApellidos()}</td>
                            <td>${dato.getDireccion()}</td>
                            <td>${dato.getTeledono()}</td>
                            <td>${dato.getCelular()}</td>
                            <td>
                                <form action="ControladorLogin" method="POST">
                                    <input type="hidden" value="${dato.getId()}" name="id">
                                    <input type="submit" value="Editar" name="accion" />
                                    <input type="submit" value="Eliminar" name="accion" />
                                </form>
                            </td>
                            
                        </tr>
                    </c:forEach>


                </tbody>
            </table>

        </div>
    </center>
</body>
</html>
