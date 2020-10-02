package Modelo;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author mauri
 */
public class Conexion {
    Connection con;
    String url="jdbc:oracle:thin:@localhost:1521:xe";
    String usuario="ejemplo";
    String password="root";
    
    public Connection conectar(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url, usuario, password);
        }catch(Exception ex){
            
        }
        
        
        
        return con;
    }
}
