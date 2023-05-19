USE provacinemax;

-- MILLORES VISTES PER L'USUARI

-- CANVI DE NOM DE UNA COLUMNA DE LA TAULA PRODUCCIONS
ALTER TABLE produccions CHANGE ID_Produccions ID_Produccio INT (11) AUTO_INCREMENT NOT NULL;
-- INSERCIO DE NOU CAMP Protagonista? A LA TAULA ACTUEN
ALTER TABLE actuen ADD Protagonista BOOLEAN NOT NULL;

-- ELIMINACIO DE LES TAULES MAL CREADES 
DROP TABLE episodi;

DROP TABLE ha_consumit;

DROP TABLE pot_visualitzar;

DROP TABLE pertany_a;

DROP TABLE ha_consumit_capitol;

DROP TABLE participen;

DROP TABLE dirigeixepisodi;

DROP TABLE dirigeixpeli;

DROP TABLE actuen;

DROP DATABASE provacinemax;