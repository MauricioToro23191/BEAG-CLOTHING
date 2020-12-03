<%-- 
    Document   : Tablas
    Created on : 4/11/2020, 02:11:22 AM
    Author     : mauricio
--%>

<%@page import="Modelo.Categoria"%>
<%@page import="Modelo.TipoUsuario"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Municipio"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            BEAG | Administrador - Tablas 
        </title>
        <<!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="css/material-dashboard.css" rel="stylesheet" />

    </head>

    <body class="dark-edition">
        <div class="wrapper ">
            <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
                <!--
                  Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
          
                  Tip 2: you can also add an image using data-image tag
                -->
                <div class="logo"><a href="UsuarioRegistrado.jsp" class="simple-text logo-normal">
                        BEAG CLOTHING
                    </a></div>
                <div class="sidebar-wrapper">
                    <ul class="nav">
                        <li class="nav-item active ">
                            <a class="nav-link" href="./Tablas.jsp">
                                <i class="material-icons">grid_on</i>
                                <p>Otras Tablas</p>
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
                        <li class="nav-item ">
                            <a class="nav-link" href="Pedidos_Admin.jsp">
                                <i class="material-icons">content_paste</i>
                                <p>Pedidos</p>
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
                            <a class="navbar-brand" href="javascript:void(0)">Otras tablas</a>
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
                                        administrador
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
                                        <h4 class="card-title">Tipo de usuario</h4>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Id</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombre</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>


                                            <button type="submit" class="btn btn-primary pull-right">Guardar cambios</button>
                                            <div class="clearfix"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <button type="submit" class="btn btn-primary pull-right">eliminar</button>
                                <button type="submit" class="btn btn-primary pull-right">modificar</button>
                                <button type="submit" class="btn btn-primary pull-right">Agregar</button>
                            </div>
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header card-header-primary">
                                        <h4 class="card-title ">Tabla Tipos de usuarios</h4>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class=" text-primary">
                                                <th style="width: 15px;">
                                                    Selecionar
                                                </th>
                                                <th>
                                                    ID
                                                </th>
                                                <th>
                                                    Nombre
                                                </th>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        try {
                                                            UsuarioDAO dao = new UsuarioDAO();
                                                            List<TipoUsuario> LT = dao.listarTipo();
                                                            for (TipoUsuario t : LT) {
                                                                out.println("<tr><td><input type=\"" + "radio" + "\"></td><td>"
                                                                        + t.getId() + "</td>" + "<td>" + t.getNombre() + "</td></tr>");
                                                            }
                                                        } catch (Exception ex) {
                                                            System.out.print(ex.getMessage());
                                                        }
                                                    %>


                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header card-header-primary">
                                        <h4 class="card-title">Categorìa</h4>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Id</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombre</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>


                                            <button type="submit" class="btn btn-primary pull-right">Guardar cambios</button>
                                            <div class="clearfix"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-8 card-body">
                                <button type="submit" class="btn btn-primary pull-right">eliminar</button>
                                <button type="submit" class="btn btn-primary pull-right">modificar</button>
                                <button type="submit" class="btn btn-primary pull-right">Agregar</button>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title ">Tabla Categorìas</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class=" text-primary">
                                            <th style="width: 15px;">
                                                Selecionar
                                            </th>
                                            <th>
                                                ID
                                            </th>
                                            <th>
                                                Nombre
                                            </th>
                                            </thead>
                                            <tbody>
                                                <%
                                                    try {
                                                        UsuarioDAO dao = new UsuarioDAO();
                                                        List<Categoria> LC = dao.ListarCategorias();
                                                        for (Categoria c : LC) {
                                                            out.println("<tr><td><input type=\"" + "radio" + "\"></td><td>"
                                                                    + c.getId() + "</td><td>" + c.getNombre() + "</td></tr>");
                                                        } 
                                                    } catch (Exception ex) {
                                                        System.out.print(ex.getMessage());
                                                    }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">Estado Producto</h4>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Id</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Nombre</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>


                                        <button type="submit" class="btn btn-primary pull-right">Guardar cambios</button>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <button type="submit" class="btn btn-primary pull-right">eliminar</button>
                            <button type="submit" class="btn btn-primary pull-right">modificar</button>
                            <button type="submit" class="btn btn-primary pull-right">Agregar</button>
                        </div>
                        <div class="col-md-12" style=" margin-top: 100px; ">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title ">Tabla Estados</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class=" text-primary">
                                            <th style="width: 15px;">
                                                Selecionar
                                            </th>
                                            <th>
                                                ID
                                            </th>
                                            <th>
                                                Nombre
                                            </th>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <input type="radio">
                                                    </td>
                                                    <td>
                                                        1
                                                    </td>
                                                    <td>
                                                        Activo
                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>
                                                        <input type="radio">
                                                    </td>
                                                    <td>
                                                        2
                                                    </td>
                                                    <td>
                                                        Inactivo
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title">Municipio</h4>
                                </div>
                                <div class="card-body">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Id</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label class="bmd-label-floating">Nombre</label>
                                                    <input type="text" class="form-control">
                                                </div>
                                            </div>
                                        </div>


                                        <button type="submit" class="btn btn-primary pull-right">Guardar cambios</button>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <button type="submit" class="btn btn-primary pull-right">eliminar</button>
                            <button type="submit" class="btn btn-primary pull-right">modificar</button>
                            <button type="submit" class="btn btn-primary pull-right">Agregar</button>
                        </div>
                        <div class="col-md-12 " style=" margin-top: 100px;">
                            <div class="card">
                                <div class="card-header card-header-primary">
                                    <h4 class="card-title ">Tabla Municipio</h4>
                                </div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class=" text-primary">
                                            <th style="width: 15px;">
                                                Selecionar
                                            </th>
                                            <th>
                                                ID
                                            </th>
                                            <th>
                                                Nombre
                                            </th>
                                            </thead>
                                            <tbody>
                                                <%
                                                    try {
                                                        UsuarioDAO dao = new UsuarioDAO();
                                                        List<Municipio> LM = dao.listarMunicipios();
                                                        for (Municipio m : LM) {
                                                            out.println("<tr><td><input type=\"" + "radio" + "\"></td><td>"
                                                                    + m.getId() + "</td>" + "<td>" + m.getNombre() + "</td></tr>");
                                                        }
                                                    } catch (Exception ex) {
                                                        System.out.print(ex.getMessage());
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
        </div>
    </body>
</html>
