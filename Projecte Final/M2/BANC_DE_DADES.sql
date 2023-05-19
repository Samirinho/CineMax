-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla cands.actors: ~34 rows (aproximadamente)
INSERT INTO `actors` (`id_actor`, `nom_actor`, `nacionalitat`) VALUES
	(1, 'Leonardo DiCaprio', 'Estados Unidos'),
	(2, 'Penélope Cruz', 'España'),
	(3, 'Tom Hanks', 'Estados Unidos'),
	(4, 'Gong Li', 'China'),
	(5, 'Julia Roberts', 'Estados Unidos'),
	(6, 'Ricardo Darín', 'Argentina'),
	(7, 'Meryl Streep', 'Estados Unidos'),
	(8, 'Aishwarya Rai Bachchan', 'India'),
	(9, 'Robert Downey Jr.', 'Estados Unidos'),
	(10, 'Marion Cotillard', 'Francia'),
	(11, 'Johnny Depp', 'Estados Unidos'),
	(12, 'Salma Hayek', 'México'),
	(13, 'Hugh Jackman', 'Australia'),
	(14, 'Sofia Vergara', 'Colombia'),
	(15, 'Brad Pitt', 'Estados Unidos'),
	(16, 'Catherine Zeta-Jones', 'Gales'),
	(17, 'Will Smith', 'Estados Unidos'),
	(18, 'Charlize Theron', 'Sudáfrica'),
	(19, 'George Clooney', 'Estados Unidos'),
	(20, 'Priyanka Chopra', 'India'),
	(21, 'John Travolta', 'Estados Unidos'),
	(22, 'Samuel L Jackson', 'Estados Unidos'),
	(23, 'Morgan Freeman', 'Estados Unidos'),
	(24, 'Tim Robbins', 'Estados Unidos'),
	(25, 'Christian Bale', 'Estados Unidos'),
	(26, 'Emilia Clarke', 'Reino Unido'),
	(27, 'Maisie Williams', 'Reino Unido'),
	(28, 'Keanu Reeves', 'El Líbano'),
	(29, 'Laurence Fishburn', 'Estados Unidos'),
	(30, 'Emma Stone', 'Estados Unidos'),
	(31, 'Ryan Gosling', 'Estados Unidos'),
	(32, 'Al Pacino', 'Estados Unidos'),
	(33, 'John Cazale', 'Estados Unidos'),
	(34, 'Ving Rhames', 'Estados Unidos');

-- Volcando datos para la tabla cands.actuen: ~16 rows (aproximadamente)
INSERT INTO `actuen` (`id_actor`, `id_produccio`, `protagonista`) VALUES
	(1, 11, 1),
	(1, 18, 1),
	(10, 11, 0),
	(15, 9, 0),
	(21, 3, 1),
	(22, 3, 1),
	(23, 1, 1),
	(24, 1, 1),
	(25, 5, 1),
	(28, 15, 1),
	(29, 15, 0),
	(30, 20, 1),
	(31, 20, 1),
	(32, 13, 1),
	(33, 13, 0),
	(34, 3, 0);

-- Volcando datos para la tabla cands.clients: ~21 rows (aproximadamente)
INSERT INTO `clients` (`nom`, `dni`, `edat`, `adreça`, `nacionalitat`, `email`, `telefon`, `num_tarjeta`, `num_compte_banc`) VALUES
	('María Rodríguez', '23456789L', '2003-02-18', 'Calle Principal 789', 'España', 'mariarodriguez@gmail.com', 987654321, 1234567812345678, 'ES0123456789012345678901'),
	('José García', '34567890M', '1988-07-26', 'Avenida Central 321', 'España', 'josegarcia@gmail.com', 923456789, 9876543210987654, 'ES0987654321098765432109'),
	('Laura Martínez', '45678901N', '1995-04-09', 'Calle Secundaria 654', 'España', 'lauramartinez@hotmail.com', 756789012, 4567890123456789, 'ES3456789012345678901234'),
	('Carlos López', '56789012O', '1991-11-22', 'Plaza Mayor 123', 'España', 'carloslopez@hotmail.com', 789012345, 7890123456789012, 'ES5678901234567890123456'),
	('Sara Fernández', '67890123P', '1987-06-15', 'Avenida del Sol 987', 'España', 'sarafernandez@gmail.com', 990123456, 8901234567890123, 'ES7890123456789012345678'),
	('Manuel Torres', '78901234Q', '2001-03-28', 'Calle Nueva 456', 'España', 'manueltorres@hotmail.com', 901234567, 9012345678901234, 'ES9012345678901234567890'),
	('Ana Ramírez', '89012345R', '1993-10-11', 'Avenida Principal 987', 'España', 'anaramirez@hotmail.com', 745678901, 3456789012345678, 'ES3456789012345678901234'),
	('Pedro Navarro', '90123456S', '1988-05-24', 'Calle Central 654', 'España', 'pedronavarro@gmail.com', 767890123, 5678901234567890, 'ES5678901234567890123456'),
	('Isabel Morales', '01234567T', '1996-02-07', 'Plaza del Sol 321', 'España', 'isabelmorales@gmail.com', 678901234, 6789012345678901, 'ES6789012345678901234567'),
	('Miguel Sánchez', '12345678U', '1997-09-13', 'Avenida Nueva 654', 'España', 'miguelsanchez@gmail.com', 990123456, 8901234567890123, 'ES8901234567890123456789'),
	('Pedro Rodríguez', '34567890C', '1992-03-10', 'Calle Secundaria 789', 'España', 'pedrorodriguez@gmail.com', 656789012, 4567890123456789, 'ES3456789012345678901234'),
	('Laura López', '45678901D', '1988-12-05', 'Plaza Mayor 987', 'España', 'lauralopez@gmail.com', 789012345, 7890123456789012, 'ES5678901234567890123456'),
	('Carlos García', '56789012E', '1995-07-18', 'Avenida del Sol 654', 'España', 'carlosgarcia@gmail.com', 790123456, 8901234567890123, 'ES7890123456789012345678'),
	('Ana Martínez', '67890123F', '1991-09-25', 'Calle Nueva 321', 'España', 'anamartinez@hotmail.com', 901234567, 9012345678901234, 'ES9012345678901234567890'),
	('Sergio Morales', '78901234G', '1993-06-14', 'Avenida Principal 654', 'España', 'sergiomorales@gmail.com', 745678901, 3456789012345678, 'ES3456789012345678901234'),
	('Elena Navarro', '89012345H', '1987-11-30', 'Calle Central 987', 'España', 'elenanavarro@example.com', 667890123, 5678901234567890, 'ES5678901234567890123456'),
	('Miguel Torres', '90123456I', '1994-04-02', 'Plaza del Sol 456', 'España', 'migueltorres@gmail.com', 678901234, 6789012345678901, 'ES6789012345678901234567'),
	('Isabel Ramírez', '01234567J', '1997-01-08', 'Avenida Nueva 789', 'España', 'isabelramirez@hotmail.com', 661123321, 8901234567890542, 'ES8901234567890123454517'),
	('Javier Sánchez', '12345678U', '1997-09-13', 'Avenida Nueva 654', 'España', 'miguelsanchez@hotmail.com', 990123456, 8901234567890123, 'ES8901234567890123456789'),
	('Javier Torres', '34567890W', '1998-01-21', 'Avenida Central 789', 'Español', 'javiertorres@hotmail.com', 956789012, 4567890123456789, 'ES4567890123456789012345'),
	('Elena García', '45678901X', '1990-09-04', 'Calle Secundaria 123', 'Español', 'elenagarcia@gmail.com', 967890123, 5678901234567890, 'ES5678901234567890123456');

-- Volcando datos para la tabla cands.compte: ~20 rows (aproximadamente)
INSERT INTO `compte` (`Nom_Usuari`, `contrasenya`, `id_client`, `id_modalitat`) VALUES
	('user123', '040173afc2e9520e65a1773779691d3e', 1, 1),
	('cooluser', 'securepassword', 2, 2),
	('webmaster', 'p@ssw0rd', 3, 1),
	('newuser', 'welc0me2023', 4, 3),
	('techguru', '1234abcd!', 5, 1),
	('gamer123', 'gamingFTW', 6, 2),
	('moviebuff', 'cinema21!', 7, 3),
	('sportsfan', 'goTeam2023', 8, 2),
	('musiclover', 'melodies123', 9, 1),
	('bookworm', 'reading2023', 10, 1),
	('traveler', 'wanderlust!', 11, 1),
	('fitnessguru', 'fitlife2023', 12, 2),
	('foodie123', 'tastyDishes', 13, 1),
	('artlover', 'creativity!', 14, 2),
	('naturelover', 'outdoorsy23', 15, 2),
	('adventure', 'exploreNow!', 16, 2),
	('techlover', 'geekTech2023', 17, 1),
	('fashionista', 'style1234', 18, 3),
	('businesspro', 'success2023', 19, 3),
	('creativemind', 'imagination!', 20, 3);

-- Volcando datos para la tabla cands.director: ~25 rows (aproximadamente)
INSERT INTO `director` (`nom_director`, `nacionalitat`) VALUES
	('Christopher Nolan', 'Estados Unidos'),
	('Francis Ford Coppola', 'Estados Unidos'),
	('James Cameron', 'Canada'),
	('Frank Darabont', 'Francia'),
	('Quentin Tarantino', 'Estados Unidos'),
	('Martin Scorsese', 'Estados Unidos'),
	('Lana Wachowsky', 'Estados Unidos'),
	('Lilly Wachowsky', 'Estados Unidos'),
	('Marc Foster', 'Alemania'),
	('David Fincher', 'Estados Unidos'),
	('Damien Chazelle', 'Estados Unidos'),
	('Alex Graves', 'Estados Unidos'),
	('Mark Mylod', 'Reino Unido'),
	('Miguel Sapochnik', 'Argentina'),
	('Vince Gilligan', 'Estados Unidos'),
	('Adam Bernstein', 'Estados Unidos'),
	('Michelle MacLaren', 'Canada'),
	('James Burrows', 'Estados Unidos'),
	('José Padilha', 'Brasil'),
	('Steven Spielberg', 'Estados Unidos'),
	('Otto Bathurst', 'Reino Unido'),
	('Euros Lyn', 'Gales'),
	('John Krasinski', 'Estados Unidos'),
	('Steve Carrell', 'Estados Unidos'),
	('Greg Daniels', 'Estados Unidos');

-- Volcando datos para la tabla cands.dirigeix_episodi: ~18 rows (aproximadamente)
INSERT INTO `dirigeix_episodi` (`id_director`, `id_produccio`, `id_episodi`) VALUES
	(12, 2, 24),
	(12, 2, 25),
	(12, 2, 33),
	(15, 4, 1),
	(16, 4, 2),
	(16, 4, 3),
	(16, 4, 4),
	(16, 4, 5),
	(17, 2, 28),
	(18, 6, 1),
	(18, 6, 2),
	(18, 6, 3),
	(18, 6, 4),
	(20, 8, 1),
	(20, 8, 2),
	(20, 8, 3),
	(20, 8, 4),
	(20, 8, 5);

-- Volcando datos para la tabla cands.dirigeix_pel·licula: ~11 rows (aproximadamente)
INSERT INTO `dirigeix_peli` (`id_director`, `id_produccio`) VALUES
	(1, 5),
	(1, 11),
	(2, 7),
	(4, 1),
	(5, 3),
	(6, 13),
	(6, 18),
	(7, 15),
	(8, 15),
	(10, 9),
	(11, 20);

-- Volcando datos para la tabla cands.episodi: ~19 rows (aproximadamente)
INSERT INTO `episodi` (`id_produccio`, `id_episodi`, `nom`, `durada`) VALUES
	(2, 24, 'And now his watch is ended', 45),
	(2, 25, 'Kissed by fire', 45),
	(2, 28, 'Second sons', 45),
	(2, 33, 'Breaker of chains', 45),
	(4, 1, 'Pilot', 57),
	(4, 2, 'Cat\'s in the bag...', 47),
	(4, 3, '...And the Bag\'s in the River', 47),
	(4, 4, 'Cancer Man', 47),
	(4, 5, 'Gray Matter', 47),
	(6, 1, 'The Pilot', 25),
	(6, 2, 'The one with the Sonogram at the End', 22),
	(6, 3, 'The one with the Thumb', 22),
	(6, 4, 'The one with George Stephanopoulos', 23),
	(8, 1, 'Mind Blown', 50),
	(8, 2, 'Mad for Max', 52),
	(8, 3, 'Unlikely Allies', 55),
	(8, 4, 'Truth in Hawkins', 53),
	(8, 5, 'The AV Club', 55),
	(8, 6, 'The New Class', 56);

-- Volcando datos para la tabla cands.factura: ~40 rows (aproximadamente)
INSERT INTO `factura` (`id_factura`, `data_factura`, `preu`, `id_compte`) VALUES
	(1, '2021-01-01', 15, 1),
	(2, '2021-02-01', 25, 2),
	(3, '2021-03-01', 15, 3),
	(4, '2021-04-01', 25, 4),
	(5, '2021-05-01', 15, 5),
	(6, '2021-06-01', 25, 6),
	(7, '2021-07-01', 15, 7),
	(8, '2021-08-01', 25, 8),
	(9, '2021-09-01', 15, 9),
	(10, '2021-10-01', 25, 10),
	(11, '2021-11-01', 15, 11),
	(12, '2021-12-01', 25, 12),
	(13, '2022-01-01', 15, 13),
	(14, '2022-02-01', 25, 14),
	(15, '2022-03-01', 15, 15),
	(16, '2022-04-01', 25, 16),
	(17, '2022-05-01', 15, 17),
	(18, '2022-06-01', 25, 18),
	(19, '2022-07-01', 15, 19),
	(20, '2022-08-01', 25, 20),
	(21, '2023-01-01', 15, 1),
	(22, '2023-02-01', 25, 2),
	(23, '2023-03-01', 15, 3),
	(24, '2023-04-01', 25, 4),
	(25, '2023-05-01', 15, 5),
	(26, '2023-06-01', 25, 6),
	(27, '2023-07-01', 15, 7),
	(28, '2023-08-01', 25, 8),
	(29, '2023-09-01', 15, 9),
	(30, '2023-10-01', 25, 10),
	(31, '2023-11-01', 15, 11),
	(32, '2023-12-01', 25, 12),
	(33, '2022-09-01', 15, 1),
	(34, '2022-10-01', 25, 2),
	(35, '2022-11-01', 15, 3),
	(36, '2022-12-01', 25, 4),
	(37, '2023-09-01', 15, 5),
	(38, '2023-10-01', 25, 6),
	(39, '2023-11-01', 15, 7),
	(40, '2023-12-01', 25, 8);

-- Volcando datos para la tabla cands.genere: ~15 rows (aproximadamente)
INSERT INTO `genere` (`id_categoria`, `nom`) VALUES
	(1, 'Acció'),
	(2, 'Aventura'),
	(3, 'Comèdia'),
	(4, 'Drama'),
	(5, 'Romàntic'),
	(6, 'Suspens'),
	(7, 'Ciència ficció'),
	(8, 'Fantasia'),
	(9, 'Animació'),
	(10, 'Documental'),
	(11, 'Misteri'),
	(12, 'Crim'),
	(13, 'Història'),
	(14, 'Western'),
	(15, 'Terror');

-- Volcando datos para la tabla cands.ha_consumit: ~25 rows (aproximadamente)
INSERT INTO `ha_consumit` (`id_compte`, `id_produccio`, `num_visualitzacio`, `preferit`) VALUES
	(2, 1, 4, 1),
	(2, 3, 1, 1),
	(2, 5, 1, 0),
	(3, 3, 3, 1),
	(3, 5, 2, 1),
	(3, 9, 3, 1),
	(4, 13, 3, 1),
	(4, 14, 2, 1),
	(4, 17, 1, 0),
	(6, 2, 2, 1),
	(6, 11, 2, 1),
	(6, 18, 3, 1),
	(7, 6, 3, 0),
	(7, 7, 2, 1),
	(7, 10, 2, 1),
	(10, 7, 4, 1),
	(10, 9, 2, 0),
	(10, 10, 2, 1),
	(14, 1, 2, 1),
	(14, 20, 5, 1),
	(17, 3, 3, 1),
	(17, 4, 2, 1),
	(17, 11, 4, 1),
	(17, 16, 1, 0),
	(20, 11, 2, 1);

-- Volcando datos para la tabla cands.ha_consumit_episodi: ~0 rows (aproximadamente)

-- Volcando datos para la tabla cands.modalitat: ~3 rows (aproximadamente)
INSERT INTO `modalitat` (`tipus`) VALUES
	('gratuit'),
	('basic'),
	('premium');

-- Volcando datos para la tabla cands.participen: ~0 rows (aproximadamente)

-- Volcando datos para la tabla cands.pel·licules: ~10 rows (aproximadamente)
INSERT INTO `pelicules` (`id_produccio`, `durada`) VALUES
	(1, 142),
	(3, 154),
	(5, 152),
	(7, 177),
	(9, 139),
	(11, 148),
	(13, 146),
	(15, 136),
	(18, 151),
	(20, 128);

-- Volcando datos para la tabla cands.pertany: ~46 rows (aproximadamente)
INSERT INTO `pertany_a` (`id_produccio`, `id_categoria`) VALUES
	(1, 4),
	(1, 6),
	(2, 2),
	(2, 8),
	(3, 1),
	(3, 3),
	(4, 3),
	(4, 4),
	(5, 1),
	(5, 4),
	(5, 12),
	(6, 3),
	(7, 1),
	(7, 4),
	(7, 12),
	(7, 13),
	(8, 2),
	(8, 7),
	(8, 11),
	(9, 3),
	(9, 6),
	(10, 6),
	(10, 7),
	(11, 1),
	(11, 7),
	(12, 3),
	(13, 6),
	(13, 12),
	(14, 1),
	(14, 10),
	(14, 12),
	(15, 1),
	(15, 7),
	(16, 3),
	(16, 4),
	(16, 8),
	(17, 4),
	(17, 10),
	(17, 13),
	(18, 4),
	(18, 6),
	(18, 12),
	(19, 4),
	(19, 6),
	(20, 3),
	(20, 5);

-- Volcando datos para la tabla cands.per_visualitzar: ~0 rows (aproximadamente)

-- Volcando datos para la tabla cands.produccions: ~20 rows (aproximadamente)
INSERT INTO `produccions` (`nom`, `nacionalitat`, `any`, `preferit`) VALUES
	('The Shawshank Redemption', 'Estados Unidos', 1994, 29),
	('Game of Thrones', 'Estados Unidos', 2011, 78),
	('Pulp Fiction', 'Estados Unidos', 1994, 6),
	('Breaking Bad', 'Estados Unidos', 2008, 93),
	('The Dark Knight', 'Estados Unidos', 2008, 50),
	('Friends', 'Estados Unidos', 1994, 68),
	('The Godfather', 'Estados Unidos', 1972, 91),
	('Stranger Things', 'Estados Unidos', 2016, 51),
	('Fight Club', 'Estados Unidos', 1999, 83),
	('Black Mirror', 'Reino Unido', 2011, 61),
	('Inception', 'Estados Unidos', 2010, 57),
	('The Office', 'Estados Unidos', 2005, 3),
	('Goodfellas', 'Estados Unidos', 1990, 41),
	('Narcos', 'Estados Unidos', 2015, 99),
	('The Matrix', 'Estados Unidos', 1999, 70),
	('Stranger Than Fiction', 'Estados Unidos', 2006, 54),
	('The Crown', 'Reino Unido', 2016, 60),
	('The Departed', 'Estados Unidos', 2006, 39),
	('House of Cards', 'Estados Unidos', 2013, 15),
	('La La Land', 'Estados Unidos', 2016, 58);

-- Volcando datos para la tabla cands.series: ~10 rows (aproximadamente)
INSERT INTO `series` (`id_produccio`) VALUES
	(2),
	(4),
	(6),
	(8),
	(10),
	(12),
	(14),
	(16),
	(17),
	(19);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;