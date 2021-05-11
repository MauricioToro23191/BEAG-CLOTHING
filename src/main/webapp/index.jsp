<%-- 
    Document   : index
    Created on : 4/11/2020, 02:14:46 AM
    Author     : mauricio
--%>

<%@page import="Modelo.Categoria"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="css/bulma.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/Estilo_carrito.css">
        <title>BEAG Clothing</title>
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
                    <form class="form-group " action="ControladorProducto">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" name="Buscar" placeholder="Buscar...">
                        </div>
                    </form>
                    <div class="form-group-container">
                        <img src="img/LogoNav.png" width="103" height="38" alt="logo"/>
                    </div>

                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="index.jsp">BEAG CLOTHING</a>
                    <ul class="nav-menu-ul">

                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu active" href="index.jsp">Inicio </a>
                        </li>
                        <%
                            try {
                                Usuario u = (Usuario) session.getAttribute("usuario");
                                if (u.getTipoUsuario() == 1) {
                                    out.println("<li class=\"nav-menu-item\"" + "><a href=\"" + "Usuarios.jsp\"" + " class=\"nav-menu-link\"" + ">Administrador</a></li>");
                                }
                            } catch (Exception ex) {

                            }
                            if (session.getAttribute("usuario") != null) {
                                Usuario u = (Usuario) session.getAttribute("usuario");

                                out.println(""
                                        + "<li class=\"nav-menu-item\" id=\"women\"><a href=\"Carrito.jsp\" class=\"nav-menu-link link-submenu\">Carrito</a></li>"
                                        + "<li class=\"nav-menu-item\"><a  href=\"index.jsp\"  class=\"nav-menu-link\">" + u.getNombre1() + "</a></li>"
                                        + "<form action=\"ControladorLogin\" method=\"post\">"
                                        + "<input type=\"submit\" onclick=\"btn2()\" value=\"Cerrar Sesion\" name=\"accion\" class=\"nav-menu-link nav-menu-item \" style=\"border:none\"></form>");
                            } else {
                                out.println("<li class=\"nav-menu-item\"><a href=\"Inicio_Sesion.jsp\" class=\"nav-menu-link\">Iniciar Sesión</a></li>"
                                        + "<li class=\"nav-menu-item\"><a href=\"Registro.jsp\" class=\"nav-menu-link\">Registrar</a></li>");
                            }
                        %>
                    </ul>
                </nav>
            </nav>
        </header>

        <!-- Banner -->
        <div class="banner banner-cover">
            <div class="banner-container ">
            </div>
        </div>

        <!-- Barra de navegacion secundaria -->
        <div class="container category_list" style="margin: auto;margin-top: 30px; border: gray solid 1px; width: 400px; padding-left: 35px; padding: 30px;" >
            <%
                ProductoDAO dao = new ProductoDAO();
                String Html = "";
                List<Categoria> listaCat = dao.listarCategoria();
                for (Categoria c : listaCat) {
                    Html += "<span><a href=\"index.jsp\" class=\"nav-menu-link\" style=\"display:inline \">" + c.getNombre() + "</a><//span>";
                }
                out.print(Html + "");
            %>
        </div>
        <!-- Sección de fotografías -->
        <div class="container" style="margin:auto;margin-top:50px;  ">
            <div class="columns is-multiline">
                <section class="products-list">
                    <%                        List<Producto> lista = dao.listar();
                        for (Producto p : lista) {
                            String html = "<div class=\"product-item btn-abrir-popup\"  category=\"Hombres\" id=\"btn-abrir-popup\">"
                                    + "<form action=\"ControladorCarrito\" method=\"post\">"
                                    + "<label for=\"accion\" class=\"lbl\">"
                                    + "<img src=\"img/catalogo/" + p.getFoto() + "\"><a>" + p.getNombre() + ":  " + p.getDescripcion() + "</a></label>"
                                    + "<input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\">";
                            if (session.getAttribute("usuario") != null) {
                                html += "<input type=\"submit\" style=\"border:none; margin-left:55px;background-color:green; color:white;border-bottom-left-radius:0.1px;\" class=\"botn\" value=\"Agregar al Carrito\" name=\"accion\">";
                            }
                            out.println(html + "</form></div>");
                        }
                    %>    
                </section>
            </div>
        </div>
    </body>
</html>