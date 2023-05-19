package uf56projectestreaming.model;

import java.util.ArrayList;

public class Series extends Produccions {
    private int numCapitols;
    private double duradaTotal;
    
    private ArrayList<String> categories;
    private ArrayList<String> directors;
    private ArrayList<String> actors;
    
    public Series () {
        this.actors = new ArrayList();
        this.directors = new ArrayList();
        this.categories = new ArrayList();
    }
    
    public Series (int numCapitols,int duradaTotal,String nom,int any,String genere, String categoria, String director, String actor) {
        //super(nom,any,genere,categoria,director,actor);
        this.numCapitols = numCapitols;
        this.actors =new ArrayList();
        this.directors = new ArrayList();
        this.categories = new ArrayList();
        
        this.categories.add(categoria);
        this.directors.add(director);
        this.actors.add(actor);
    }
    
    public void afegirDirector (String director) {
        this.directors.add(director);
    }
    
    public void afegirActor (String actor) {
        this.actors.add(actor);
    }
    
    public void afegirCategoria (String categoria) {
        this.categories.add(categoria);
    }
    
    public String getDirector (int pos) {
        if (pos <= directors.size() - 1) {
            return this.directors.get(pos);
        }
        return "";
    }
    
}
