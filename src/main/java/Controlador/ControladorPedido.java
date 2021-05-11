/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Usuario;
import ModeloDAO.CarritoDAO;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mauri
 */
public class ControladorPedido extends HttpServlet {

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
            out.println("<title>Servlet ControladorPedido</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorPedido at " + request.getContextPath() + "</h1>");
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
        String accion= request.getParameter("accion");
        HttpSession session=request.getSession();
        switch(accion){
            case "Finalizar pedido":
                UsuarioDAO dao=new UsuarioDAO();
                CarritoDAO daoc= new CarritoDAO();
                Usuario u = (Usuario)request.getSession().getAttribute("usuario");
                u.setCorreo(request.getParameter("correo"));
                u.setIdentificacion(request.getParameter("identif"));
                u.setDireccion(request.getParameter("direc"));
                u.setNombre1(request.getParameter("nombre1"));
                u.setNombre2(request.getParameter("nombre2"));
                u.setApellido1(request.getParameter("apellido1"));
                u.setApellido2(request.getParameter("apellido2"));
                u.setTelefono(request.getParameter("telefono"));
                u.setCelular(request.getParameter("celular"));
                
                float subtotal=(float)session.getAttribute("subTotal");
                float envio=(float) session.getAttribute("envio");
                dao.actualizar(u);
                daoc.AgregarPedido(u,subtotal,envio);
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case "Seleccionar":
                int id=Integer.valueOf(request.getParameter("id"));
                request.setAttribute("id", id);
                request.getRequestDispatcher("Pedidos_Admin.jsp").forward(request, response);
            case "Cancelar":
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
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
