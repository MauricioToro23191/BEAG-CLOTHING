<%-- 
    Document   : POPup
    Created on : 9/12/2020, 06:20:47 AM
    Author     : mauri
--%>

<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bulma.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/Estilo_carrito.css">
    </head>
    <body style="background-color: white;">
        <!-- Barra de navegación -->
        <header>

            <nav class="navbar">
                <header class="nabvar-mobile is-size-5-mobile">
                    <a class="navbar-mobile-link has-text-white" href="#" id="btn-mobile">MENÚ</a>
                    <a class="navbar-mobile-link has-text-white" href="index.jsp">BEAG CLOTHING</a>

                </header>
                <nav class="nav-menu --nav-dark-light" id="mySidenav">
                    <form class="form-group " action="#">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" placeholder="Buscar...">
                        </div>
                    </form>


                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="UsuarioRegistrado.jsp">BEAG CLOTHING</a>
                    <ul class="nav-menu-ul">

                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu active" href="UsuarioRegistrado.jsp">Inicio </a>
                        </li>
                        <li class="nav-menu-item" id="women">
                            <a href="Carrito.jsp" class="nav-menu-link link-submenu">Carrito</a>
                        </li>
                        
                            <%
                                try {
                                    Usuario u = (Usuario) session.getAttribute("usuario");
                                    if (u.getTipoUsuario() == 1) {
                                        out.println("<li class=\"nav-menu-item\"" + "><a href=\"" + "Usuarios.jsp\"" + " class=\"nav-menu-link\"" + ">Admin</a></li>");
                                    }
                                } catch (Exception ex) {

                                }
                            %>

                        <%
                            if (session.getAttribute("usuario") != null) {
                                Usuario u = (Usuario) session.getAttribute("usuario");
                                out.println("<li class=\"nav-menu-item\"><a href=\"UsuarioRegistrado.jsp\" class=\"nav-menu-link\">" + u.getNombre1() + "</a></li>"
                                        + "<li class=\"nav-menu-item\"><a href=\"Inicio_Sesion.jsp\" class=\"nav-menu-link\">Cerrar Sesion</a></li>");
                            } else {
                                out.println("<li class=\"nav-menu-item\"><a href=\"Inicio_Sesion.jsp\" class=\"nav-menu-link\">Iniciar Sesión</a></li>"
                                        + "<li class=\"nav-menu-item\"><a href=\"Registro.jsp\" class=\"nav-menu-link\">Registrar</a></li>");
                            }
                        %>
                    </ul>
                </nav>
            </nav>
        </header>
        <%
            Producto p = (Producto) request.getAttribute("prod");
            ProductoDAO dao= new ProductoDAO();
            String html = "<div class=\"modal\"><div class=\"contenedor\"><header style=\"text-align: center;\">Detalle del producto</header>"
                    + "<div class=\"contDetalle\"><div class=\"col-5 col-s-12\"><img src=\"img/catalogo/" + p.getFoto() + "\" class=\"col-12 imgDetalle\">"
                    + "</div><div class=\"col-5 col-s-12 detalle\"><h1>Detalle producto</h1><form action=\"ControladorCarrito\" method=\"post\"><div>Nombre del producto <span>" + p.getNombre() + "</span>"
                    + "</div><div>Cantidad <span><input name=\"cantidad\" style=\"width:80px;\" value=\"1\" type=\"number\"></span></div><div>Talla <span>" + dao.validarTalla(p.getId_talla()) + "</span></div><div>Color <span>" + p.getColor() + "</span>"
                    + "</div><div>categoría<span>" + dao.validarCategoria(p.getId_categoria())+ "</span></div><div>Tipo <span>" + dao.validarTipo(p.getId_tipo()) + "</span></div><div>"
                    + "precio <span>" + p.getPrecio() + "</span></div><div><input type=\"submit\" value=\"Agregar\" name=\"accion\">"
                    + "<input type=\"submit\" value=\"Cancelar\" name=\"accion\"><input type=\"hidden\" value=\""+p.getId()+"\" name=\"id\"></div></div></div></div></div></div></form>";
            out.println(html);

        %>
        
</body>
</html>
