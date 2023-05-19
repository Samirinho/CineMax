package uf56projectestreaming.bbdd;


import java.sql.Connection;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import uf56projectestreaming.model.Produccions;
/**
 *
 * @author DAM
 */
public class ProduccioDAO{
    
    
//    public Produccions consultaProduccio (int Id) {
//        Connection con = Connexio.getConection();
//        
//        Produccions produccio = null;
//        
//        String sentenciaSql = "SELECT id_produccio, nom, nacionalitat, any, favorit" + "FROM produccions WHERE id_produccio = ?";
//        
//        try (PreparedStatement ps = con.prepareStatement(sentenciaSql)) {
//            ps.setInt(1, Id);
//            ResultSet rs = ps.executeQuery();
//            if (rs.next()) {
//                produccio = dadesBDProduccio(rs);
//            }
//        } catch (SQLException sqle) {
//            sqle.printStackTrace();
//        }
//        
//        return produccio;
//    }
    
    private Produccions dadesBDProduccio (ResultSet rs) throws SQLException {
        Produccions p = new Produccions();
        
        p.setIdProduccio(rs.getInt("id_produccio"));
        p.setNom(rs.getString("nom"));
        p.setAny(rs.getInt("any"));
        //p.setNacionalitat(rs.getString("nacionalitat"));
        //p.setFavorit(rs.getInt("favorit"));
        
        return p;
    }
    
    private void dadesProduccioBD (PreparedStatement ps, Produccions p) throws SQLException {
        ps.setInt(1, p.getIdProduccio());
        ps.setString(2, p.getNom());
        //ps.setString(3, p.getNacionalitat());
        ps.setInt(4, p.getAny());
        //ps.setInt(5, p.getFavorit());
    }
    
}
