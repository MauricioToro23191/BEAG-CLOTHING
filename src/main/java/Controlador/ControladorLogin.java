
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.*;
import ModeloDAO.*;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

/**
 *
 * @author mauri
 */
public class ControladorLogin extends HttpServlet {
    UsuarioDAO dao = new UsuarioDAO();
    Usuario u = new Usuario();
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorLogin at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        HttpSession session=request.getSession();
        switch (accion) {
            case "Listar":
//                List<Usuario> datos = dao.listar();
//                request.setAttribute("datos", datos);
//                request.getRequestDispatcher("inP.jsp").forward(request, response);
                break;
            case "Nuevo":
//                request.getRequestDispatcher("add.jsp").forward(request, response);
//                break;
            case "Crear cuenta":

                String correo = request.getParameter("txtCorreo");
                String contrasena = request.getParameter("txtContrasena");
                String identificacion = request.getParameter("txtIdentificacion");
                String nombre1 = request.getParameter("txtNombre1");
                String nombre2 = request.getParameter("txtNombre2");
                String apellido1 = request.getParameter("txtApellido1");
                String apellido2 = request.getParameter("txtApellido2");
                String direccion = request.getParameter("txtDireccion");
                LocalDate fechaNacimiento = LocalDate.parse(request.getParameter("txtFechaNacimiento"));
                String telefono = request.getParameter("txtTelefono");
                //int Municipio = dao.ValidarMunicipio(request.getParameter("CBMunicpio"));
                //u.setId(1);
                u.setCorreo(correo);
                u.setContrasena(contrasena);
                u.setIdentificacion(identificacion);
                u.setNombre1(nombre1);
                u.setNombre2(nombre2);
                u.setApellido1(apellido1);
                u.setApellido2(apellido2);
                u.setDireccion(direccion);
                u.setFechaNacimiento(fechaNacimiento);
                u.setTelefono(telefono);
                u.setMunicipio(4);
                u.setTipoUsuario(2);
                dao.agregar(u);
                
                
                   session=request.getSession();
                   session.setAttribute("usuario", u);
                
                
                request.getRequestDispatcher("UsuarioRegistrado.jsp").forward(request, response);
                break;
            case "Editar":
//                String ide = request.getParameter("correo");
//                Usuario us = dao.listarId(ide);
//                request.setAttribute("us", us);
//                request.getRequestDispatcher("edit.jsp").forward(request, response);
                break;
            case "actualizar":
//                String correo1 = request.getParameter("txtCorreo");
//                String contrasena1 = request.getParameter("txtContrasena");
//                String identificacion1 = request.getParameter("txtIdentificacion");
//                String nombres1 = request.getParameter("txtNombres");
//                String apellidos1 = request.getParameter("txtApellidos");
//                String direccion1 = request.getParameter("txtDireccion");
//                LocalDate fechaNacimiento1 = LocalDate.parse(request.getParameter("txtFechaNacimiento"), DateTimeFormatter.ISO_LOCAL_DATE);
//                String telefono1 = request.getParameter("txtTelefono");
//
//                u.setCorreo(correo1);
//                u.setContrasena(contrasena1);
//                u.setNombre1(nombres1);
//                u.setApellido1(apellidos1);
//                u.setDireccion(direccion1);
//                u.setTelefono(telefono1);
//                u.setFechaNacimiento(fechaNacimiento1);
//                dao.actualizar(u);
//                request.getRequestDispatcher("ControladorLogin?accion=Listar").forward(request, response);
//                break;

            case "Eliminar":
//                String id2 = request.getParameter("correo");
//                dao.Eliminar(id2);
//                request.getRequestDispatcher("ControladorLogin?accion=Listar").forward(request, response);
            case "Iniciar Sesion":
                u=null;
                String contra = request.getParameter("txtContrasena");
                String Correo = request.getParameter("txtCorreo");
                u =dao.ObtenerUsuario(Correo, contra);
                if(u!=null){
                   session.setAttribute("usuario", u);
                   request.getRequestDispatcher("UsuarioRegistrado.jsp").forward(request, response);
                }else{
                    JOptionPane.showMessageDialog(null,"Usuario Invalido");
                    request.getRequestDispatcher("Inicio_Sesion.jsp").forward(request, response);
                }
                break;
            case "Cerrar Sesion":
               // HttpSession session=request.getSession();
                session.invalidate();
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }

    /**
     * Returns a short description of the servlet.
     * 
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
