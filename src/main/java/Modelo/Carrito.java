/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author mauri
 */
public class Carrito {
    private int id;
    private int cantidad;
    private int p;
    private int u;

    public Carrito(int id, int cantidad, int p, int u) {
        this.id = id;
        this.cantidad = cantidad;
        this.p = p;
        this.u = u;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getP() {
        return p;
    }

    public void setP(int p) {
        this.p = p;
    }

    public int getU() {
        return u;
    }

    public void setU(int u) {
        this.u = u;
    }

    
    
    
}
