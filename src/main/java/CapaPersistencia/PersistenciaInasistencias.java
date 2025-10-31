/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CapaPersistencia;

import CapaException.BDException;
import CapaLogica.Inasistencia;

import CapaLogica.Licencia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author renzo
 */
public class PersistenciaInasistencias {
        
    private static final String SQLGuardar = ("INSERT INTO PROYECTO.Inasistencia(apellido,fechaFin,fechaInicio,grupo,materia,nombre)VALUES (?,?,?,?,?,?)");
    private static final String SQL_Eliminar = ("DELETE FROM PROYECTO WHERE id= ?");
    private static final String SQL_INICIAR_SESION = ("SELECT * FROM PROYECTO.ADMINISTRACION WHERE Cedula = ? AND Contrasena = ?");
    public Conexion cone = new Conexion();
    public PreparedStatement ps;
    public ResultSet rs;
    
    public void guardarInasistencia(Inasistencia guardar) throws Exception, SQLException {
        try {
            int resultado = 0;
            Connection con = cone.getConnection();
            ps = (PreparedStatement) con.prepareStatement(SQLGuardar);
            ps.setString(1, guardar.getapellido());
            ps.setString(2, guardar.getfechaFin());
            ps.setString(3, guardar.getfechaInicio());
            ps.setString(4, guardar.getgrupo());
            ps.setString(5, guardar.getmateria());
            ps.setString(6, guardar.getnombre());
            resultado = ps.executeUpdate();
        }
    catch (SQLException e) {
            throw new Exception("Tuve un problema con la base");
            
        }
}
}
