/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.time.LocalDate;

/**
 *
 * @author mauri
 */
public class Producto {
    int id;
    String Nombre;
    LocalDate fecha;
    float precio ;
    int cantidad;
    String color;
    String Foto;
    String estado;
    String Genero;
    int id_talla;
    int id_tipo; 

    
    public Producto(){
        
    }
    
    public Producto(int id, String Nombre, LocalDate fecha, float precio, int cantidad, String color, String Foto, String estado, String Genero, int id_talla, int id_tipo) {
        this.id = id;
        this.Nombre = Nombre;
        this.fecha = fecha;
        this.precio = precio;
        this.cantidad = cantidad;
        this.color = color;
        this.Foto = Foto;
        this.estado = estado;
        this.Genero = Genero;
        this.id_talla = id_talla;
        this.id_tipo = id_tipo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getFoto() {
        return Foto;
    }

    public void setFoto(String Foto) {
        this.Foto = Foto;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getGenero() {
        return Genero;
    }

    public void setGenero(String Genero) {
        this.Genero = Genero;
    }

    public int getId_talla() {
        return id_talla;
    }

    public void setId_talla(int id_talla) {
        this.id_talla = id_talla;
    }

    public int getId_tipo() {
        return id_tipo;
    }

    public void setId_tipo(int id_tipo) {
        this.id_tipo = id_tipo;
    }
    
    
    
}
