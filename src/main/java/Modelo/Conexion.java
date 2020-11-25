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
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    String usuario="ADMINBEAGCLOTHING";
    String password="root";
    
    public Connection conectar(){
       try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url, usuario, password);
        }catch(ClassNotFoundException | SQLException ex){
             JOptionPane.showMessageDialog(null, ex.getMessage());
        }
        return con;
    }
}
