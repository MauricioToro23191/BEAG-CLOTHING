<%-- 
    Document   : Validar_Info_Envio
    Created on : 4/11/2020, 09:08:17 PM
    Author     : mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEAG | Confirmar datos</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
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
                    <form class="form-group " action="#">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" placeholder="Buscar...">
                        </div>
                    </form>
                    <div class="form-group-container">
                        <img src="img/LogoNav.png" width="103" height="38" alt="logo"/>
                    </div>

                    <a class="is-hidden-mobile brand is-uppercase has-text-weight-bold has-text-dark" href="UsuarioRegistrado.jsp">BEAG CLOTHING</a>
                    <ul class="nav-menu-ul">

                        <li class="nav-menu-item" id="men">
                            <a class="nav-menu-link link-submenu active" href="UsuarioRegistrado.jsp">Inicio </a>
                        </li>
                        <li class="nav-menu-item" id="women">
                            <a href="Carrito.jsp" class="nav-menu-link link-submenu">Carrito</a>
                        </li>
                        <li class="nav-menu-item"><a href="UsuarioRegistrado.jsp" class="nav-menu-link ">Hombre</a></li>
                        <li class="nav-menu-item"><a href="UsuarioRegistrado.jsp" class="nav-menu-link">Mujer</a></li>
                        <li class="nav-menu-item"><a href="Usuarios.jsp" class="nav-menu-link">Administrador</a></li>
                        <li class="nav-menu-item"><a href="UsuarioRegistrado.jsp" class="nav-menu-link">Juan Andres</a></li>
                        <li class="nav-menu-item"><a href="Inicio_Sesion.jsp" class="nav-menu-link">Cerrar Sesión</a></li>

                    </ul>
                </nav>
            </nav>
        </header>
        <section>
            <div style="padding-top: 50px;">
                <div class="validar_datos total ">
                    <h1>Confirmar datos de envio</h1>
                    <form>
                        <div class="col-3 col-s-10">
                            <label for="correo" class="lbl">Correo Electrónico</label>
                            <input type="text" placeholder="ingresa el correo">
                        </div>
                        <div class="col-3 col-s-10">

                            <label for="correo" class="lbl">Identificación</label>
                            <input type="password" placeholder="contraseña">
                        </div >
                        <div class="col-3 col-s-10">
                            <label for="correo" class="lbl">Dirección</label>
                            <input type="password" placeholder="confirme contraseña">
                        </div>
                        <div class="col-3 col-s-10">
                            <label for="correo" class="lbl">Nombres</label>
                            <input type="text" placeholder="ingresa nombres">
                        </div>
                        <div class="col-3 col-s-10">
                            <label for="correo" class="lbl">Apellidos</label>
                            <input type="text" placeholder="ingresa apellidos">
                        </div>
                        <div class="col-3 col-s-10">
                            <label for="correo" class="lbl">Fecha de nacimineto</label>
                            <input type="text" placeholder="ingresa tu edad ">
                        </div >
                        <div class="col-3 col-s-10" >
                            <label for="correo" class="lbl">Telefóno</label>
                            <input type="text" placeholder="ingresa el telefóno">
                        </div>
                        <div class="col-3 col-s-10">
                            <label for="correo" class="lbl">Celular</label>
                            <input type="text" placeholder="ingresa el celular ">
                        </div>  
                        <input type="submit" value="Guardar">
                        
                    </form>

                </div>
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