package uf56projectestreaming.model;


public class Produccions {
    
    private int idProduccio;
    private String nom;
    private String nacionalitat;
    private int any;
    private boolean favorit;
    
    public Produccions () {
        
    }

    public Produccions(String nom, int any) {
        this.nom = nom;
        this.any = any;
    }
    
    
    
    public Produccions (int idProduccio,String nom, String nacionalitat, int any, boolean favorit) {
        
        this.idProduccio = idProduccio;
        this.nom = nom;
        this.any = any;
    }


    public void setIdProduccio(int idProduccio) {
        this.idProduccio = idProduccio;
    }

    public int getIdProduccio() {
        return idProduccio;
    }
    
    public void setNom(String nom) {
        this.nom = nom;
    }
    
    public String getNom() {
        return nom;
    }

    public void setAny(int any) {
        this.any = any;
    }
    
    public int getAny() {
        return any;
    }

}
