/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package CapaPersistencia;

import CapaException.BDException;
import CapaLogica.Inasistencia;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author renzo
 */
public class PersistenciaInasistencias {
        
    private static final String SQLGuardar = ("INSERT INTO PROYECTOJ.Inasistencia(nombre,apellido,materia,grupo,fechaInicio,fechaFinal)VALUES (?,?,?,?,?,?)");
    private static final String SQL_Eliminar = ("DELETE FROM PROYECTOJ.Inasistencia WHERE id= ?");
    private static final String SQL_INICIAR_SESION = ("SELECT * FROM PROYECTOJ.Administracion WHERE cedula = ? AND contrasenia = ?");
    private static final String SQL_LISTAR = ("SELECT id, nombre, apellido, materia, grupo, fechaInicio, fechaFinal FROM PROYECTOJ.Inasistencia");
    public Conexion cone = new Conexion();
    public PreparedStatement ps;
    public ResultSet rs;
    
    public void guardarInasistencia(Inasistencia inasistencia) throws Exception, SQLException {
        try {
            int resultado = 0;
            Connection con = Conexion.getConnection();
            ps = (PreparedStatement) con.prepareStatement(SQLGuardar);
            ps.setString(1, inasistencia.getNombre());
            ps.setString(2, inasistencia.getApellido());
            ps.setString(3, inasistencia.getMateria());
            ps.setString(4, inasistencia.getGrupo());
            ps.setString(5, inasistencia.getFechaInicio());
            ps.setString(6, inasistencia.getFechaFinal());
            resultado = ps.executeUpdate();
        }
    catch (SQLException e) {
            throw new Exception("Tuve un problema con la base");
            
        }
}
public List<Inasistencia> obtenerTodas() throws Exception {
    List<Inasistencia> lista = new ArrayList<>();
    String sql = "SELECT nombre, apellido, materia, grupo, fechaInicio, fechaFinal FROM PROYECTOJ.Inasistencia";
    
    try (Connection con = Conexion.getConnection();
         PreparedStatement ps = con.prepareStatement(sql);
         ResultSet rs = ps.executeQuery()) {

        while (rs.next()) {
            Inasistencia i = new Inasistencia();
            i.setNombre(rs.getString("nombre"));
            i.setApellido(rs.getString("apellido"));
            i.setMateria(rs.getString("materia"));
            i.setGrupo(rs.getString("grupo"));
            i.setFechaInicio(rs.getString("fechaInicio"));
            i.setFechaFinal(rs.getString("fechaFinal"));
            lista.add(i);
        }
    } catch (SQLException e) {
        throw new Exception("Error al obtener inasistencias: " + e.getMessage());
    }

    return lista;
}

public boolean eliminarInasistencia(String nombre, String apellido, String materia, String grupo, String fechaInicio, String fechaFinal) throws Exception {
    String sql = "DELETE FROM Inasistencia WHERE nombre=? AND apellido=? AND materia=? AND grupo=? AND fechaInicio=? AND fechaFinal=?";
    try (Connection con = Conexion.getConnection();
         PreparedStatement ps = con.prepareStatement(sql)) {

        ps.setString(1, nombre);
        ps.setString(2, apellido);
        ps.setString(3, materia);
        ps.setString(4, grupo);
        ps.setString(5, fechaInicio);
        ps.setString(6, fechaFinal);

        int filasAfectadas = ps.executeUpdate();
        return filasAfectadas > 0;
    }
}


    public boolean iniciarSesion(String cedula, String contrasenia) throws Exception{
       boolean valido = false;
       try (Connection con = Conexion.getConnection();
         PreparedStatement ps = con.prepareStatement(SQL_INICIAR_SESION)) {

        ps.setString(1, cedula);
        ps.setString(2, contrasenia);
        try (ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                valido = true; 
            }
        }

    } catch (SQLException e) {
        throw new Exception("Error al validar inicio de sesión: " + e.getMessage());
    }

    return valido;
}
    }

