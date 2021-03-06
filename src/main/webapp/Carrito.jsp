<%-- 
    Document   : Carrito
    Created on : 4/11/2020, 01:49:34 AM
    Author     : mauricio
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="ModeloDAO.ProductoDAO"%>
<%@page import="Modelo.Carrito"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.CarritoDAO"%>
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
                    
                    <div class="form-group-container">
                        <img src="img/LogoNav.png" width="103" height="38" alt="logo"/>
                    </div>
                    <form class="form-group " action="#">
                        <div class="form-group-container">
                            <input type="text" class="form-group-input" placeholder="Buscar...">
                        </div>
                    </form>
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
                            <%
                                float SubTotal=0;
                                float envio=9000;
                                try {
                                    ProductoDAO daop = new ProductoDAO();
                                    CarritoDAO daoc = new CarritoDAO();
                                    Usuario u = (Usuario) session.getAttribute("usuario");
                                    List<Carrito> lista = daoc.listar(u);
                                    
                                    for (Carrito C : lista) {
                                        Producto p = daop.ObtenerXId(C.getP());
                                        float ToralProduc=(C.getCantidad() * p.getPrecio());
                                        String html = "<tr><form action=\"ControladorCarrito\" method=\"post\"><td><input class=\"eliminar\" type=\"submit\" value=\"X\" name=\"accion\" />"
                                                + "<input  type=\"hidden\" value=\""+C.getId()+"\" name=\"id\" /><img style=\"width: 100px\" src=\"img/catalogo/" + p.getFoto() + "\"/>"
                                                + "</td><td style=\"vertical-align:middle;\"> " + p.getNombre() + "</td>"
                                                + "<td style=\"vertical-align:middle;\">$" + p.getPrecio() + "</td>"
                                                + "<td style=\"vertical-align:middle;\">" + C.getCantidad() +"</td>"
                                                + "<td style=\"vertical-align:middle;\">$" + ToralProduc + "</td></form></tr>";
                                        out.println(html);
                                        SubTotal=SubTotal+ToralProduc;
                                    }
                                    request.setAttribute("subTotal",SubTotal);
                                    request.setAttribute("envio", envio);
                                } catch (Exception ex) {
                                    JOptionPane.showMessageDialog(null, ex.getMessage());
                                }

                            %>
                            
                        </tbody>
                    </table>
                    <hr>
                </div>
                <div class="total col-4 col-s-12 " style="padding-top: 50px;padding-bottom: 80PX">
                    <h1>Total</h1>
                    <hr>
                    <h4>Subtotal <span  name="subtotal" id="subtotal"><%=SubTotal%></span></h4>
                    <hr>
                    <h4>Envío <span name="CostoE"id="subtotal">$<%=envio%></span> </h4>
                    <hr>
                    <h4>Total <span name="total"id="subtotal">$<%= SubTotal+envio %></span> </h4>
                    <hr>
                    <form method="POST" action="ControladorCarrito">
                        <input type="submit" value="Actualizar carrito" name="accion" class="botonActualizar" />
                        <a href="Validar_Info_Envio.jsp"><input type="submit" value="Siguiente" name="accion" class="botonActualizar"/></a>
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
