package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author mauri
 */
public class UsuarioDAO {
    PreparedStatement ps;
    ResultSet rs;
    Conexion c=new Conexion();
    Connection con;
    
    public List<Usuario> listar(){
        List<Usuario> list=new ArrayList<>();
        String sql="select * from usuario";
        try{
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuario u=new Usuario();
                u.setCorreo(rs.getString(1));
                u.setContrasena(rs.getString(2));
                u.setNombres(rs.getString(3));
                u.setApellidos(rs.getString(4));
                u.setDireccion(rs.getString(5));
                u.setTelefono(rs.getString(6));
                u.setCelular(rs.getString(7));
                list.add(u);
            }
        }catch(Exception ex){
            
        }
        return list;
        
    }
    
    public int agregar(Usuario u){
        int r=0;
        String sql="insert into usuario(correo,contrasena,nombres,apellidos,direccion,telefono,celular) values(?,?,?,?,?,?,?)";
        try{
            con=c.conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, u.getCorreo());
            ps.setString(2, u.getContrasena());
            ps.setString(3, u.getNombres());
            ps.setString(4, u.getApellidos());
            ps.setString(5, u.getDireccion());
            ps.setString(6, u.getTelefono());
            ps.setString(7, u.getCelular());
            r=ps.executeUpdate();
            if(r==1){
                r=1;
            }else{
                r=0;
            }
        }catch(Exception ex){
            
        }
        
        return r;
    }
    
    public Usuario listarId(String correo){
        String sql="select * from usuario where correo="+correo;
        Usuario u=new Usuario();
        try{
            con=c.conectar();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                u.setCorreo(rs.getString(1));
                u.setContrasena(rs.getString(2));
                u.setNombres(rs.getString(3));
                u.setApellidos(rs.getString(4));
                u.setDireccion(rs.getString(5));
                u.setTelefono(rs.getString(6));
                u.setCelular(rs.getString(7));
            }
        }catch(Exception ex){
            
        }
        return u;
    }
    
    public int actualizar(Usuario u){
        int r=0;
        String sql="update usuario set contrasena=?, nombres=?, apellidos=?, direccion=?,telefono=?, celular=? where correo=?";
         try{
            con=c.conectar();
            ps=con.prepareStatement(sql);
            ps.setString(1, u.getContrasena());
            ps.setString(2, u.getNombres());
            ps.setString(3, u.getApellidos());
            ps.setString(4, u.getDireccion());
            ps.setString(5, u.getTelefono());
            ps.setString(6, u.getCelular());
            ps.setString(7, u.getCorreo());
            r=ps.executeUpdate();
            if(r==1){
                r=1;
            }else{
                r=0;
            }
        }catch(Exception ex){
            
        }
        return r;
    }
    
    public void Eliminar(String correo){
        String sql="delete from usuario where correo="+correo;
        try {
            con=c.conectar();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
