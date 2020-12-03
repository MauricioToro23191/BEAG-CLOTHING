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
public class Pedido {
    int id;
    float Total;
    float costoEnvio;
    LocalDate fechaPedido;
    LocalDate FechaEntrega;
    EstadoPedido estado;
    Usuario u;

    public Pedido(int id, float Total, float costoEnvio, LocalDate fechaPedido, LocalDate FechaEntrega, EstadoPedido estado, Usuario u) {
        this.id = id;
        this.Total = Total;
        this.costoEnvio = costoEnvio;
        this.fechaPedido = fechaPedido;
        this.FechaEntrega = FechaEntrega;
        this.estado = estado;
        this.u = u;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getTotal() {
        return Total;
    }

    public void setTotal(float Total) {
        this.Total = Total;
    }

    public float getCostoEnvio() {
        return costoEnvio;
    }

    public void setCostoEnvio(float costoEnvio) {
        this.costoEnvio = costoEnvio;
    }

    public LocalDate getFechaPedido() {
        return fechaPedido;
    }

    public void setFechaPedido(LocalDate fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    public LocalDate getFechaEntrega() {
        return FechaEntrega;
    }

    public void setFechaEntrega(LocalDate FechaEntrega) {
        this.FechaEntrega = FechaEntrega;
    }

    public EstadoPedido getEstado() {
        return estado;
    }

    public void setEstado(EstadoPedido   estado) {
        this.estado = estado;
    }

    public Usuario getU() {
        return u;
    }

    public void setU(Usuario u) {
        this.u = u;
    }
    
    
    
}
