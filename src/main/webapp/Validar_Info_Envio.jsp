<%-- 
    Document   : Validar_Info_Envio
    Created on : 4/11/2020, 09:08:17 PM
    Author     : mauricio
--%>

<%@page import="Modelo.Municipio"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEAG | Confirmar datos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.8.0/sweetalert2.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/bulma.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/Estilo_carrito.css">
    </head>
    <body>
        <!-- Barra de navegación -->
        <header>

            <nav class="navbar">
                <header class="nabvar-mobile is-size-5-mobile">
                    <a class="navbar-mobile-link has-text-white" href="#" id="btn-mobile">MENÚ</a>
                    <a class="navbar-mobile-link has-text-white" href="index.jsp">BEAG CLOTHING</a>
                </header>
                <nav class="nav-menu --nav-dark-light" id="mySidenav">

                    <div class="form-group-container">
                        <img src="img/LogoNav.png" width="103" height="38" alt="logo"/>
                    </div>
                    <form class="form-group " action="#">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" placeholder="Buscar...">
                        </div>
                    </form>
                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="index.jsp">BEAG CLOTHING</a>
                    <ul class="nav-menu-ul">

                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu " href="index.jsp">Inicio </a>
                        </li>
                        <li class="nav-menu-item active" id="women">
                            <a href="Carrito.jsp" class="nav-menu-link link-submenu">Carrito</a>
                        </li>
                        <%
                            try {
                                Usuario u = (Usuario) session.getAttribute("usuario");
                                if (u.getTipoUsuario() == 1) {
                                    out.println("<li class=\"nav-menu-item\"" + "><a href=\"" + "Usuarios.jsp\"" + " class=\"nav-menu-link\"" + ">Administrador</a></li>");
                                }
                            } catch (Exception ex) {

                            }
                        %>

                        <li class="nav-menu-item"><a href="index.jsp" class="nav-menu-link"> 
                                <%
                                    try {
                                        Usuario u = (Usuario) session.getAttribute("usuario");
                                        out.println(u.getNombre1());
                                    } catch (Exception ex) {

                                    }
                                %>

                            </a></li>
                        <li class="nav-menu-item"><a href="Inicio_Sesion.jsp" class="nav-menu-link">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </nav>
        </header>
        <section>
            <div style="padding-top: 50px;">
                <%
                    String Nombre2 = "";
                    String Apellido2 = "";
                    String Celular = "";
                    Usuario u = (Usuario) session.getAttribute("usuario");
                    try {

                        if (u.getNombre2() != null) {
                            Nombre2 = u.getNombre2();
                        }

                        if (u.getApellido2() != null) {
                            Apellido2 = u.getApellido2();
                        }

                        if (u.getCelular() != null) {
                            Celular = u.getCelular();
                        }

                    } catch (Exception ex) {
                    }


                %>
                <centrer>
                    <div class="total" style="">
                        <h1>Confirmar datos de envio</h1>
                        <div style="width: 80%; margin: auto; ">

                            <form action="ControladorPedido" method="post">
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Correo Electrónico</label>
                                    <input type="text" name="correo" value="<%=u.getCorreo()%>">
                                </div>
                                <div class="col-3 col-s-10">

                                    <label for="correo" class="lbl">Identificación</label>
                                    <input type="text" name="identif"value="<%=u.getIdentificacion()%>">
                                </div >
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Dirección</label>
                                    <input type="text" name="direc" value="<%=u.getDireccion()%>">
                                </div>
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Primer Nombre</label>
                                    <input type="text" name="nombre1" value="<%=u.getNombre1()%>">
                                </div>
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Segundo Nombre</label>
                                    <input type="text" name="nombre2" value="<%=Nombre2%>">
                                </div>
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Primer Apellido</label>
                                    <input type="text" name="apellido1"name="apellido" value="<%=u.getApellido1()%>">
                                </div>
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Segundo Apellido</label>
                                    <input type="text" name="apellido2" value="<%=Apellido2%>">
                                </div>
                                <div class="col-3 col-s-10" >
                                    <label for="correo" class="lbl">Telefóno</label>
                                    <input type="text" name="telefono" value="<%=u.getTelefono()%>">
                                </div>
                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Celular</label>
                                    <input type="text" name="celular" value="<%= Celular%>">
                                </div>  

                                <div class="col-3 col-s-10">
                                    <label for="correo" class="lbl">Municipio</label>
                                    <select name="CBMunicpio" >
                                        <%
                                            try {
                                                UsuarioDAO dao = new UsuarioDAO();
                                                List<Municipio> LM = dao.listarMunicipios();
                                                Municipio idM = dao.obtenerMunicipioID(u.getMunicipio());
                                                out.println("<option>" + idM.getNombre() + "</option>");
                                                for (Municipio m : LM) {
                                                    if (idM.getId() != m.getId()) {
                                                        out.println("<option>" + m.getNombre() + "</option>");
                                                    }
                                                }
                                            } catch (Exception ex) {
                                                System.out.print(ex.getMessage());
                                            }
                                        %>
                                    </select>
                                </div>  
                                <div class="col-5 col-s-10">
                                    <input type="hidden" value="<%=u.getId()%>" name="id">
                                    <div class="col-6 col-s-10">
                                        <input type="submit" Style="margin-right:  10px " class="botonActualizar " value="Finalizar pedido" name="accion">
                                    </div>
                                    <div class="col-6 col-s-10">
                                        <input type="submit"  Style="margin-left:  53px" class="botonCaja"  value="Cancelar" name="accion">
                                    </div>
                                </div>  
                            </form>
                        </div>
                    </div>
                </centrer>
            </div>
        </section>
        <footer class="col-12">
            <h1>Pie de pagina</h1>
            <div>
                <span>inicio</span>
                <span>carrito</span>
                <span>historial</span>
                <span>notificación</span>    
                <span>contactenos</span>
            </div>
        </footer>
    </body>
</html>