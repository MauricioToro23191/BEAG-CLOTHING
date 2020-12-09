package Modelo;

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
            host = "smtp.gmail.com",
            port  = "465";
    
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
            Transport transport = session.getTransport("smtp");
            transport.connect(this.host, this.usuario, this.contrasena);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            return true;
        } catch (MessagingException mex)
        {
            mex.printStackTrace();
            return false;
        }
    }
    
    public synchronized boolean confirmarPedido(Usuario usuario, List<Carrito> carrito, Pedido pedido){
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

        String mensaje = ""
                + "<div style=\"margin: 0 15%;\"><h1 style=\"text-align: center;\">Confirmaci&oacute;n del pedido</h1><hr><br></div>"
                + "<div style=\"margin: 0 20%;\"><p style=\"text-align: left;\"><b>" + usuario.getNombre1() + "<br />" 
                + usuario.getDireccion() + "<br />" + usuario.getMunicipio() + "<br />"
                + usuario.getIdentificacion() + "</b></p>"
                + "<p style=\"text-align: right;\">Cliente: " + usuario.getId()
                + "<br>Confirmaci&oacute;n de pedido n&deg;: " + pedido.getId()
                + "<br>Fecha de confirmaci&oacute;n: " + pedido.getFechaPedido() + "</p>"
                + "<p style=\"text-align: left;\"><br>Estimado/a <b>" + usuario.getNombre1() + " " + usuario.getApellido1() + "</b>,<br>"
                + "<br>Muchas gracias por su compra, le enviaremos un correo de nuevo cuando su orden sea procesada.<br><br>"
                + "A continuaci&oacute;n encontrar&aacute; una lista detallada del pedido realizado: "
                + "</p></div>";
        
        
        
        try
        {
            Session session = Session.getDefaultInstance(props, null);
            session.setDebug(true);
            MimeMessage msg = new MimeMessage(session);
            msg.setContent(mensaje, "text/html");
            
            msg.setSubject("BEAG - Confirmación de la orden " + pedido.getId());
            msg.setFrom(new InternetAddress(this.usuario));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(usuario.getCorreo()));

            msg.saveChanges();
            Transport transport = session.getTransport("smtp");
            transport.connect(this.host, this.usuario, this.contrasena);
            transport.sendMessage(msg, msg.getAllRecipients());
            transport.close();
            return true;
        } catch (MessagingException mex)
        {
            JOptionPane.showMessageDialog(null, mex.getMessage());
            return false;
        }
    }
}

