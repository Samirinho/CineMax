package uf56projectestreaming.bbdd;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import uf56projectestreaming.model.Series;

public class SerieDAO {
    
//    public Series consultaSerieBD(int id) {
//        
//        Connection con = Connexio.getConection();
//        
//        Series s = null;
//        
//        String sentenciaSql = "SELECT COUNT(e.id_produccio), num_capitols, SUM(e.durada) duradatotal FROM series s, episodis e WHERE s.id_produccio = ? s.id_produccio = e.id_produccio";
//        
//                try (PreparedStatement ps = con.prepareStatement(sentenciaSQL)){
//            
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            
//            if (rs.next()) {
//                s = dadesBDSerie(id,rs);
//            }
//            
//        } catch (SQLException sqle) {
//            sqle.printStackTrace();
//        }
//        return s;
//    }
//    
//    private Series dadesBDSerie (int id, ResultSet rs) throws SQLException {
//        
//        Series s = new Series();
//        
//        s.setId(id);
//        s.setDuradaTotal(rs.getDouble("duradatotal"));
//        s.setNumCapitols(rs.getInt("numcapitols"));
//        
//        s.afegirCategoria(obtenirCategoria(id));
//        s.afegirDirector(obtenirDirector(id));
//        s.afegirActor(obtenirActor(id));
//        
//        return s;
//        
//    }
    
//    private String obtenirCategoria (int idProduccio) {
//        
//        Connection con = Connexio.getConnection();
//        
//        String categoria = " ";
//        
//        String sentenciaSql = "SELECT nom_categoria FROM pertany pert, categoria cat WHERE pert.id_produccio = ? AND pert.id_categoria = cat.id_categoria";
//        
//        try (PreparedStatement ps = con.prepareStatement(sentenciaSQL)){
//            
//            ps.setInt(1, idProduccio);
//            ResultSet rs = ps.executeQuery();
//            
//            if (rs.next()) {
//                return rs.getString("nom_categoria");
//            }
//        } catch (SQLException sqle) {
//            sqle.printStackTrace();
//        }
//        
//        return categoria;
//        
//    }
    
}
