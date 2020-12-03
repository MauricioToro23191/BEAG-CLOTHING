/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Modelo.Conexion;
import Modelo.Producto;
import Modelo.Talla;
import Modelo.TipoProducto;
import Modelo.Usuario;
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
        String sql = "select * from usuario";
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
                p.setFoto(rs.getString(6));
                p.setEstado(rs.getString(7));
                p.setGenero(rs.getString(8));
                p.setId_talla(rs.getInt(9));
                p.setId_tipo(rs.getInt(10));
                list.add(p);

            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;

    }

    public void agregar(Usuario u) {
        String sql;

        if (u.getApellido2() != null && u.getNombre2() != null) {
            sql = "INSERT INTO USUARIO"
                    + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                    + "NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,DIRECCION,TELEFONO, MUNICIPIO,TIPO_USUAIRO) "
                    + "VALUES(5,'" + u.getCorreo() + "','" + u.getContrasena() + " ',TO_DATE('" + u.getFechaNacimiento().toString()
                    + " ','yyyy-mm-dd'),'" + u.getIdentificacion() + "','" + u.getNombre1() + "','" + u.getNombre2() + "','"
                    + u.getApellido1() + "','" + u.getApellido2() + "','" + u.getDireccion() + "','" + u.getTelefono() + "',1,2)";

        } else {
            sql = "INSERT INTO USUARIO"
                    + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                    + "NOMBRE1,APELLIDO1,DIRECCION,TELEFONO, MUNICIPIO,TIPO_USUAIRO) "
                    + "VALUES(5,'" + u.getCorreo() + "','" + u.getContrasena() + " ',TO_DATE('" + u.getFechaNacimiento().toString()
                    + " ','yyyy-mm-dd'),'" + u.getIdentificacion() + "','" + u.getNombre1() + "','" + u.getApellido1()
                    + "','" + u.getDireccion() + "','" + u.getTelefono() + "',1,2)";
        }
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

    }

    public Producto ObtenerXId( int id) {
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
                p.setFoto(rs.getString(6));
                p.setEstado(rs.getString(7));
                p.setGenero(rs.getString(8));
                p.setId_talla(rs.getInt(9));
                p.setId_tipo(rs.getInt(10));
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return p;
    }

    public int actualizar(Usuario u) {
        int r = 0;
        String sql = "update usuario set contrasena=?, nombres=?, apellidos=?, direccion=?,telefono=?, celular=? where correo=?";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.setString(1, u.getContrasena());
            ps.setString(2, u.getNombre1());
            ps.setString(3, u.getApellido1());
            ps.setString(4, u.getDireccion());
            ps.setString(5, u.getTelefono());
            ps.setString(6, u.getCelular());
            ps.setString(7, u.getCorreo());
            r = ps.executeUpdate();
            if (r == 1) {
                r = 1;
            } else {
                r = 0;
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return r;
    }

    public void Eliminar(String correo) {
        String sql = "delete from usuario where correo=" + correo;
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

    public List<Talla> listarTalla() {
        List<Talla> list = new ArrayList<>();
        String sql = "SELECT * FROM TALLA";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Talla t = new Talla();
                t.setId(rs.getInt(1));
                t.setNombre(rs.getString(2));
                list.add(t);

            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }
    
    public List<TipoProducto> listarTipo() {
        List<TipoProducto> list = new ArrayList<>();
        String sql = "SELECT * FROM TIPO_PRODUCTO;";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                TipoProducto t = new TipoProducto();
                t.setId(rs.getInt(1));
                t.setNombre(rs.getString(2));
                list.add(t);
            }
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }
}
