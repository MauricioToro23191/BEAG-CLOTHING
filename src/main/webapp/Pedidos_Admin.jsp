<%-- 
    Document   : Pedidos_Admin
    Created on : 4/11/2020, 01:58:28 AM
    Author     : mauricio
--%>

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
        <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
        <!-- CSS Files -->
        <link href="css/material-dashboard.css" rel="stylesheet" />
    </head>
    <body class="dark-edition">
        <div class="wrapper ">
            <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
                <div class="logo"><a href="UsuarioRegistrado.jsp" class="simple-text logo-normal">
                        BEAG CLOTHING
                    </a></div>
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
                                        <h4 class="card-title">Datos del Usuario</h4>
                                        <p class="card-category"></p>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Identificación</label>
                                                        <label class="form-control">2121546</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Correo electrónico</label>
                                                        <label class="form-control">juanita@mail.com</label>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombres</label>
                                                        <label class="form-control">Juanita</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Apellidos</label>
                                                        <label class="form-control">Perez</label>
                                                    </div>
                                                </div>


                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Dirección</label>
                                                        <label class="form-control">Calle 1 #1-1</label>
                                                    </div>
                                                </div>

                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Teléfono</label>
                                                        <label class="form-control">5421354</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Celular</label>
                                                        <label class="form-control">5421354123</label>
                                                    </div>
                                                </div>

                                            </div>


                                            <div class="clearfix"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="card card-plain">
                                    <div class="card-header card-header-primary">
                                        <h4 class="card-title mt-0"> Productos</h4>

                                    </div>
                                    <div class="card-body">
                                        <div class="table-responsive">
                                            <table class="table table-hover">
                                                <thead class="">
                                                <th>
                                                    ID
                                                </th>
                                                <th>
                                                    Foto
                                                </th>
                                                <th>
                                                    Nombre
                                                </th>
                                                <th>
                                                    cantidad
                                                </th>
                                                <th>
                                                    precio Total
                                                </th>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            1
                                                        </td>
                                                        <td> 
                                                            <img src="img/gorra.jpeg" width="150" height="180s" alt="gorra"/>
                                                        </td>
                                                        <td>
                                                            Niger
                                                        </td>
                                                        <td>
                                                            Oud-Turnhout
                                                        </td>
                                                        <td>
                                                            $36,738
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            2
                                                        </td>
                                                        <td> 
                                                            <img src="img/buso.jpeg" width="150" height="180s" alt="buso"/>
                                                        </td>
                                                        <td>
                                                            Curaçao
                                                        </td>
                                                        <td>
                                                            Sinaai-Waas
                                                        </td>
                                                        <td>
                                                            $23,789
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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
                                                ID
                                            </th>
                                            <th>
                                                Nombre
                                            </th>
                                            <th>
                                                Fecha del pedido
                                            </th>
                                            <th>
                                                Dirección
                                            </th>
                                            <th>
                                                Precio
                                            </th>
                                            <th>
                                                Estado
                                            </th>

                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        1
                                                    </td>
                                                    <td>
                                                        Dakota Rice
                                                    </td>
                                                    <td>
                                                        Niger
                                                    </td>
                                                    <td>
                                                        Oud-Turnhout
                                                    </td>
                                                    <td class="text-primary">
                                                        $36,738
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        2
                                                    </td>
                                                    <td>
                                                        Minerva Hooper
                                                    </td>
                                                    <td>
                                                        Curaçao
                                                    </td>
                                                    <td>
                                                        Sinaai-Waas
                                                    </td>
                                                    <td class="text-primary">
                                                        $23,789
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        3
                                                    </td>
                                                    <td>
                                                        Sage Rodriguez
                                                    </td>
                                                    <td>
                                                        Netherlands
                                                    </td>
                                                    <td>
                                                        Baileux
                                                    </td>
                                                    <td class="text-primary">
                                                        $56,142
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        4
                                                    </td>
                                                    <td>
                                                        Philip Chaney
                                                    </td>
                                                    <td>
                                                        Korea, South
                                                    </td>
                                                    <td>
                                                        Overland Park
                                                    </td>
                                                    <td class="text-primary">
                                                        $38,735
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        5
                                                    </td>
                                                    <td>
                                                        Doris Greene
                                                    </td>
                                                    <td>
                                                        Malawi
                                                    </td>
                                                    <td>
                                                        Feldkirchen in Kärnten
                                                    </td>
                                                    <td class="text-primary">
                                                        $63,542
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        6
                                                    </td>
                                                    <td>
                                                        Mason Porter
                                                    </td>
                                                    <td>
                                                        Chile
                                                    </td>
                                                    <td>
                                                        Gloucester
                                                    </td>
                                                    <td class="text-primary">
                                                        $78,615
                                                    </td>
                                                </tr>
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