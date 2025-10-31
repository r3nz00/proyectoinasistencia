/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CapaLogica;

import CapaException.BDException;
import CapaPersistencia.PersistenciaInasistencias;
import java.sql.SQLException;

/**
 *
 * @author renzo
 */
public class Fachadainasistencias {
    
    public void guardarInasistencia(Licencia lice) throws Exception {
    PersistenciaInasistencias licen = new PersistenciaInasistencias();
    lice.guardarInasistencia(licen);
    }
}