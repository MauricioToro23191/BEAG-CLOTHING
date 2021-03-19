package ModeloDAO;

import Modelo.Categoria;
import Modelo.Conexion;
import Modelo.Municipio;
import Modelo.TipoUsuario;
import Modelo.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
                //u.setContrasena(rs.getString(8));
                u.setFechaNacimiento(rs.getDate(9).toLocalDate());
                u.setDireccion(rs.getString(10));
                u.setTelefono(rs.getString(11));
                u.setCelular(rs.getString(12));
                u.setTipoUsuario(rs.getInt(13));
                u.setMunicipio(rs.getInt(14));
                list.add(u);

            }
             con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;

    }

    public void agregar(Usuario u) {
        String sql;

        if (!"".equals(u.getApellido2()) && !"".equals(u.getNombre2())) {
            sql = "INSERT INTO USUARIO"
                    + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                    + "NOMBRE1,NOMBRE2,APELLIDO1,APELLIDO2,DIRECCION,TELEFONO, MUNICIPIO,TIPO_USUAIRO) "
                    + "VALUES(seq_Usuario.nextval,'" + u.getCorreo() + "','" + u.getContrasena() + "',TO_DATE('" + u.getFechaNacimiento().toString()
                    + " ','yyyy-mm-dd'),'" + u.getIdentificacion() + "','" + u.getNombre1() + "','" + u.getNombre2() + "','"
                    + u.getApellido1() + "','" + u.getApellido2() + "','" + u.getDireccion() + "','" + u.getTelefono() + "',1,2)";

        } else if("".equals(u.getApellido2()) && !"".equals(u.getNombre2())){
            sql = "INSERT INTO USUARIO"
                    + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                    + "NOMBRE1,NOMBRE2,APELLIDO1,DIRECCION,TELEFONO, MUNICIPIO,TIPO_USUAIRO) "
                    + "VALUES(seq_Usuario.nextval,'" + u.getCorreo() + "','" + u.getContrasena() + "',TO_DATE('" + u.getFechaNacimiento().toString()
                    + " ','yyyy-mm-dd'),'" + u.getIdentificacion() + "','" + u.getNombre1() + "','" + u.getNombre2() + "','"
                    + u.getApellido1()  + "','" + u.getDireccion() + "','" + u.getTelefono() + "',1,2)";
        
        }else if(!"".equals(u.getApellido2()) && "".equals(u.getNombre2())){
            sql = "INSERT INTO USUARIO"
                    + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                    + "NOMBRE1,APELLIDO1,APELLIDO2,DIRECCION,TELEFONO, MUNICIPIO,TIPO_USUAIRO) "
                    + "VALUES(seq_Usuario.nextval,'" + u.getCorreo() + "','" + u.getContrasena() + "',TO_DATE('" + u.getFechaNacimiento().toString()
                    + " ','yyyy-mm-dd'),'" + u.getIdentificacion() + "','" + u.getNombre1()  + "','"
                    + u.getApellido1() + "','" + u.getApellido2() + "','" + u.getDireccion() + "','" + u.getTelefono() + "',1,2)";
                
        }
        else {
            sql = "INSERT INTO USUARIO"
                    + "(ID_USUARIO,CORREO,CONTRASENA,FECHA_NACIMIENTO,IDENTIFICACION,"
                    + "NOMBRE1,APELLIDO1,DIRECCION,TELEFONO, MUNICIPIO,TIPO_USUAIRO) "
                    + "VALUES(seq_Usuario.nextval,'" + u.getCorreo() + "','" + u.getContrasena() + " ',TO_DATE('" + u.getFechaNacimiento().toString()
                    + " ','yyyy-mm-dd'),'" + u.getIdentificacion() + "','" + u.getNombre1() + "','" + u.getApellido1()
                    + "','" + u.getDireccion() + "','" + u.getTelefono() + "',1,2)";
        }

        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }

    }

    public Usuario ObtenerUsuario(String Correo, String contrasena) {
        Usuario u = null;
        String sql = "SELECT * FROM USUARIO WHERE CORREO='" + Correo + "' AND CONTRASENA='" + contrasena + "'";

        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                u = new Usuario();
                u.setId(rs.getInt(1));
                u.setIdentificacion(rs.getString(2));
                u.setNombre1(rs.getString(3));
                u.setNombre2(rs.getString(4));
                u.setApellido1(rs.getString(5));
                u.setApellido2(rs.getString(6));
                u.setCorreo(rs.getString(7));
                u.setFechaNacimiento(rs.getDate(9).toLocalDate());
                u.setDireccion(rs.getString(10));
                u.setTelefono(rs.getString(11));
                u.setCelular(rs.getString(12));
                u.setTipoUsuario(rs.getInt(13));
                u.setMunicipio(rs.getInt(14));
            }
             con.close();
        } catch (SQLException ex) {

            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return u;
    }

    public Usuario ObtenerID(Usuario user) {
        String sql = "SELECT * FROM USUARIO WHERE ID_USUARIO=" + user.getId();
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
                u.setFechaNacimiento(LocalDate.parse(rs.getString(9), DateTimeFormatter.ISO_LOCAL_DATE));
                u.setDireccion(rs.getString(10));
                u.setTelefono(rs.getString(11));
                u.setCelular(rs.getString(12));
                u.setTipoUsuario(rs.getInt(13));
                u.setTipoUsuario(rs.getInt(14));
            }
             con.close();
        } catch (SQLException ex) {

        }
        return u;
    }

    public boolean actualizar(Usuario u) {
        
        String sql = "UPDATE USUARIO SET "
                + "CORREO='"+u.getCorreo()+"', "
                + "IDENTIFICACION='"+u.getIdentificacion()+"', "
                + "DIRECCION='"+u.getDireccion()+"',"
                + "NOMBRE1='"+u.getNombre1()+"', "
                + "NOMBRE2='"+u.getNombre2()+"', "
                + "APELLIDO1='"+u.getApellido1()+"', "
                + "APELLIDO2='"+u.getApellido2()+"', "
                + "TELEFONO='"+u.getTelefono()+"', "
                + "CELULAR='"+u.getCelular()+"' "
                + "WHERE ID_USUARIO="+u.getId();
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
            JOptionPane.showMessageDialog(null, "Se actualizaron datos de usuario");
            return true;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error al actualizar datos de usuario");
        }
       
        return false;
    }

    public boolean Eliminar(int id)  {
        String sql = "delete from usuario where id_usuario=" + id;
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            ps.executeQuery();
            con.close();
            return true;
             
        } catch (SQLException e) {
        }
        
        return false;
    }

    public List<Municipio> listarMunicipios() {
        List<Municipio> list = new ArrayList<>();
        String sql = "SELECT * FROM MUNICIPIO";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Municipio m = new Municipio();
                m.setId(rs.getInt(1));
                m.setNombre(rs.getString(2));
                list.add(m);

            }
            con.close();
        } catch (SQLException ex) {

        }
        
        return list;
    }

    public List<TipoUsuario> listarTipo() {
        List<TipoUsuario> list = new ArrayList<>();
        String sql = "SELECT * FROM TIPO_USUARIO;";
        try {
            con = c.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                TipoUsuario t = new TipoUsuario();
                t.setId(rs.getInt(1));
                t.setNombre(rs.getString(2));
                list.add(t);
            }
            con.close();
        } catch (SQLException ex) {
        }
        return list;
    }

    public List<Categoria> ListarCategorias() {
        List<Categoria> list = new ArrayList<>();
        String sql = "SELECT * FROM CATEGORIA;";
        try {
            con = c.conectar(); 
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Categoria cat = new Categoria();
                cat.setId(rs.getInt(1));
                cat.setNombre(rs.getString(2));
                list.add(cat);
            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return list;
    }
    public Municipio obtenerMunicipioID(int id) {
       
        String sql = "SELECT * FROM municipio where id_municipio="+id;
        Municipio cat = new Municipio();
        try {
            con = c.conectar(); 
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                cat.setId(rs.getInt(1));
                cat.setNombre(rs.getString(2));
            }
            con.close();
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return cat;
    }

  

}
