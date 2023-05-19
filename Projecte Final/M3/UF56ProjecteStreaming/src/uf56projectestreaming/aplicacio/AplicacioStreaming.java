package uf56projectestreaming.aplicacio;

import javafx.application.Application;
/*IMPORTS DE LES LLIBRERIES PER FER LA INTERFICIE GRAFICA*/
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.RadioButton;
import javafx.scene.control.TextField;
import javafx.scene.control.ToggleGroup;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.CornerRadii;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.stage.Stage;
import uf56projectestreaming.bbdd.ConexionBDSingleton;
import uf56projectestreaming.bbdd.ProduccioDAO;
import uf56projectestreaming.model.Produccions;
/*import de la llibreries mysql per poder fer les connexions*/


public class AplicacioStreaming extends Application{
    
    String txtProductora;
    
    BorderPane bp = new BorderPane();
    
    Label lblId= new Label();
    
    TextField txtId = new TextField();
    
    Label lblNom = new Label();
    
    TextField txtNom = new TextField();
    
    Label lblAny = new Label();
    
    TextField txtAny = new TextField();
    
    Label lblNacionalitat = new Label();
    
    TextField txtNacionalitat = new TextField();
    
    Label lblCategoria = new Label();
    
    TextField txtCategoria = new TextField();
    
    Label lblDirector = new Label();
    
    TextField txtDirector = new TextField();
    
    Label lblActor = new Label();
    
    TextField txtActor = new TextField();
    
    Label lblFavorit = new Label();
    
    TextField txtFavorit = new TextField();
    
    RadioButton rb1 = new RadioButton();
    
    RadioButton rb2 = new RadioButton();
        
    public static void main(String[] args) {
        Application.launch(args);
    }   
    
    @Override
    public void start (Stage escenari) throws Exception {
        
        ConexionBDSingleton.getConection();
        
        bp.setTop(top());
        
        bp.setCenter(centerGestioProduccio());
        
        bp.setLeft(left());
        
        //bp.setBottom(lbl);
        
        //bp.setRight(bp);
        
        /*CREEM UN NODE*/
        Label lblSaluda = new Label ("Benvingut a JavaFX");
        
        TextField txtMsg = new TextField();
 
        // CREEEM UN CONTENIDOR VERTICAL
        VBox vb = new VBox();
        //Afegim el node al contenidor
        vb.getChildren().addAll(lblSaluda,txtMsg);
        //Creem una escena amb contenidor
        Scene escena = new Scene (bp);
        
        escenari.setMinHeight(1000);
        
        escenari.setMinWidth(1000);
        
        escenari.setScene(escena);
        
        escenari.setTitle("CINEMAX");
        
        escenari.show();
        
    }
    
    private HBox top () {
        
        HBox hb = new HBox ();
        
        Label lbltitol = new Label ("Aplicacio Gestio CINEMAX");
        
        lbltitol.setFont(new Font("ArialBold",40));
        
        lbltitol.setTextFill(Color.WHITE);
        
        hb.getChildren().addAll(lbltitol);
        
        hb.setSpacing(30);
        
        hb.setPadding(new Insets(10,10,10,10));
        
        hb.setBackground(new Background(new BackgroundFill(Color.BLACK,CornerRadii.EMPTY,Insets.EMPTY)));
       
        hb.setMinHeight(200);
        
        hb.setAlignment(Pos.CENTER);
        
        return hb;
        
    }
    
    private VBox left () {
        
        VBox vb = new VBox();
        
        Label lbltitol = new Label ("GESTIO PRODUCCIONS");
        
        lbltitol.setFont(new Font("ArialBold",20));
        
        lbltitol.setTextFill(Color.WHITESMOKE);
        
        vb.getChildren().add(lbltitol);
        
        Button btnPelis = new Button ("Gestio Pelicules/Series");
        
        btnPelis.setMinWidth(80);
        
        //Desenvoluparem l'accio que tindra el boto
        btnPelis.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent e) {
                bp.setCenter(centerGestioProduccio());
            }
        });
       
        vb.getChildren().add(btnPelis);
                
        Label lbltitol2 = new Label ("Estadistiques");
        
        lbltitol2.setFont(new Font("ArialBold",20));
        lbltitol2.setTextFill(Color.WHITESMOKE);
        
        vb.getChildren().add(lbltitol2);
        
        Button btnContractes = new Button ("Contractes Clients Tarifa");
        
        btnContractes.setMinWidth(80);
        
        vb.getChildren().add(btnContractes);
        
        Button produccionsFavorits = new Button ("Produccions Favorits");
        
        produccionsFavorits.setMinWidth(80);
        
        vb.getChildren().add(produccionsFavorits);
        
        vb.setAlignment(Pos.CENTER);
        vb.setSpacing(30);
        vb.setPadding(new Insets (10,10,10,10));
        vb.setMinSize(180, 100);
        vb.setBackground(new Background(new BackgroundFill(Color.GREY, CornerRadii.EMPTY,Insets.EMPTY)));
        
        return vb;
        
    }
    
    private VBox centerGestioProduccio () {
        
        VBox vb = new VBox();
        
        Label lblPelis = new Label ("GESTIO PRODUCCIONS");
        
        lblPelis.setFont(new Font("ArialBold",30));
        
        lblPelis.setTextFill(Color.RED);
        
        VBox vbElem = dadesProduccio();
        
        HBox hbBotons = botonsGestio();
        
        hbBotons.setMinHeight(250);
        
        hbBotons.setSpacing(10);
        
        hbBotons.setAlignment(Pos.CENTER);

        vb.getChildren().addAll(lblPelis,vbElem ,hbBotons);
        
        vb.setAlignment(Pos.CENTER);
        
        vb.setSpacing(10);
        
        return vb;
        
    }
    
    private VBox dadesProduccio () {
        
        VBox vb = new VBox();
        
        Label lblProduccions = new Label ("GESTIO PRODUCCIONS");
        
        lblProduccions.setFont(new Font("ArialBold",20));
        
        lblProduccions.setTextFill(Color.RED);
        
        lblId = new Label ("Id");
        
        txtId = new TextField();
        
        lblNom = new Label("Nom");
        
        txtNom = new TextField();
        
        lblAny = new Label ("Any");
        
        txtAny = new TextField ();
        
        lblNacionalitat = new Label ("Nacionalitat");
        
        txtNacionalitat = new TextField();
        
        lblCategoria = new Label ("Categoria");
        
        txtCategoria = new TextField();
        
        lblDirector = new Label("Director");
        
        txtDirector = new TextField();
        
        lblActor = new Label ("Actor");
        
        txtActor = new TextField();
        
        lblFavorit = new Label("Favorit");
        
        txtFavorit = new TextField();

        rb1 = new RadioButton ("Pel·licula");
        
        rb2 = new RadioButton("Serie");
        
        ToggleGroup tg = new ToggleGroup();
        
        rb1.setToggleGroup(tg);
        rb2.setToggleGroup(tg);
        
        GridPane gp = new GridPane();
        
        gp.add(lblId, 0, 0, 1, 1);
        gp.add(txtId, 1, 0, 1, 1);
        gp.add(lblNom, 0, 1, 1, 1);
        gp.add(txtNom, 1, 1, 1, 1);
        gp.add(lblAny, 0, 2, 1, 1);
        gp.add(txtAny, 1, 2, 1, 1);
        
        gp.add(lblNacionalitat, 0, 3, 1, 1);
        gp.add(txtNacionalitat, 1, 3, 1, 1);
        
        gp.add(lblCategoria, 0, 4, 1, 1);
        gp.add(txtCategoria, 1, 4, 1, 1);
        gp.add(lblDirector, 0, 5, 1, 1);
        gp.add(txtDirector, 1, 5, 1, 1);
        gp.add(lblActor, 0, 6, 1, 1);
        gp.add(txtActor, 1, 6, 1, 1);
        gp.add(lblFavorit, 0, 7, 1, 1);
        gp.add(txtFavorit, 1, 7, 1, 1);
        gp.add(rb1, 0, 8, 1, 1);
        gp.add(rb2, 1, 8, 1, 1);
        
        gp.setAlignment(Pos.CENTER);
        
        gp.setHgap(10);
        
        gp.setVgap(10);
        
        vb.setSpacing(20);
        
        vb.getChildren().add(gp);
        
        vb.setAlignment(Pos.CENTER);
        
        return vb;
        
    }
    

    
    private HBox botonsGestio () {
        
        Button btnConsulta = new Button ("Consulta");
        Button btnAlta = new Button ("Alta");
        Button btnModificacio = new Button ("Modificacio");
        Button btnBaixa = new Button ("Baixa");
        Button btnInicialitza = new Button ("Inicialitza");
        
        btnConsulta.setOnAction(e -> consultaProduccio());
        
        
        btnAlta.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent e) {
                System.out.println("Alta peli...");
                //altaProduccio();
            }
        });
        
        
        btnModificacio.setOnAction(new EventHandler<ActionEvent>() {
            @Override
            public void handle(ActionEvent event) {
                System.out.println("Modificant Pelicula...");
                //modificaProduccio();
            }
        });
        
        //btnInicialitza.setOnAction((e -> inicialitzarCampsPantallaProduccio()));
       
        HBox hbBotons = new HBox(btnConsulta, btnAlta, btnModificacio, btnBaixa, btnInicialitza);
        
        return hbBotons;

    }
    
    private void consultaProduccio () {
        
        if (txtId.getText().equals("")) {
            alertWarning("Has d'introduir un ID");
        } else {
            
            //els camps de la pantalla son text, cal convertir els que son numerics
            
            int id = Integer.parseInt(txtId.getText());
            
            //inicialitzarCampsPantallaProduccio();
            
            ProduccioDAO prodDAO = new ProduccioDAO();
            
            //Produccions produccio = prodDAO.consultaProduccio(id);
            
//            if (produccio == null) {
//                alertInformacio("No existeix aquest identificador de produccio");
//            } else {
//                //dadesProduccionsAPantalla(produccio);
//                
//                //PeliculaDAO 
//            }
            
            
        }
    }
    
    private void altaProduccio () {
        if (txtId.getText().equals("")) {
            alertWarning("Has d'introduir un ID");
        } else {
            //aqui comencem a cridar la BD
        }
    }
   
    private void modificaProduccio () {
        if (txtId.getText().equals("")) {
            alertWarning("Has d'introduir un ID");
        } else {
            //aqui cirdem a la BD
        }
    }
    
    private void alertWarning (String msg) {
        
        Alert alert = new Alert (Alert.AlertType.WARNING);
        alert.setHeaderText(null);
        alert.setTitle("Warning");
        alert.setContentText(msg);
        alert.showAndWait();
        
    }
    private void alertInformacio (String msg) {
        
        Alert alert = new Alert (Alert.AlertType.INFORMATION);
        alert.setHeaderText(null);
        alert.setTitle("Informacio");
        alert.setContentText(msg);
        alert.showAndWait();
        
    }
    
    private void alertError (String msg) {
        Alert alert = new Alert (Alert.AlertType.ERROR);
        alert.setHeaderText(null);
        alert.setTitle("Error");
        alert.setContentText(msg);
        alert.showAndWait();
    }
    
    private void alertConfirmacio (String msg) {
        
        Alert alert = new Alert (Alert.AlertType.CONFIRMATION);
        alert.setHeaderText(null);
        alert.setTitle("Confirmacio");
        alert.setContentText(msg);
        alert.showAndWait();
        
    }
    
}
