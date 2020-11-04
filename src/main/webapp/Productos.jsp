<%-- 
    Document   : Productos
    Created on : 4/11/2020, 02:03:31 PM
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
                                        administrador
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
                                        <form>
                                            <div class="row">

                                                <div class="col-md-4">
                                                    <div >
                                                        <label class="bmd-label-floating">Agregar imagen del producto</label>
                                                    </div>
                                                    <input type="file" class="form-control" name="adjunto" accept=".jpeg,.jpg,.png"  />

                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Nombre</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Talla</label>
                                                        <input type="password" class="form-control">
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Color</label>
                                                        <input type="text" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Cantidad</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Precio</label>
                                                        <input type="number" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">categoría</label>
                                                        <select class="form-control"">
                                                            <option style="color: #000;">Hombre </option>  
                                                            <option style=" color: #000;">Mujer</option> 
                                                            <option style=" color: #000;">Niño</option>
                                                            <option style=" color: #000;">Niña</option> 
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="bmd-label-floating">Estado</label>
                                                        <select class="form-control"">
                                                            <option style="color: #000;">activo </option>  
                                                            <option style=" color: #000;">inactivo</option> 
                                                            <option style=" color: #000;">Niña</option> 
                                                        </select>
                                                    </div>
                                                </div>
                                                <button type="submit" class="btn btn-primary pull-right" style=" height: 40px; float:">Guardar cambios</button>

                                            </div>
                                        </form>
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
                                            Seleccionar
                                        </th>
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

                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <input type="radio">
                                                </td>

                                                <td> 
                                                    <img src="img/gorra.jpeg" width="150" height="180s" alt="gorra"/>
                                                </td>

                                                <td>
                                                    1
                                                </td>
                                                <td>

                                                    Gorra
                                                </td>
                                                <td>
                                                    Blanca
                                                </td>
                                                <td>
                                                    100
                                                </td>
                                                <td class="text-primary">
                                                    $36,738
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style="color: #000;">Hombre </option>  
                                                        <option style=" color: #000;">Mujer</option> 
                                                        <option style=" color: #000;">Niño</option>
                                                        <option style=" color: #000;">Niña</option> 
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control">
                                                        <option style="color: #000;">activo </option>  
                                                        <option style=" color: #000;">inactivo</option> 
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="radio">
                                                </td>

                                                <td> 
                                                    <img src="img/buso.jpeg" width="150" height="180s" alt="gorra"/>
                                                </td>

                                                <td>
                                                    2
                                                </td>
                                                <td>
                                                    Buso
                                                </td>
                                                <td>
                                                    Naranja
                                                </td>
                                                <td>
                                                    200
                                                </td>
                                                <td class="text-primary">
                                                    $66,738
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style=" color: #000;">Mujer</option>
                                                        <option style=" color: #000;">Niña</option> 
                                                        <option style=" color: #000;">Niño</option>
                                                        <option style="color: #000;">Hombre </option> 

                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style="color: #000;">activo </option>  
                                                        <option style=" color: #000;">inactivo</option> 
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="radio">
                                                </td>

                                                <td> 
                                                    <img src="img/buso3.jpg" width="150" height="180s" alt="gorra"/>
                                                </td>

                                                <td>
                                                    3
                                                </td>
                                                <td>
                                                    buso    
                                                </td>
                                                <td>
                                                    marron
                                                </td>
                                                <td>
                                                    50
                                                </td>
                                                <td class="text-primary">
                                                    $59,738
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style="color: #000;">Hombre </option>  
                                                        <option style=" color: #000;">Mujer</option> 
                                                        <option style=" color: #000;">Niño</option>
                                                        <option style=" color: #000;">Niña</option> 
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style="color: #000;">activo </option>  
                                                        <option style=" color: #000;">inactivo</option> 
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="radio">
                                                </td>

                                                <td> 
                                                    <img src="img/busoG.jpg" width="150" height="180s" alt="gorra"/>
                                                </td>

                                                <td>
                                                    4
                                                </td>
                                                <td>
                                                    buso
                                                </td>
                                                <td>
                                                    Negro
                                                </td>
                                                <td>
                                                    600
                                                </td>
                                                <td class="text-primary">
                                                    $86,738
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style=" color: #000;">Mujer</option> 
                                                        <option style="color: #000;">Hombre </option>  
                                                        <option style=" color: #000;">Niño</option>
                                                        <option style=" color: #000;">Niña</option> 
                                                    </select>
                                                </td>
                                                <td>
                                                    <select class="form-control"">
                                                        <option style="color: #000;">activo </option>  
                                                        <option style=" color: #000;">inactivo</option> 
                                                    </select>
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
    </body>
</html>
