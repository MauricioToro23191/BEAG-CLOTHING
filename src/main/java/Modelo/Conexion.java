package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;


/**
 *
 * @author mauricio
 */
public class Conexion {
    Connection con=null;
    String url="jdbc:oracle:thin:@localhost:1521:XE";//Url por defecto no se modifique
    String usuario="ADMINBEAGCLOTHING"; //nombre de usuario en el que esta la BD  
                                        //PD: no es el nombre de conexion de sql developer
    String password="root";// contraseña de usuario
    
    public Connection conectar(){
       try{
            Class.forName("oracle.jdbc.driver.OracleDriver");//conectarse a la libreria primero debe 
                                                                //agregar la dependencia 
            con=DriverManager.getConnection(url, usuario, password);//aqui se conecta con la BD
        }catch(ClassNotFoundException | SQLException ex){
             JOptionPane.showMessageDialog(null, ex.getMessage());//si hay problemas muesta el error
        }
        return con;//retorna la conexion
    }
}
