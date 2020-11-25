package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;

/**
 *
 * @author mauri
 */
public class UsuarioDAO {

    PreparedStatement ps;
    ResultSet rs;
    Conexion c = new Conexion();
    Connection con;

    public List<Usuario> listar() {
        List<Usuario> list = new ArrayList<>();
        String sql = "select * from usuario";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuario u = new Usuario();
                u.setId(rs.getInt(1));
                u.setIdentificacion(rs.getString(2));
                u.setNombre1(rs.getString(3));
                u.setNombre2(rs.getString(4));
                u.setApellido1(rs.getString(5));
                u.setApellido2(rs.getString(6));
                u.setCorreo(rs.getString(7));
                u.setContrasena(rs.getString(8));
                u.setFechaNacimiento(LocalDate.parse(rs.getString(9), DateTimeFormatter.ISO_LOCAL_DATE));
                u.setDireccion(rs.getString(10));
                u.setTelefono(rs.getString(11));
                u.setCelular(rs.getString(12));
                u.setTipoUsuario(rs.getInt(13));
                u.setTipoUsuario(rs.getInt(14));
                list.add(u);
            
            }
        } catch (Exception ex) {

        }
        return list;

    }

    public int agregar(Usuario u) {
        int r = 0;
        String sql = "insert into usuario"
                + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                + "NOMBRE1,APELLIDO1,DIRECCION,TELEFONO,MUNICIPIO,TIPO_USUAIRO) "
                + "values(?,?,?,TO_DATE("+u.getFechaNacimiento().toString()+",'yyyy-mm-dd'),?,?,?,?,?,1,1)";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.setInt(1, 1);
            ps.setString(2, u.getCorreo());
            ps.setString(3, u.getContrasena());
            ps.setString(4, u.getIdentificacion());
            ps.setString(5, u.getNombre1());
            ps.setString(6, u.getApellido1());
            ps.setString(7, u.getDireccion());
            ps.setString(8, u.getTelefono());
            r = ps.executeUpdate();
            if (r == 1) {
                r = 1;
            } else {
                r = 0;
            }
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

        return r;
    }

    public Usuario listarId(String correo) {
        String sql = "select * from usuario where correo=" + correo;
        Usuario u = new Usuario();
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                u.setId(rs.getInt(1));
                u.setIdentificacion(rs.getString(2));
                u.setNombre1(rs.getString(3));
                u.setNombre2(rs.getString(4));
                u.setApellido1(rs.getString(5));
                u.setApellido2(rs.getString(6));
                u.setCorreo(rs.getString(7));
                u.setContrasena(rs.getString(8));
                u.setFechaNacimiento(LocalDate.parse(rs.getString(9),DateTimeFormatter.ISO_LOCAL_DATE));
                u.setDireccion(rs.getString(10));
                u.setTelefono(rs.getString(11));
                u.setCelular(rs.getString(12));
                u.setTipoUsuario(rs.getInt(13));
                u.setTipoUsuario(rs.getInt(14));
            }
        } catch (Exception ex) {

        }
        return u;
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
        } catch (Exception ex) {

        }
        return r;
    }

    public void Eliminar(String correo) {
        String sql = "delete from usuario where correo=" + correo;
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
}
