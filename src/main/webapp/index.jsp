<%-- 
    Document   : index
    Created on : 4/11/2020, 01:54:49 AM
    Author     : mauricio
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                    <form class="form-group " action="#">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" placeholder="Buscar...">
                        </div>
                    </form>
                    <div class="form-group-container">
                        <img src="img/LogoNav.png" width="103" height="38" alt="logo"/>
                    </div>

                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="index.jsp">BEAG CLOTHING</a>
                    <ul class="nav-menu-ul">

                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu active" href="#">Inicio</a>
                        </li>
                        <li class="nav-menu-item"><a href="Inicio_Sesion.jsp" class="nav-menu-link">Iniciar Sesión</a></li>
                        <li class="nav-menu-item"><a href="Registro.jsp" class="nav-menu-link">Registrar</a></li>
                        
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
        <div class="container">
            <nav class="nav">
                <p class="nav-item active has-text-weight-semibold" href="#">Categorías</p>
                <a class="nav-item has-text-weight-semibold" href="#">Hombres</a>
                <a class="nav-item has-text-weight-semibold" href="#">Mujeres</a>
                <a class="nav-item has-text-weight-semibold" href="#">Niños</a>
                <a class="nav-item has-text-weight-semibold" href="#">Niñas</a>
            </nav>
        </div>
        <<!-- Sección de fotografías -->
        <div class="container">
            <label for="btn-modal" class="lbl-modal">
                <div class="columns is-multiline">
                    <section class="products-list">
                        <%                          
                            ProductoDAO dao = new ProductoDAO();
                            List<Producto> lista = dao.listar();
                            for (Producto p : lista) {
                                String html = "<div class=\"product-item \"  category=\"Hombres\" id=\"btn-abrir-popup\">"
                                        + "<img src=\"img/catalogo/" + p.getFoto() + "\"><a href=\"#\">" + p.getNombre() + ":  " + p.getDescripcion() + "</a></div>";
                                out.println(html);
                            }
                        %>

                    </section>
                </div>
            </label>
        </div>
    </div>
    <script src="js/main.js"></script>
</body>
</html>
