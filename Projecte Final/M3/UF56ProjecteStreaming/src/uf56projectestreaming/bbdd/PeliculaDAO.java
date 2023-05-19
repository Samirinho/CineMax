package uf56projectestreaming.bbdd;

import uf56projectestreaming.model.Pelicules;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;

public class PeliculaDAO {
    
    //public Pelicules consultaPeliculaBD (int id) {
        
        //Connection con = Connexio.getConection();
        
        //Pelicula p = null;
        
        //String sentenciaSQL = "SELECT durada FROM pelicules WHERE id_produccio = ?";
        
        //try (PreparedStatement ps = con.prepareStatement(sentenciaSQL)){
            
            //ps.setInt(1, id);
            //ResultSet rs = ps.executeQuery();
            
            //if (rs.next()) {
                //p = dadesBDPelicula(id,rs.getDouble("Durada"));
           // }
            
        //} catch (SQLException sqle) {
            //sqle.printStackTrace();
        //}
        //return p;
    //}
    
//    private Pelicules dadesBDPelicula (int id, double durada) {
//        Pelicules p = new Pelicules();
//        
//        p.setDurada(durada);
//        
//        p.afegirCategoria(obtenirCategoria(id));
//        p.afegirDirector(obtenirDirector(id));
//        p.afegirActor(obtenirActor());
//        
//        return p;
//    }
//    
//    private String obtenirDirector (int idProduccio) {
//        Connection con = Connexio.getConnection();
//        
//        String director = "";
//        
//        String sentenciaSql = "SELECT d.nom_director FROM dirigeix_pelicula dp, director d WHERE dp.id_director = ? AND dp.id_director = d.id_director";
//        
//        try (PreparedStatement ps = con.prepareStatement(sentenciaSql)){
//            
//            ps.setInt(1, idProduccio);
//            ResultSet rs = ps.executeQuery();
//            
//            if (rs.next()) {
//                return rs.getString("nom_director");
//            }
//            
//        } catch (SQLException sqle) {
//            sqle.printStackTrace();
//        }
//        
//        return director;
//    }
    
}
