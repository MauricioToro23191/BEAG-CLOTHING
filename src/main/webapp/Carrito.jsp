<%-- 
    Document   : Carrito
    Created on : 4/11/2020, 01:49:34 AM
    Author     : mauricio
--%>

<%@page import="Modelo.Producto"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BEAG | carrito</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="css/bulma.min.css">
        <link rel="stylesheet" href="css/styles.css">
        <link rel="stylesheet" href="css/Estilo_carrito.css">
        <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon"> 
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
                            <a class="nav-menu-link link-submenu " href="UsuarioRegistrado.jsp">Inicio </a>
                        </li>
                        <li class="nav-menu-item active" id="women">
                            <a href="Carrito.jsp" class="nav-menu-link link-submenu">Carrito</a>
                        </li>
                                                    <%
                                try {
                                    Usuario u = (Usuario) session.getAttribute("usuario");
                                    if (u.getTipoUsuario() == 1) {
                                        out.println("<li class=\"nav-menu-item\"" + "><a href=\"" + "Usuarios.jsp\"" + " class=\"nav-menu-link\"" + ">Administrador</a></li>");
                                    }
                                } catch (Exception ex) {

                                }
                            %>

                        <li class="nav-menu-item"><a href="UsuarioRegistrado.jsp" class="nav-menu-link"> 
                                <%
                                    try {
                                        Usuario u = (Usuario) session.getAttribute("usuario");
                                        out.println(u.getNombre1());
                                    } catch (Exception ex) {

                                    }
                                %>

                            </a></li>
                        <li class="nav-menu-item"><a href="Inicio_Sesion.jsp" class="nav-menu-link">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </nav>
        </header>
        <section>
            <div style="padding-top: 100px">
                <div class="col-8 col-s-12 ">
                    <h1 >Carrito</h1>
                    <hr>
                    <table class="table table-hover ">
                        <thead>
                            <tr>
                                <th scope="col" style="color: white">Producto</th>
                                <th scope="col" style="color: white">Nombre</th>
                                <th scope="col" style="color: white">Precio</th>
                                <th scope="col" style="color: white">Cantidad</th>
                                <th scope="col" style="color: white">Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <input class="eliminar"type="submit" value="X" />
                                    <img style="width: 100px" src="img/catalogo/Blanca.jpeg"/>

                                </td>
                                <td style="vertical-align:middle;">Camiseta blanca</td>
                                <td style="vertical-align:middle;">$20.000</td>
                                <td style="vertical-align:middle;"><input type="submit" value="+" /> 2 <input type="submit" value="-" /></td>
                                <td style="vertical-align:middle;">$40.000</td>
                            </tr>
                            <tr>

                                <td>
                                    <input class="eliminar"type="submit" value="X" />
                                    <img style="width: 100px" src="img/catalogo/NegraMangasVerdes.jpeg"/>

                                </td>
                                <td style="vertical-align:middle;"> Camiseta negra con mangas verdes</td>
                                <td style="vertical-align:middle;">$20.000</td>
                                <td style="vertical-align:middle;"><input type="submit" value="+" /> 2 <input type="submit" value="-" /></td>
                                <td style="vertical-align:middle;">$40.000</td>
                            </tr>
                            <tr>

                                <td>
                                    <input class="eliminar" type="submit" value="X" />
                                    <img style="width: 100px" src="img/catalogo/GorraGris.jpeg"/>

                                </td>
                                <td style="vertical-align:middle;"> Gorra blanca</td>
                                <td style="vertical-align:middle;">$20.000</td>
                                <td style="vertical-align:middle;"><input type="submit" value="+" /> 2 <input type="submit" value="-" /></td>
                                <td style="vertical-align:middle;">$40.000</td>
                            </tr>
                            <tr>

                                <td>
                                    <input class="eliminar" type="submit" value="X" />
                                    <img style="width: 100px" src="img/catalogo/VinotintoMangaBlanca.jpeg"/>

                                </td>
                                <td style="vertical-align:middle;"> camiseta vinotinto</td>
                                <td style="vertical-align:middle;">$20.000</td>
                                <td style="vertical-align:middle;"><input type="submit" value="+" /> 2 <input type="submit" value="-" /></td>
                                <td style="vertical-align:middle;">$40.000</td>
                            </tr>
                            
                            <%
                                Producto p=(Producto)request.getAttribute("prod");
                                int Cantidad=Integer.parseInt(request.getParameter("cantidad"));
                                
                                String html="<tr><td><input class=\"eliminar\" type=\"submit\" value=\"X\" />"+
                                    "<img style=\"width: 100px\" src=\"img/catalogo/"+p.getFoto()+"\"/>"
                                    +"</td><td style=\"vertical-align:middle;\"> "+p.getNombre()+"</td>"
                                +"<td style=\"vertical-align:middle;\">$"+p.getPrecio()+"</td>"
                                +"<td style=\"vertical-align:middle;\"><input type=\"number\" value=\""+Cantidad+"\" /></td>"
                                +"<td style=\"vertical-align:middle;\">$"+(Cantidad*p.getPrecio())+"</td>";
                                out.println(html);
                            
                            %>
                        </tbody>
                    </table>
                    <hr>
                </div>
                <div class="total col-4 col-s-12 " style="padding-top: 50px;padding-bottom: 80PX">
                    <h1>Total</h1>
                    <hr>
                    <h4>Subtotal <span id="subtotal">$160.000</span></h4>
                    <hr>
                    <h4>Envío <span id="subtotal">$9.000</span> </h4>
                    <hr>
                    <h4>Total <span id="subtotal">$169.000</span> </h4>
                    <hr>
                    <form method="POST" action="">
                        <input type="submit" value="Actualizar carrito" class="botonActualizar" />
                        <a href="Validar_Info_Envio.jsp">a<input type="submit" value="Siguiente" class="botonCaja"/></a>
                    </form>
                </div>
            </div>



        </section>
        <footer class="col-12">
            <h1>Pie de pagina</h1>
            <div>
                <span>inicio</span>
                <a href="mailto:email@Mailto.co.uk?subject=Subject Using Mailto.co.uk&body=Email Using Mailto.co.uk">Mailto.co.uk</a>

                <span>carrito</span>
                <span>historial</span>
                <span>notificación</span>    
                <span>contactenos</span>
            </div>
        </footer>
    </body>
</html>
