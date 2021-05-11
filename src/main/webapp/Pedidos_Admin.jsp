<%-- 
    Document   : Pedidos_Admin
    Created on : 4/11/2020, 01:58:28 AM
    Author     : mauricio
--%>

<%@page import="Modelo.Municipio"%>
<%@page import="Modelo.DetalleProducto"%>
<%@page import="Modelo.Producto"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Modelo.Pedido"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CarritoDAO"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            BEAG | Administrador - Pedidos
        </title>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" href="css/modal.css">
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="css/material-dashboard.css" rel="stylesheet" />
        
    </head>
    <body>
        <div class="wrapper ">
            <div class="sidebar" data-color="green" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
                <div class="logo">
                    <a href="index.jsp" class="simple-text logo-normal">
                        BEAG CLOTHING
                    </a>
                </div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item active ">
                            <a class="nav-link" href="Pedidos_Admin.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Pedidos</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="./Usuarios.jsp">
                                <i class="material-icons">person</i>
                                <p>Usuarios</p>
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link" href="./Productos.jsp">
                                <i class="material-icons">style</i>
                                <p>Productos</p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="main-panel">
                <!-- Navbar -->
                <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
                    <div class="container-fluid">
                        <div class="navbar-wrapper">
                            <a class="navbar-brand" href="javascript:void(0)">Pedidos</a>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                            <span class="navbar-toggler-icon icon-bar"></span>
                        </button>
                        <div class="collapse navbar-collapse justify-content-end">
                            <form class="navbar-form">
                                <div class="input-group no-border">
                                    <input type="text" value="" class="form-control" placeholder="Buscar...">
                                    <button type="submit" class="btn btn-default btn-round btn-just-icon">
                                        <i class="material-icons">search</i>
                                        <div class="ripple-container"></div>
                                    </button>
                                </div>
                            </form>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="javascript:void(0)">
                                        <%
                                            Usuario u = (Usuario) session.getAttribute("usuario");
                                            out.println(u.getNombre1());
                                        %>
                                        <i class="material-icons">person</i>
                                        <p class="d-lg-none d-md-block">
                                            Account
                                        </p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header card-header-primary">
                                        <h4 class="card-title ">Pedidos</h4>
                                        <p class="card-category"> Se muestra los pedidos que se han realizado</p>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class=" text-primary">
                                                <th>

                                                </th>
                                                <th>
                                                    ID
                                                </th>
                                                <th>
                                                    Total
                                                </th>
                                                <th>
                                                    COSTO_ENVIO
                                                </th>
                                                <th>
                                                    FECHA_PEDIDO
                                                </th>
                                                <th>
                                                    ESTADO
                                                </th>
                                                <th>
                                                    ID_USUARIO
                                                </th>
                                                </thead>
                                                <tbody><%
                                                    CarritoDAO dao = new CarritoDAO();
                                                    UsuarioDAO Udao = new UsuarioDAO();
                                                    List<Pedido> lista = dao.ListarPedido();

                                                    for (Pedido p : lista) {
                                                        String html = "<tr><div class=\"lineaTabla\">"
                                                                + "<td><form action=\"ControladorPedido\" method=\"POST\">"
                                                                + "<input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\">"
                                                                + "<input type=\"submit\" name=\"accion\" value=\"Seleccionar\" style=\"border:none;\">" + "</form></td>"
                                                                + "<td>" + p.getId() + "</td>"
                                                                + "<td>" + p.getTotal() + "</td><td>" + p.getCostoEnvio() + "</td>"
                                                                + "<td>" + p.getFechaPedido().toString() + "</td>"
                                                                + "<td >" + dao.obtenerEstadoP(p.getEstado()) + "</td>"
                                                                + "<input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\">"
                                                                + "<td><center>" + Udao.ObtenerID(p.getU()).getNombre1() + "<a style=\"margin-left: 20px;\"  class=\"open-modal\" data-open=\"modal1\"><i class=\"material-icons\">remove_red_eye</i></a></center></td></div></tr>";
                                                        out.println(html);
                                                    }
                                                    %>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-primary">
                            <h4 class="card-title ">Productos</h4>
                            <p class="card-category">Lista de productos</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead class=" text-primary">
                                    <th>
                                        Foto
                                    </th>
                                    <th>
                                        Nombre
                                    </th>
                                    <th>
                                        Cantidad
                                    </th>
                                    <th>
                                        Precio
                                    </th>
                                    <th>
                                        color
                                    </th>
                                    <th>
                                        talla
                                    </th>
                                    </thead>
                                    <tbody>
                                        <%
                                            int id = Integer.valueOf(request.getParameter("id"));
                                            List<DetalleProducto> Detalles = dao.Listar_Detalle_producto(id);
                                            ProductoDAO PRODAO = new ProductoDAO();
                                            for (DetalleProducto d : Detalles) {
                                                Producto p = d.getProducto();
                                                String html = "<tr>"
                                                        + "<td>"
                                                        + "<img src=\"img/catalogo/" + p.getFoto() + "\" width=\"150\" height=\"180\" />"
                                                        + "</td>"
                                                        + "<td>" + p.getNombre() + "</td>"
                                                        + "<td>" + d.getCantidad() + "</td>"
                                                        + "<td>" + d.getPrecio() + "</td>"
                                                        + "<td>" + p.getColor() + "</td>"
                                                        + "<td>" + PRODAO.validarTalla(p.getId_talla()) + "</td>"
                                                        + "</tr>";
                                                out.println(html);
                                            }
                                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        const openEls = document.querySelectorAll("[data-open]");
        const closeEls = document.querySelectorAll("[data-close]");
        const isVisible = "is-visible";

        for (const el of openEls) {
            el.addEventListener("click", function () {
                const modalId = this.dataset.open;
                document.getElementById(modalId).classList.add(isVisible);
            });
        }

        for (const el of closeEls) {
            el.addEventListener("click", function () {
                this.parentElement.parentElement.parentElement.classList.remove(isVisible);
            });
        }

        document.addEventListener("click", e => {
            if (e.target == document.querySelector(".modal.is-visible")) {
                document.querySelector(".modal.is-visible").classList.remove(isVisible);
            }
        });

        document.addEventListener("keyup", e => {
            // if we press the ESC
            if (e.key == "Escape" && document.querySelector(".modal.is-visible")) {
                document.querySelector(".modal.is-visible").classList.remove(isVisible);
            }
        });
    </script>
</html>
