<%-- 
    Document   : Productos
    Created on : 4/11/2020, 02:03:31 PM
    Author     : mauricio
--%>

<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Usuario"%>
<%@page import="Modelo.Talla"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            BEAG | Administrador - Productos
        </title>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="css/material-dashboard.css" rel="stylesheet" />

    </head>

    <body class="dark-edition">
        <div class="wrapper ">
            <div class="sidebar" data-color="purple" data-background-color="black" data-image="img/fondo1.jpg">
                <!--
                  Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
          
                  Tip 2: you can also add an image using data-image tag
                -->
                <div class="logo"><a href="UsuarioRegistrado.jsp" class="simple-text logo-normal">
                        BEAG CLOTHING
                    </a></div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item active">
                            <a class="nav-link" href="./Productos.jsp">
                                <i class="material-icons">style</i>
                                <p>Productos</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./Usuarios.jsp">
                                <i class="material-icons">person</i>
                                <p>Usuarios</p>
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link" href="Pedidos_Admin.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Pedidos</p>
                            </a>
                        </li>

                        <li class="nav-item ">
                            <a class="nav-link" href="Tablas.jsp">
                                <i class="material-icons">grid_on</i>
                                <p>Otras Tablas</p>
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
                            <a class="navbar-brand" href="javascript:void(0)">Productos</a>
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
                                        <h4 class="card-title">Editar Producto</h4>
                                    </div>
                                    <div class="card-body">
                                        <form  name="formulario" action="ControladorProducto" method="post" >

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div>
                                                        <label class="bmd-label-floating">Agregar imagen del producto</label>
                                                    </div>
                                                    <input type="file" class="form-control" id="archivo" value="${prod.getFoto()}" name="file" accept=".jpeg,.jpg,.png"  />
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombre</label>
                                                        <input type="text" name="txtNombre" value="${prod.getNombre()}" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Color</label>
                                                        <input type="text" name="txtColor" value="${prod.getColor()}" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Cantidad</label>
                                                        <input type="text" name="txtCantidad" value="${prod.getCantidad()}" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Precio</label>
                                                        <input type="text" name="txtPrecio" value="${prod.getPrecio()}" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group" >
                                                        <label class="bmd-label-floating">categoría</label>
                                                        <select class="form-control" name="SelectCategoria" >
                                                            <option style="color: #000;">Hombre </option>  
                                                            <option style="color: #000;">Mujer</option> 
                                                            <option style="color: #000;">Niño</option>
                                                            <option style="color: #000;">Niña</option> 
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Estado</label>
                                                        <select class="form-control" name="SelectEstado" value="">
                                                            <option style="color: #000;">1</option>  
                                                            <option style=" color: #000;">2</option> 
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Tipo</label>
                                                        <select class="form-control" name="SelectTipo" value="">
                                                            <option style="color: #000;">Camiseta </option>  
                                                            <option style=" color: #000;">Buso</option> 
                                                            <option style=" color: #000;">Sudadera</option>
                                                            <option style=" color: #000;">Gorra</option> 
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Talla</label>
                                                        <select name="SelectTalla" class="form-control">
                                                            <option style="color: #000;">XXS</option>  
                                                            <option style="color: #000;">XS</option>  
                                                            <option style="color: #000;">S</option> 
                                                            <option style="color: #000;">M</option>
                                                            <option style="color: #000;">L</option>  
                                                            <option style="color: #000;">XL</option> 
                                                            <option style="color: #000;">XXL</option>
                                                            <option style="color: #000;">XXXL</option>
                                                            <option style="color: #000;">XXXXL</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Descripción</label>
                                                        <input type="text" name="txtDescripcion" value="${prod.getDescripcion()}" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden" name="id" value="${prod.getId()}">       
                                            <button type="submit" class="btn btn-primary pull-right"  value="${value}CrearProducto" name="accion" style=" height: 40px; float:">Guardar cambios</button>
                                        </form>
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
                                        Id
                                    </th>
                                    <th>
                                        Nombre
                                    </th>
                                    <th>
                                        Color
                                    </th>
                                    <th>
                                        Cantidad
                                    </th>
                                    <th>
                                        Precio
                                    </th>
                                    <th>
                                        Categoria
                                    </th>
                                    <th>
                                        Estado
                                    </th>
                                    <th>
                                        Acciones
                                    </th>

                                    </thead>
                                    <tbody>
                                        <%
                                            ProductoDAO dao = new ProductoDAO();
                                            List<Producto> LP = dao.listar();
                                            String path = "img/catalogo/";
                                            for (Producto p : LP) {

                                                String html
                                                        = "<tr>"
                                                        + "<td>"
                                                        + "<img src=\"" + path + p.getFoto() + "\" width=\"150\" height=\"180\" />"
                                                        + "</td>"
                                                        + "<td>" + p.getId() + "</td>"
                                                        + "<td>" + p.getNombre() + "</td>"
                                                        + "<td>" + p.getColor() + "</td>"
                                                        + "<td>" + p.getCantidad() + "</td>"
                                                        + "<td class=\"text-primary\">" + p.getPrecio() + "</td>"
                                                        + "<td>" + p.getId_categoria() + "</td>"
                                                        + "<td>" + p.getEstado() + "</td>"
                                                        + "<td><form action=\"ControladorProducto\" method=\"POST\">"
                                                        + "<input type=\"hidden\" value=\"" + p.getId() + "\" name=\"id\">"
                                                        + "<input type=\"submit\" value=\"Editar\" name=\"accion\"/>"
                                                        + "<input type=\"submit\" value=\"Eliminar\" name=\"accion\" />"
                                                        + "</form></td>"
                                                        + "</tr>";
                                                out.println(html);

                                            }%>

                                    </tbody>



                                </table>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
