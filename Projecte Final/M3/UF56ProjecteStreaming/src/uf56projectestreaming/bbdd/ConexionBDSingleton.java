package uf56projectestreaming.bbdd;

import java.sql.Connection;
import java.sql.DriverManager;

        
public class ConexionBDSingleton {
    
    private static Connection conexioBD = null;
    
    public static Connection getConection () {
        
        try {
            if (conexioBD == null) {             
                // jdcb:mysql://nom_servidor:port_servidor/nom_bd
                String servidor = "jdbc:mysql://localhost:3306/";
                String bbdd = "provacinemax";
                String user = "root";
                String password = "root";
                Class.forName("com.mysql.cj.jdbc.Driver");
                conexioBD = DriverManager.getConnection(servidor + bbdd,user,password);
                System.out.println("Connexio establerta.");
            }
        } catch (Exception ex) {
            System.out.println("No s'ha pogut connectar a la BD");
            ex.printStackTrace();
        }
        
        return conexioBD;

    }
}