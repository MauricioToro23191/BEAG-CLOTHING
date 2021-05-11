/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Modelo.Carrito;
import Modelo.Conexion;
import Modelo.Correo;
import Modelo.DetalleProducto;
import Modelo.Pedido;
import Modelo.Producto;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

/**
 *
 * @author mauri
 */
public class CarritoDAO {

    PreparedStatement ps;
    ResultSet rs;
    Conexion c = new Conexion();
    Connection con;

    public List<Carrito> listar(Usuario u) {
        List<Carrito> list = new ArrayList<>();
        String sql = "select * from CARRITO WHERE ID_USUARIO=" + u.getId() + "  order by(ID_CARRITO)";
        try {

            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Carrito c = new Carrito();
                c.setId(rs.getInt(1));
                c.setCantidad(rs.getInt(2));
                c.setU(rs.getInt(3));
                c.setP(rs.getInt(4));
                list.add(c);
            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;

    }

    public void agregar(Producto p, Usuario u, int cantidad) {
        String sql;

        sql = "INSERT INTO CARRITO"
                + "(ID_CARRITO,CANTIDAD,ID_PRODUCTO,ID_USUARIO ) "
                + "VALUES(SEQ_CARRITO.nextval," + cantidad + "," + p.getId() + "," + u.getId() + ")";

        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

    }

    public Producto ObtenerXId(int id) {
        String sql = "SELECT * FROM CARRITO WHERE ID_CARRITO=" + id;
        Producto p = new Producto();
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setId(rs.getInt(1));
                p.setNombre(rs.getString(2));
                p.setFecha(rs.getDate(3).toLocalDate());
                p.setPrecio(rs.getFloat(4));
                p.setCantidad(rs.getInt(5));
                p.setColor(rs.getString(6));
                p.setFoto(rs.getString(7));
                p.setDescripcion(rs.getString(8));
                p.setEstado(rs.getString(9));
                p.setId_talla(rs.getInt(10));
                p.setId_tipo(rs.getInt(11));
                p.setId_categoria(rs.getInt(12));
            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return p;
    }

    public int actualizar(Producto p) {
        int r = 0;
        String sql = "update producto set NOMBRE='" + p.getNombre() + "',PRECIO=" + p.getPrecio()
                + ",CANTIDAD=" + p.getCantidad() + ",COLOR='" + p.getColor()
                + "',DESCRIPCION='" + p.getDescripcion()
                + "',ID_ESTADO='" + p.getEstado() + "',ID_TALLA=" + p.getId_talla()
                + ",ID_TIPO=" + p.getId_tipo() + ",ID_CATEGORIA=" + p.getId_categoria()
                + "where id_producto=" + p.getId();
        try {

            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return r;
    }

    public void Eliminar(int id) {
        String sql = "delete from carrito where id_carrito=" + id;
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
        } catch (SQLException e) {
        }
    }

    public void AgregarPedido(Usuario u, float total, float costoenvio) {
        List<Carrito> listaP = listar(u);
       

        String sql = "INSERT INTO PEDIDO"
                + "(ID_PEDIDO,TOTAL,COSTO_ENVIO,FECHA_PEDIDO,ESTADO,ID_USUARIO) "
                + "VALUES(seq_pedido.nextval," + total + "," + costoenvio + ",sysdate," + 1 + "," + u.getId() + ")";
        con = c.conectar();
        try {
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
            DetallePedido(listaP, u);
            ELiminarCarrito(u);
            //enviarCorreo(u, listaP);
            JOptionPane.showMessageDialog(null, "Se agrego un Pedido");
        } catch (SQLException ex) {
            Logger.getLogger(CarritoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public Pedido obtenerPedidoXid(int id_pedido) {
        String sql = "select id_pedido,total,costo_Envio,fecha_pedido,estado,id_usuario from pedido where id_pedido="+id_pedido;

        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            Pedido p = new Pedido();
            while (rs.next()) {

                p.setId(rs.getInt(1));
                p.setTotal(rs.getInt(2));
                p.setCostoEnvio(rs.getInt(3));
                p.setFechaPedido(rs.getDate(4).toLocalDate());
                p.setEstado(rs.getString(5));
                p.setU(rs.getInt(6));

            }

            con.close();
            return p;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.toString());
        }
        return null;
    }

    private void ELiminarCarrito(Usuario u) {
        String sql = "delete carrito where id_usuario=" + u.getId();
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
        } catch (SQLException e) {
        }
    }

    public List<DetalleProducto> Listar_Detalle_producto(int id_pedido) {
        List<DetalleProducto> li=new ArrayList<>();
        if (id_pedido > 0) {
            
            ProductoDAO PDao= new ProductoDAO();
            String sql = "select ID_DETALLE,CANTIDAD,PRECIO,ID_PRODUCTO from DETALLE_PRODUCTO where ID_PEDIDO=" + id_pedido;
            try {
                con = c.conectar();
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    DetalleProducto DP = new DetalleProducto();
                    DP.setId(rs.getInt(1));
                    DP.setCantidad(rs.getInt(2));
                    DP.setPrecio(rs.getFloat(3));
                    DP.setProducto(PDao.ObtenerXId(rs.getInt(4)));
                    li.add(DP);
                    DP=null;
                }
                con.close();
                return li;
            } catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e.toString());
            }
        }else{
            ProductoDAO PDao= new ProductoDAO();
            String sql = "select ID_DETALLE,CANTIDAD,PRECIO,ID_PRODUCTO, from DETALLE_PRODUCTO where ID_PEDIDO=(select min(id_pedido)from pedido where estado=1 )";
            try {
                con = c.conectar();
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
                
                while (rs.next()) {
                    DetalleProducto DP = new DetalleProducto();
                    DP.setId(rs.getInt(1));
                    DP.setCantidad(rs.getInt(2));
                    DP.setPrecio(rs.getFloat(3));
                    DP.setProducto(PDao.ObtenerXId(rs.getInt(4)));
                    li.add(DP);
                    DP=null;
                }
                con.close();
                return li;
            } catch (SQLException e) {
                JOptionPane.showMessageDialog(null, e.toString());
            }
        }
        return null;

    }

    public Pedido obtenerUltimoPE() {
        String sql = "select id_pedido,total,costo_Envio,fecha_pedido,estado,id_usuario from pedido where id_pedido=(select max(id_pedido)from pedido)";

        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            Pedido p = new Pedido();
            while (rs.next()) {

                p.setId(rs.getInt(1));
                p.setTotal(rs.getInt(2));
                p.setCostoEnvio(rs.getInt(3));
                p.setFechaPedido(rs.getDate(4).toLocalDate());
                p.setEstado(rs.getString(5));
                p.setU(rs.getInt(6));

            }

            con.close();
            return p;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.toString());
        }
        return null;
    }

    private void DetallePedido(List<Carrito> carrito, Usuario u) {
        ProductoDAO daop = new ProductoDAO();
        try {
            con = c.conectar();
            for (Carrito c : carrito) {
                Producto p = daop.ObtenerXId(c.getP());
                String sql = "Insert into DETALLE_PRODUCTO (ID_DETALLE,CANTIDAD,PRECIO,ID_PRODUCTO,ID_PEDIDO,ID_USUARIO)"
                        + "VALUES(SEQ_DETALLE.NEXTVAL," + c.getCantidad() + "," + p.getPrecio() + "," + p.getId() + ",(select max(id_pedido) from pedido)," + u.getId() + ")";
                ps = con.prepareStatement(sql);
                ps.executeQuery();
            }
            con.close();
        } catch (SQLException e) {
        }
    }

    private void enviarCorreo(Usuario U, List<Carrito> lista) {
        Correo correo = new Correo();
        correo.confirmarPedido(U, lista);
    }

    public List<Pedido> ListarPedido() {
        List<Pedido> list = new ArrayList<>();
        String sql = "select id_pedido,total,costo_Envio,fecha_pedido,estado,id_usuario from pedido";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Pedido c = new Pedido();
                c.setId(rs.getInt(1));
                c.setTotal(rs.getInt(2));
                c.setCostoEnvio(rs.getInt(3));
                c.setFechaPedido(rs.getDate(4).toLocalDate());
                c.setEstado(rs.getString(5));
                c.setU(rs.getInt(6));
                list.add(c);
            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }

    public String obtenerEstadoP(String estado) {
        switch (estado) {
            // declaración case
            // los valores deben ser del mismo tipo de la expresión
            case "1":
                return "Pendiente";
            case "2":
                return "en proceso";
            case "3":
                return "enviado";
            case "4":
                return "pago";
            case "5":
                return "candelado";
        }
        return "por definir";
    }

}
