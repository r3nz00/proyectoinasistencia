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
    public void guardarInasistencia(Inasistencia inas) throws Exception {
    PersistenciaInasistencias ina = new PersistenciaInasistencias();
    ina.guardarInasistencia(inas);
    }

    public boolean login(String cedula, String contrasenia) throws Exception {
    PersistenciaInasistencias p = new PersistenciaInasistencias();
    return p.iniciarSesion(cedula, contrasenia);
}
}