-- CREACIO DE BASE DE DADES

CREATE DATABASE if NOT EXISTS provaCineMax DEFAULT COLLATE "latin1_spanish_ci";

USE provaCineMax;

-- CREACIONS TAULES

CREATE TABLE if NOT EXISTS Clients (
	ID_Client INT (11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR (20) NOT NULL, -- CHECK (Nom REGEXP '^[a-zA-Z]+$'),
	Email VARCHAR (50) NOT NULL, -- CHECK (Email REGEXP '^([a-zA-Z0-9]+[a-zA-Z0-9._-]*){5,29}[a-zA-Z0-9]{1}@[a-zA-Z0-9]+.{1}[a-zA-Z]{2,3}$'),
	Telefon INT (9) NOT NULL, -- CHECK (Telefon REGEXP '^[6-7-9]{1}[0-9]{8}$'),
	DNI VARCHAR (9) NOT NULL, -- CHECK (DNI REGEXP '^[0-9]{7}[a-zA-Z]{1}$'),
	Edat INT (11) NOT NULL,
	Adreça VARCHAR (50) NOT NULL,
	Nacionalitat VARCHAR (50) NOT NULL,
	Num_Tarjeta INT (11) NOT NULL, -- CHECK (Num_Tarjeta REGEXP '^[0-9]{16}+$'),
	Num_Compte_Banc VARCHAR (11) NOT NULL, -- CHECK (Num_Compte_Banc REGEXP '^[A-Z]{2}[0-9]{2}[ ][0-9]{4}[ ][0-9]{4}[ ][0-9]{2}[ ][0-9]{10}$'),

	PRIMARY KEY (ID_Client)
);

CREATE TABLE if NOT EXISTS Modalitat (
	ID_Modalitat INT (11) AUTO_INCREMENT NOT NULL,
	Tipus ENUM ("Gratuita","Basica","Premium") NOT NULL,
	
	PRIMARY KEY (ID_Modalitat)
);

CREATE TABLE if NOT EXISTS Compte (
	ID_Compte INT (11) AUTO_INCREMENT NOT NULL,
	ID_Client INT (11) NOT NULL,
	ID_Modalitat INT (11) NOT NULL,
	Nom_Usuari VARCHAR (20) NOT NULL,
	Contrasenya VARCHAR (20) NOT NULL,

	PRIMARY KEY (ID_Compte),
	CONSTRAINT fk_compte_clients FOREIGN KEY (ID_Client) REFERENCES Clients (ID_Client) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_compte_modalitat FOREIGN KEY (ID_Modalitat) REFERENCES Modalitat (ID_Modalitat) ON UPDATE NO ACTION ON DELETE NO ACTION	
);

CREATE TABLE if NOT EXISTS Factura (
	ID_Factura INT (11) AUTO_INCREMENT NOT NULL,
	ID_Compte INT (11) NOT NULL,
	Data_Factura DATE NOT NULL,
	Preu DOUBLE NOT NULL,

	PRIMARY KEY (ID_Factura),
	CONSTRAINT fk_factures_comptes FOREIGN KEY (ID_Compte) REFERENCES Compte (ID_Compte) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Produccions (
	ID_Produccio INT (11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR (20) NOT NULL,
	Nacionalitat VARCHAR (20) NOT NULL,
	Any DATE NOT NULL,
	Preferit BOOLEAN NOT NULL,

	PRIMARY KEY (ID_Produccio)
);

CREATE TABLE if NOT EXISTS Genere (
	ID_Categoria INT (11) AUTO_INCREMENT NOT NULL,
	Nom VARCHAR (20) NOT NULL,

	PRIMARY KEY (ID_Categoria)
);

CREATE TABLE if NOT EXISTS Pelicules (
	ID_Produccio INT (11) AUTO_INCREMENT NOT NULL,
	Durada INT (11) NOT NULL,

	PRIMARY KEY (ID_Produccio),
	CONSTRAINT fk_pelicules_produccions FOREIGN KEY (ID_Produccio) REFERENCES Produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Series (
	ID_Produccio INT (11) AUTO_INCREMENT NOT NULL,
	
	PRIMARY KEY (ID_Produccio),
	CONSTRAINT fk_series_produccions FOREIGN KEY (ID_Produccio) REFERENCES Produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Director (
	ID_Director INT (11) AUTO_INCREMENT NOT NULL,
	Nom_Director VARCHAR (20) NOT NULL,
	Nacionalitat VARCHAR (20) NOT NULL,

	PRIMARY KEY (ID_Director)
);

CREATE TABLE if NOT EXISTS Actors (
	ID_Actor INT (11) AUTO_INCREMENT NOT NULL,
	Nom_Actor VARCHAR (20) NOT NULL,
	Nacionalitat VARCHAR (20) NOT NULL,

	PRIMARY KEY (ID_Actor)
);

CREATE TABLE if NOT EXISTS Episodi (
	ID_Episodi INT (11) AUTO_INCREMENT NOT NULL,
	ID_Produccio INT (11) NOT NULL,
	Nom VARCHAR (20) NOT NULL,
	Durada INT (11) NOT NULL,

	PRIMARY KEY (ID_Episodi, ID_Produccio),
	CONSTRAINT fk_episodi_series FOREIGN KEY (ID_Produccio) REFERENCES Series (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

-- Creacio de les taules relacionals

CREATE TABLE if NOT EXISTS Ha_Consumit (
	ID_Compte INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,
	Num_Visualitzacio INT (11) NOT NULL,
	Preferit BOOLEAN NOT NULL,

	PRIMARY KEY (ID_Compte,ID_Produccio),
	CONSTRAINT fk_haconsumit_compte FOREIGN KEY (ID_Compte) REFERENCES Compte (ID_Compte) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_haconsumit_produccions FOREIGN KEY (ID_Produccio) REFERENCES Produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Pot_Visualitzar (
	ID_Modalitat INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,

	PRIMARY KEY  (ID_Modalitat,ID_Produccio),
	CONSTRAINT fk_potvisualitzar_modalitat FOREIGN KEY (ID_Modalitat) REFERENCES Modalitat (ID_Modalitat) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_potvisualitzar_produccions FOREIGN KEY (ID_Produccio) REFERENCES Produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Pertany_A (
	ID_Categoria INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,

	PRIMARY KEY (ID_Categoria,ID_Produccio),
	CONSTRAINT fk_pertanya_genere FOREIGN KEY (ID_Categoria) REFERENCES Genere (ID_Categoria) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_pertanya_produccions FOREIGN KEY (ID_Produccio) REFERENCES Produccions (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Ha_Consumit_Capitol (
	ID_Produccio INT (11) NOT NULL,
	ID_Episodi INT (11) NOT NULL,
	ID_Compte INT (11) NOT NULL,
	Num_Visualitzacio INT (11) NOT NULL,

	PRIMARY KEY (ID_Produccio,ID_Compte),
	CONSTRAINT fk_haconsumitcapitol_episodi_1 FOREIGN KEY (ID_Produccio) REFERENCES Episodi (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_haconsumitcapitol_epsiodi_2 FOREIGN KEY (ID_Episodi) REFERENCES Episodi (ID_Episodi) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_haconsumitcapitol_compte FOREIGN KEY (ID_Compte) REFERENCES Compte (ID_Compte) ON UPDATE NO ACTION ON DELETE NO ACTION

);

CREATE TABLE if NOT EXISTS Participen (
	ID_Actor INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,
	ID_Episodi INT (11) NOT NULL,
	Protagonista BOOLEAN NOT NULL,
	
	PRIMARY KEY (ID_Actor,ID_Produccio,ID_Episodi),
	CONSTRAINT fk_participen_actors FOREIGN KEY (ID_Actor) REFERENCES Actors (ID_Actor) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_participen_episodi_1 FOREIGN KEY (ID_Produccio) REFERENCES Episodi (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_participen_episodi_2 FOREIGN KEY (ID_Episodi) REFERENCES Episodi (ID_Episodi) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Dirigeix_Episodi (
	ID_Episodi INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,
	ID_Director INT (11) NOT NULL,
	
	PRIMARY KEY (ID_Episodi,ID_Produccio,ID_Director),
	CONSTRAINT fk_dirigeixepisodi_episodi_1 FOREIGN KEY (ID_Episodi) REFERENCES Episodi (ID_Episodi) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_dirigeixepisodi_episodi_2 FOREIGN KEY (ID_Produccio) REFERENCES Episodi (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_dirgiexiepisodi_director FOREIGN KEY (ID_Director) REFERENCES Director (ID_Director) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Dirigeix_Peli (
	ID_Director INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,
	
	PRIMARY KEY (ID_Director,ID_Produccio),
	CONSTRAINT fk_dirigeixpeli_director FOREIGN KEY (ID_Director) REFERENCES Director (ID_Director) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_dirigeixpeli_produccio FOREIGN KEY (ID_Produccio) REFERENCES Pelicules (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

CREATE TABLE if NOT EXISTS Actuen (
	ID_Actor INT (11) NOT NULL,
	ID_Produccio INT (11) NOT NULL,
	Protagonista BOOLEAN NOT NULL,

	PRIMARY KEY (ID_Actor,ID_Produccio),
	CONSTRAINT fk_actuen_actor FOREIGN KEY (ID_Actor) REFERENCES Actors (ID_Actor) ON UPDATE NO ACTION ON DELETE NO ACTION,
	CONSTRAINT fk_actuen_produccio FOREIGN KEY (ID_Produccio) REFERENCES Pelicules (ID_Produccio) ON UPDATE NO ACTION ON DELETE NO ACTION
);

UPDATE Login SET password = 12345 WHERE nom = 'David Boix';