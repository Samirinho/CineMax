CREATE DATABASE cinemax 
DEFAULT COLLATE "latin1_spanish_ci"; 
USE cinemax;

CREATE TABLE if NOT EXISTS clients (
	ID_Client INT(11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR(20) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Telefon INT(11) NOT NULL,
	DNI VARCHAR(9) NOT NULL,
	Edat INT(11)NOT NULL,
	Adreça VARCHAR(50)NOT NULL,
	Nacionalitat VARCHAR(50) NOT NULL,
	Num_Tarjeta INT(11) NOT NULL,
	Num_Compte_Banc INT(11),
	
	PRIMARY KEY (ID_Client),
	);
	
-- ---------------------------------------------------
	
CREATE TABLE if NOT EXISTS modalitat (
	
	ID_Modalitat INT(11) AUTO_INCREMENT NOT NULL,
	Tipus ENUM ('Gratuita', 'Bàsica' , 'Premium'),
	
	PRIMARY KEY (ID_Modalitat),
	
	);
	
-- ---------------------------------------------------	
	
CREATE TABLE if NOT EXISTS compte (
	
	ID_Compte INT(11) AUTO_INCREMENT NOT NULL,
	ID_Client INT(11) AUTO_INCREMENT NOT NULL,
	ID_Modalitat INT(11) AUTO_INCREMENT NOT NULL,
	Usuari VARCHAR(20) NOT NULL,
	Contrasenya VARCHAR(20) NOT NULL,
	Data_alta DATE NOT null,
	
	
	PRIMARY KEY (ID_Compte),
	CONSTRAINT fk_comptes_clients FOREIGN KEY (ID_Client) REFERENCES clients (ID_Clients) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_comptes_modalitat FOREIGN KEY (ID_Modalitat) REFERENCES modalitat (ID_Modalitat) ON UPDATE NO ACTION ON DELETE NO ACTION	
	
	);
-- ---------------------------------------------------	
CREATE TABLE if NOT EXISTS factura (
	
	ID_Factura INT(11) AUTO_INCREMENT NOT NULL,
	
	PRIMARY KEY (ID_Factura),
	CONSTRAINT fk_factures_comptes FOREIGN KEY (ID_Compte) REFERENCES comptes (ID_Comptes) ON UPDATE NO ACTION ON DELETE NO ACTION
	);
-- ---------------------------------------------------
CREATE TABLE if NOT EXISTS produccions (
	
	ID_Produccions INT(11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR(20) NOT NULL,
	Nacionalitat(20) NOT NULL,
	Anys DATE NOT NULL,
	Preferit TINYINT NOT NULL,
	
	PRIMARY KEY (ID_Produccions),
	);
-- ---------------------------------------------------

CREATE TABLE if NOT EXISTS genere (
	
	ID_Categoria INT(11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR(20) NOT NULL,

	
	PRIMARY KEY (ID_Categoria),
	);
-- ---------------------------------------------------
CREATE TABLE if NOT EXISTS pelicula (
	
	ID_Produccio INT(11) AUTO_INCREMENT NOT NULL,
	Durada INT(11) NOT NULL,

	
	PRIMARY KEY (ID_Produccio),
	CONSTRAINT fk_pelicules_produccio FOREIGN KEY (ID_Produccio) REFERENCES produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
	
	);
	
-- ---------------------------------------------------
CREATE TABLE if NOT EXISTS series (
	
	ID_Produccio INT(11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR(20) NOT NULL,

	
	PRIMARY KEY (ID_Produccio),
	CONSTRAINT fk_pelicules_produccio FOREIGN KEY (ID_Produccio) REFERENCES produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
	
	);

-- ---------------------------------------------------
CREATE TABLE if NOT EXISTS director (
	
	ID_Director INT(11) AUTO_INCREMENT NOT NULL,
	Nom_Director VARCHAR(20) NOT NULL,
	Nacionalitat VARCHAR(20) NOT NULL,

	
	PRIMARY KEY (ID_Director),
	
	);
