package Modelo;

import java.time.LocalDate;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author mauricio
 */
public class Usuario {
    private int id;
    private String identificacion;
    private String nombre1;
    private String nombre2;
    private String apellido1;
    private String apellido2;
    private String correo;
    private String contrasena;
    private LocalDate FechaNacimiento;
    private String direccion;
    private String telefono;
    private String celular;
    private int tipoUsuario;
    private int Municipio;

    
    public Usuario(){
        
    }

    public Usuario(int id, String identificacion, String nombre1, String nombre2, 
            String apellido1, String apellido2, String correo, String contrasena, 
            LocalDate FechaNacimiento, String direccion, String telefono,
            String celular, int tipoUsuario, int Municipio) {
        this.id = id;
        this.identificacion = identificacion;
        this.nombre1 = nombre1;
        this.nombre2 = nombre2;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.correo = correo;
        this.contrasena = contrasena;
        this.FechaNacimiento = FechaNacimiento;
        this.direccion = direccion;
        this.telefono = telefono;
        this.celular = celular;
        this.tipoUsuario = tipoUsuario;
        this.Municipio = Municipio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIdentificacion() {
        return identificacion;
    }

    public void setIdentificacion(String identificacion) {
        this.identificacion = identificacion;
    }

    public String getNombre1() {
        return nombre1;
    }

    public void setNombre1(String nombre1) {
        this.nombre1 = nombre1;
    }

    public String getNombre2() {
        return nombre2;
    }

    public void setNombre2(String nombre2) {
        this.nombre2 = nombre2;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public LocalDate getFechaNacimiento() {
        return FechaNacimiento;
    }

    public void setFechaNacimiento(LocalDate FechaNacimiento) {
        this.FechaNacimiento = FechaNacimiento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public int getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(int tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public int getMunicipio() {
        return Municipio;
    }

    public void setMunicipio(int Municipio) {
        this.Municipio = Municipio;
    }
  
}
