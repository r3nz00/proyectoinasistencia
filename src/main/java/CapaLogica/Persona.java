/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CapaLogica;

/**
 *
 * @author renzo
 */
public class Persona {
    private String Nombre;
    private String Apellido;
    private String Cedula;

    public String getNombre() {
        return Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public String getCedula() {
        return Cedula;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public void setCedula(String Cedula) {
        this.Cedula = Cedula;
    }
    public static void main(String[] args) {
    System.out.println("Prueba");
    }
}