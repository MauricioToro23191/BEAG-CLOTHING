/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Modelo.Categoria;
import Modelo.Conexion;
import Modelo.Producto;
import Modelo.Talla;
import Modelo.TipoProducto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author mauri
 */
public class ProductoDAO {

    PreparedStatement ps;
    ResultSet rs;
    Conexion c = new Conexion();
    Connection con;

    public List<Producto> listar() {
        List<Producto> list = new ArrayList<>();
        String sql = "select * from producto order by(id_producto)";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
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
                list.add(p);

            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }
    
    public List<Producto> listarCatalogo() {
        List<Producto> list = new ArrayList<>();
        String sql = "select * from producto order by(id_producto) where Categoria=''";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p = new Producto();
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
                list.add(p);

            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }

    public void agregar(Producto p) {
        String sql;

        sql = "INSERT INTO PRODUCTO"
                + "(ID_PRODUCTO,NOMBRE,FECHA,PRECIO,CANTIDAD,COLOR,FOTO,DESCRIPCION,ID_ESTADO,ID_TALLA,ID_TIPO,ID_CATEGORIA) "
                + "VALUES(SEQ_PRODUCTO.nextval,'" + p.getNombre() + "',TO_DATE('2020/12/06','yyyy/mm/dd')," + p.getPrecio() + "," + p.getCantidad()
                + ",'" + p.getColor() + "','" + p.getFoto() + "','" + p.getDescripcion() + "','" + p.getEstado() + "'," + p.getId_talla()
                + "," + p.getId_tipo() + ","+p.getId_categoria()+")";

        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
            //JOptionPane.showMessageDialog(null, "Insercion correcta");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

    }

    public Producto ObtenerXId(int id) {
        String sql = "SELECT * FROM PRODUCTO WHERE ID_PRODUCTO=" + id;
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
        String sql = "update producto set NOMBRE='"+p.getNombre()+"',PRECIO="+p.getPrecio()
                + ",CANTIDAD="+p.getCantidad()+",COLOR='"+p.getColor()+
                "',DESCRIPCION='"+p.getDescripcion()+
                "',ID_ESTADO='"+p.getEstado()+"',ID_TALLA="+p.getId_talla()+
                ",ID_TIPO="+p.getId_tipo()+",ID_CATEGORIA="+p.getId_categoria()
                +"where id_producto="+p.getId();
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
        String sql = "delete from producto where id_producto=" + id;
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public int nuevoId() {
        int id = 1;
        List<Producto> user = listar();
        for (Producto u : user) {
            id = u.getId();
        }
        return id + 1;
    }
    public String nombreTalla(int id){
         try {
            con = c.conectar();
            ps = con.prepareStatement("SELECT ID_TALLA, NOMBRE FROM TALLA WHERE ID_TALLA="+id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Talla t = new Talla();
                t.setId(rs.getInt(1));
                t.setNombre(rs.getString(2));
                return t.getNombre();
            }
            con.close();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        return "";
    }

//    public List<Talla> listarTalla() {
//        List<Talla> list = new ArrayList<>();
//        try {
//            con = c.conectar();
//            ps = con.prepareStatement("SELECT ID_TALLA, NOMBRE FROM TALLA");
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                Talla t = new Talla();
//                t.setId(rs.getInt(1));
//                t.setNombre(rs.getString(2));
//                list.add(t);
//            }
//            con.close();
//        } catch (SQLException ex) {
//            System.out.println(ex.getMessage());
//        }
//        return list;
//    }

//    public List<TipoProducto> listarTipo() {
//        List<TipoProducto> list = new ArrayList<>();
//        String sql = "SELECT * FROM TIPO_PRODUCTO;";
//        try {
//            con = c.conectar();
//            ps = con.prepareStatement(sql);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                TipoProducto t = new TipoProducto();
//                t.setId(rs.getInt(1));
//                t.setNombre(rs.getString(2));
//                list.add(t);
//            }
//            con.close();
//        } catch (SQLException ex) {
//            JOptionPane.showMessageDialog(null, ex.getMessage());
//        }
//        return list;
//    }

    public List<Categoria> listarCategoria() {
        List<Categoria> list = new ArrayList<>();
        String sql = "SELECT * FROM CATEGORIA";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categoria c = new Categoria();
                c.setId(rs.getInt(1));
                c.setNombre(rs.getString(2));
                list.add(c);
            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }

    public int validarCategoria(String valor) {
        switch (valor) {
            case "Hombre":
                return 1;
            case "Mujer":
                return 2;
            case "Niño":
                return 3;

        }
        return 3;
    }
     public String validarCategoria(int valor) {
        switch (valor) {
            case 1:
                return "Hombre";
            case 2:
                return "Mujer";
            case 3:
                return "Niño";

        }
        return "";
    }

    public int validarTalla(String valor) {
        switch (valor) {
            case "XXS":
                return 1;
            case "XS":
                return 2;
            case "S":
                return 3;
            case "M":
                return 4;
            case "L":
                return 5;
            case "XL":
                return 6;
            case "XXL":
                return 7;
            case "XXXL":
                return 8;
            case "XXXXL":
                return 9;
        }
        return 4;
    }
    public String validarTalla(int valor) {
        switch (valor) {
            case 1:
                return "XXS";
            case 2:
                return "XS";
            case 3:
                return "S";
            case 4:
                return "M";
            case 5:
                return "L";
            case 6:
                return "XL";
            case 7:
                return "XXL";
            case 8:
                return "XXXL";
            case 9:
                return "XXXXL";
        }
        return "";
    }

    public int validarTipo(String valor) {
        switch (valor) {
            case "Camiseta":
                return 1;
            case "Buso":
                return 2;
            case "Sudadera":
                return 3;
            case "Gorra":
                return 4;
        }
        return 1;
    }
    public String validarTipo(int valor) {
        switch (valor) {
            case 1:
                return "Camiseta";
            case 2:
                return "Buso";
            case 3:
                return "Sudadera";
            case 4:
                return "Gorra";
        }
        return "";
    }
}
