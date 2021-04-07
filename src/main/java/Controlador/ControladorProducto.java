/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Producto;
import ModeloDAO.ProductoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author mauri
 */
public class ControladorProducto extends HttpServlet {

    ProductoDAO dao = new ProductoDAO();
    Producto p = new Producto();

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
            out.println("<title>Servlet ControladorProducto</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProducto at " + request.getContextPath() + "</h1>");
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
        String accion = "";
        accion = request.getParameter("accion");
        switch (accion) {
            case "CrearProducto":
                String nombre = request.getParameter("txtNombre");
                String foto = request.getParameter("file");
                String color = request.getParameter("txtColor");
                int cantidad = Integer.parseInt(request.getParameter("txtCantidad"));
                float precio = Float.parseFloat(request.getParameter("txtPrecio"));
                String categoria = request.getParameter("SelectCategoria");
                String estado = request.getParameter("SelectEstado");
                String tipo = request.getParameter("SelectTipo");
                String talla = request.getParameter("SelectTalla");
                String descripcion = request.getParameter("txtDescripcion");
                p.setNombre(nombre);
                p.setFoto(foto);
                p.setColor(color);
                p.setCantidad(cantidad);
                p.setDescripcion(descripcion);
                p.setId_categoria(dao.validarCategoria(categoria));
                p.setPrecio(precio);
                p.setEstado(estado);
                p.setId_tipo(dao.validarTipo(tipo));
                p.setId_talla(dao.validarTalla(talla));
                dao.agregar(p); 
                request.getRequestDispatcher("Productos.jsp").forward(request, response);
                break;
            case "Editar":
                int ide = Integer.parseInt(request.getParameter("id"));
                Producto prod = dao.ObtenerXId(ide);
                
                request.setAttribute("prod", prod);
                request.setAttribute("ide", ide);
                request.setAttribute("value", "Editando");
                request.getRequestDispatcher("Productos.jsp").forward(request, response);
                break;
            case "EditandoCrearProducto" :
                int id1 = Integer.parseInt(request.getParameter("id"));
                String nombre1 = request.getParameter("txtNombre");
                String foto1 = request.getParameter("file");
                String color1 = request.getParameter("txtColor");
                int cantidad1 = Integer.parseInt(request.getParameter("txtCantidad"));
                float precio1 = Float.parseFloat(request.getParameter("txtPrecio"));
                String categoria1 = request.getParameter("SelectCategoria");
                String estado1 = request.getParameter("SelectEstado");
                String tipo1 = request.getParameter("SelectTipo");
                String talla1 = request.getParameter("SelectTalla");
                String descripcion1 = request.getParameter("txtDescripcion");
                p.setId(id1);   
                p.setNombre(nombre1);
                p.setFoto(foto1);
                p.setColor(color1);
                p.setCantidad(cantidad1);
                p.setDescripcion(descripcion1);
                p.setId_categoria(dao.validarCategoria(categoria1));
                p.setPrecio(precio1);
                p.setEstado(estado1);
                p.setId_tipo(dao.validarTipo(tipo1));
                p.setId_talla(dao.validarTalla(talla1));
               dao.actualizar(p); 
                request.getRequestDispatcher("Productos.jsp").forward(request, response);
                break;
            case "Eliminar":
                int idE = Integer.parseInt(request.getParameter("id"));
                dao.Eliminar(idE);
                request.getRequestDispatcher("Productos.jsp").forward(request, response);
                break;
            case "Cerrar Sesión":
                
                request.getRequestDispatcher("index.jsp").forward(request, response);
                break;
            case "categoria":
                String categori=request.getParameter("categoria");
                break;
            default:
                JOptionPane.showMessageDialog(null, "Opcion incorrecta");
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
