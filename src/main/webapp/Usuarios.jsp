<%-- 
    Document   : Usuarios
    Created on : 4/11/2020, 02:12:52 AM
    Author     : mauricio
--%>

<%@page import="java.util.List"%>
<%@page import="Modelo.Usuario"%>
<%@page import="ModeloDAO.UsuarioDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/png" href="../assets/img/favicon.png">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>
            BEAG | Administrador - Usuarios 
        </title>
        <!--     Fonts and icons     -->
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="css/material-dashboard.css" rel="stylesheet" />

    </head>

    <body>
        <div class="wrapper ">
            <div class="sidebar" data-color="azure" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
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

                        <li class="nav-item ">
                            <a class="nav-link" href="./Tablas.jsp">
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
                            <a class="navbar-brand" href="javascript:void(0)">Usuarios</a>
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
                                        <h4 class="card-title">Editar perfil</h4>
                                        <p class="card-category">completa tu perfil</p>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Identificación</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Correo electrónico</label>
                                                        <input type="email" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Contraseña</label>
                                                        <input type="password" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombres</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Apellidos</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Confirmar Contraseña</label>
                                                        <input type="password" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Dirección</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Fecha de nacimiento</label>
                                                        <input type="date" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Teléfono</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Celular</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Tipo de usuario</label>

                                                        <select class="form-control"">
                                                            <option style="color: #000;">Cliente </option>  
                                                            <option style=" color: #000;">Administrador </option>   
                                                        </select>
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
                                        <h4 class="card-title ">Usuarios</h4>
                                        <p class="card-category"> Informacion de usuarios</p>
                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table">
                                                <thead class=" text-primary">
                                                <th>
                                                    Seleccionar
                                                </th>
                                                <th>
                                                    Identificación
                                                </th>
                                                <th>
                                                    Nombres
                                                </th>
                                                <th>
                                                    Apellidos
                                                </th>
                                                <th>
                                                    Correo
                                                </th>
                                                <th>
                                                    Teléfono
                                                </th>
                                                <th>
                                                    Celular
                                                </th>
                                                <th>
                                                    Dirección
                                                </th>
                                                <th>
                                                    Tipo de usuario
                                                </th>
                                                </thead>
                                                <tbody>
                                                    <%
                                                        List<Usuario> LU = new UsuarioDAO().listar();
                                                        for (Usuario user : LU) {
                                                            String datos
                                                                    = "<tr><td><input name=\"" + user.getId() + "\" type=\"" + "button" + "\" value=\"" + "editar" + "\"></td>"
                                                                    + "<td>" + user.getIdentificacion() + "</td>"
                                                                    + "<td>" + user.getNombre1();
                                                            if (user.getNombre2() != null) {
                                                                datos = datos + " " + user.getNombre2();
                                                            }
                                                            datos += "</td>"
                                                                    + "<td>" + user.getApellido1();
                                                            if (user.getApellido2() != null) {
                                                                datos += " " + user.getApellido2();
                                                            }
                                                            datos += "</td>"
                                                                    + "<td>" + user.getCorreo() + "</td>"
                                                                    + "<td>" + user.getTelefono() + "</td>"
                                                                    + "<td>";
                                                            if (user.getCelular() != null) {
                                                                datos += user.getCelular();
                                                            }
                                                            datos += " </td>"
                                                                    + "<td>" + user.getDireccion() + "</td>";
                                                            if (user.getTipoUsuario() == 1) {
                                                                datos += "<td><select class=\"form-control\">"
                                                                        + "<option style=\"\"color: #000;\"\"> Administrador </option>"
                                                                        + "<option style=\"color: #000;\"\"> Cliente </option> "
                                                                        + "</select>";
                                                            } else if (user.getTipoUsuario() == 2) {
                                                                datos += "<td><select class=\"form-control\">"
                                                                        + "<option style=\"\"color: #000;\"\"> Cliente </option>"
                                                                        + "<option style=\"color: #000;\"\"> Administrador  </option> "
                                                                        + "</select>";
                                                            }

                                                            out.println(datos + "</td><tr>");

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
        </div>
    </body>
</html>

