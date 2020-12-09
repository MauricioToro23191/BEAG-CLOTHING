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
    String descripcion;
    int id_talla;
    int id_tipo; 
    int id_categoria;

    
    public Producto(){
        
    }

    public Producto(int id, String Nombre, LocalDate fecha, float precio, int cantidad, String color, String Foto, String estado, String descripcion, int id_talla, int id_tipo, int id_categoria) {
        this.id = id;
        this.Nombre = Nombre;
        this.fecha = fecha;
        this.precio = precio;
        this.cantidad = cantidad;
        this.color = color;
        this.Foto = Foto;
        this.estado = estado;
        this.descripcion = descripcion;
        this.id_talla = id_talla;
        this.id_tipo = id_tipo;
        this.id_categoria = id_categoria;
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

    public int getId_categoria() {
        return id_categoria;
    }

    public void setId_categoria(int id_categoria) {
        this.id_categoria = id_categoria;
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Producto{" + "id=" + id + ", Nombre=" + Nombre + ", fecha=" + fecha + ", precio=" + precio + ", cantidad=" + cantidad + ", color=" + color + ", Foto=" + Foto + ", estado=" + estado + ", descripcion=" + descripcion + ", id_talla=" + id_talla + ", id_tipo=" + id_tipo + ", id_categoria=" + id_categoria + '}';
    }
    
    
}
