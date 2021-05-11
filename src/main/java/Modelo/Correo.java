package Modelo;

import ModeloDAO.CarritoDAO;
import ModeloDAO.ProductoDAO;
import ModeloDAO.UsuarioDAO;
import java.awt.HeadlessException;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
import javax.swing.JOptionPane;


/**
 *
 * @author Santiago-Agudelo
 */
public class Correo {
    
    String  usuario = "beagclothingppi@gmail.com",
            contrasena = "BeagClothing123",
            host = "smtp.gmail.com";
    int     port  = 587 ;
    
    public synchronized boolean sendMail(String para, String asunto,String mensaje){
        Properties props = new Properties();
        props.put("mail.smtp.user", this.usuario );
        props.put("mail.smtp.host", this.host);
        props.put("mail.smtp.port", this.port);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.socketFactory.port", this.port);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");

        try
        {
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);
            MimeMessage msg = new MimeMessage(session);
            msg.setContent(mensaje, "text/html");
            msg.setSubject(asunto);
            msg.setFrom(new InternetAddress(this.usuario));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(para));

            msg.saveChanges();
            Transport transport = session.getTransport();
            transport.connect(this.host, this.usuario, this.contrasena);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            return true;
        } catch (MessagingException mex )
        {
            mex.printStackTrace();
            return false;
        }
    }
    
    public synchronized boolean confirmarPedido(Usuario usuario, List<Carrito> carrito){
        UsuarioDAO dao = new UsuarioDAO ();
        ProductoDAO daoP= new ProductoDAO();
        CarritoDAO daoC=new CarritoDAO();
        Pedido ulPedido= daoC.obtenerUltimoPE();
        Properties props = new Properties();
        props.put("mail.smtp.user", "mauriciotoro911@gmail.com" );
        props.put("mail.smtp.host", this.host);
        props.put("mail.smtp.port", this.port);
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.socketFactory.port", this.port);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");

        String mensaje = ""
                + "<div style=\"margin: 0 15%;\"><h1 style=\"text-align: center;\">Confirmaci&oacute;n del pedido</h1><hr><br></div>"
                + "<div style=\"margin: 0 20%;\"><p style=\"text-align: left;\"><b>" + usuario.getNombre1() + "<br />" 
                + usuario.getDireccion() + "<br />" + dao.obtenerMunicipioID(usuario.getMunicipio()).getNombre() + "<br />"
                + usuario.getIdentificacion() + "</b></p>"
                + "<p style=\"text-align: right;\">Cliente: " + usuario.getId()
                + "<br>Confirmaci&oacute;n de pedido n&deg;: " + ulPedido.getId()
                + "<br>Fecha de confirmaci&oacute;n: " + ulPedido.getFechaPedido().toString() + "</p>"
                + "<p style=\"text-align: left;\"><br>Estimado/a <b>" + usuario.getNombre1() + " " + usuario.getApellido1() + "</b>,<br>"
                + "<br>Muchas gracias por su compra, le enviaremos un correo de nuevo cuando su orden sea procesada.<br><br>"
                + "A continuaci&oacute;n encontrar&aacute; una lista detallada del pedido realizado: "
                + "</p>"
                + "<p>Subtotal del pedido: $ "+ulPedido.getTotal()+"</p><br>"
                + "<p>Costo de envio: $ "+ulPedido.getCostoEnvio()+"</p><br>"
                + "<p>Precio a Pagar: $ "+ulPedido.getTotal()+"</p></div></div>";
        
        mensaje+="<table  border=\"1\"><thead><tr><th>Nombre</th><th>cantidad</th><th>precio</th><th>total</th></tr></thead><tbody>";
                for(Carrito c: carrito){
                    Producto p = daoP.ObtenerXId(c.getP());
                    mensaje+="<tr><td>"+p.getNombre()+"</td><td>"+c.getCantidad()+"</td><td>"+p.getPrecio()+"</td><td>"+(c.getCantidad()*p.getPrecio())+"</td></tr>";
                }
        mensaje+=" </tbody></table>";
        
        
        
        try
        {
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);
            MimeMessage msg = new MimeMessage(session);
            msg.setContent(mensaje, "text/html");
            
            msg.setSubject("BEAG - Confirmación de la orden " + ulPedido.getId());
            msg.setFrom(new InternetAddress("mauriciotoro911@gmail.com"));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress("adrianaalvaraez12@gmail.com"));

            msg.saveChanges();
            Transport transport = session.getTransport("smtp");
            transport.connect(this.host, "mauriciotoro911@gmail.com", "adriana123456789");
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            JOptionPane.showMessageDialog(null, "Se envio un correo con los datos del pedido a su correo electronico, "
                    + "/r/npronto nos comunicaremos para ultimar detalles del pedido");
            return true;
        } catch (HeadlessException | MessagingException mex)
        {
            JOptionPane.showMessageDialog(null, mex.getMessage());
            return false;
        }
    }
}

