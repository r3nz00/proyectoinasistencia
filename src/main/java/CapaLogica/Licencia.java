/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CapaLogica;

import CapaPersistencia.PersistenciaInasistencias;

/**
 *
 * @author renzo
 */
public class Licencia {
    private String Finicio;
    private String Ffinal;
    public String getCedula() {
        return Cedula;
    }

    public void setCedula(String Cedula) {
        this.Cedula = Cedula;
    }
    private String Cedula;
    private int ID;

    public String getFinicio() {
        return Finicio;
    }

    public void setFinicio(String Finicio) {
        this.Finicio = Finicio;
    }

    public String getFfinal() {
        return Ffinal;
    }

    public void setFfinal(String Ffinal) {
        this.Ffinal = Ffinal;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getFFinal() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    void guardarInasistencia(PersistenciaInasistencias licea) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
