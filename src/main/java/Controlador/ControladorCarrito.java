/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import Modelo.Usuario;
import ModeloDAO.CarritoDAO;
import ModeloDAO.ProductoDAO;
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
public class ControladorCarrito extends HttpServlet {

    ProductoDAO dao = new ProductoDAO();
    CarritoDAO daoCarrito = new CarritoDAO();
    Producto p = new Producto();
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
            out.println("<title>Servlet ControladorCarrito</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorCarrito at " + request.getContextPath() + "</h1>");
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
        switch (accion) {
            //agrega abre la ventana del popup, para agregar el producto
            case "Agregar al Carrito":
                int id = Integer.parseInt(request.getParameter("id"));
                Producto p = dao.ObtenerXId(id);
                request.setAttribute("prod", p);
                request.getRequestDispatcher("POPup.jsp").forward(request, response);
                break;
            //al confirmar en la ventana de popup se agrega el producto al carrito 
            case "Agregar":
                int id1 = Integer.parseInt(request.getParameter("id"));
                p = dao.ObtenerXId(id1);
                u = (Usuario) request.getSession().getAttribute("usuario");
                int cantidad = Integer.parseInt(request.getParameter("cantidad"));
                request.setAttribute("cantidad", cantidad);
                daoCarrito.agregar(p, u, cantidad);
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                break;
            //comienza el proceso de pasar el carrito a pedido, enviando a la ventana para confirmar datos
            case "Realizar pedido":
                request.getRequestDispatcher("Validar_Info_Envio.jsp").forward(request, response);
                break;
            //redirecciona del carrito al inicio para agregar un producto
            case"Agregar Producto":
                 request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            //elimina un producto especifico del carrito
            case "X":
                int idE =Integer.parseInt(request.getParameter("id"));
                daoCarrito.Eliminar(idE);
                request.getRequestDispatcher("Carrito.jsp").forward(request, response);
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
