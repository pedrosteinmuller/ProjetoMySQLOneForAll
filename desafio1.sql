DROP DATABASE IF EXISTS  SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
	plan_id INT PRIMARY KEY AUTO_INCREMENT,
    plan_name VARCHAR(100) NOT NULL,
    plan_price DOUBLE NOT NULL
) engine = InnoDB;

CREATE TABLE users(
	user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(100) NOT NULL,
    user_age INT NOT NULL,
    plan_id INT NOT NULL,
    signature_date DATE NOT NULL,
    FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
) engine = InnoDB;

CREATE TABLE artists(
	artist_id INT PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE albums(
	album_id INT PRIMARY KEY AUTO_INCREMENT,
    album_name VARCHAR(100) NOT NULL,
    artist_id INT NOT NULL,
    release_year YEAR NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  song_name VARCHAR(100) NOT NULL,
  album_id INT NOT NULL,
  artist_id INT NOT NULL,
  song_duration INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
) engine = InnoDB;

CREATE TABLE following(
  user_id INT NOT NULL,
  artist_id INT NOT NULL,
  PRIMARY KEY (user_id, artist_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
) engine = InnoDB;

CREATE TABLE historic(
  user_id INT NOT NULL,
  song_id INT NOT NULL,
  reproduction_date DATETIME NOT NULL,
  PRIMARY KEY (user_id, song_id),
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
) engine = InnoDB;

INSERT INTO plans
  (plan_name, plan_price)
VALUES
  ('gratuito', 0.00),
  ('familiar', 7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);
  
INSERT INTO users
  (user_id, user_name, user_age, signature_date, plan_id)
VALUES
    (1, 'Barbara Liskov', '82', '2019-10-20', '1'),
    (2, 'Robert Cecil Martin', '58', '2017-01-06', '1'),
    (3, 'Ada Lovelace', '37', '2017-12-30', '2'),
    (4, 'Martin Fowler', '46', '2017-01-17', '2'),
    (5, 'Sandi Metz', '58', '2018-04-29', '2'),
    (6, 'Paulo Freire', '19', '2018-02-14', '3'),
    (7, 'Bell Hooks', '26', '2018-01-05', '3'),
	  (8, 'Christopher Alexander', '85', '2019-06-05', '4'),
    (9, 'Judith Butler', '45', '2020-05-13', '4'),
    (10, 'Jorge Amado', '58', '2017-02-17', '4');
    
INSERT INTO artists
  (artist_name)
VALUES
	('Beyoncé'),
	('Queen'),
	('Elis Regina'),
	('Baco Exu do Blues'),
	('Blind Guardian'),
	('Nina Simone');

INSERT INTO albums
	(album_name, artist_id, release_year)
VALUES
	('Renaissance',	1,	2022),
	('Jazz', 2,	1978),
	('Hot Space', 2, 1982),
	('Falso Brilhante',	3, 1998),
	('Vento de Maio', 3, 2001),
	('QVVJFA?',	4, 2003),
	('Somewhere Far Beyond', 5,	2007),
	('I Put A Spell On You', 6,	2012);
    
INSERT INTO songs(album_id, artist_id, song_name, song_duration)
VALUES
	(1,	1, 'BREAK MY SOUL', 279),
	(1,	1,	'VIRGO’S GROOVE', 369),
	(1,	1, 'ALIEN SUPERSTAR', 116),
	(2,	2, 'Don’t Stop Me Now',	203),
	(3,	2,'Under Pressure',	152),
	(4,	3, 'Como Nossos Pais', 105),
	(5,	3, 'O Medo de Amar é o Medo de Ser Livre', 207),
	(6,	4, 'Samba em Paris', 267),
	(7,	5, 'The Bard’s Song', 244),
	(8,	6, 'Feeling Good', 100);

INSERT INTO historic(user_id, song_id, reproduction_date)
VALUES
	('1','8','2022-02-28 10:45:55'),
	('1','2','2020-05-02 05:30:35'),
	('1','10','2020-03-06 11:22:33'),
	('2','10','2022-08-05 08:05:17'),
	('2','7','2020-01-02 07:40:33'),
	('3','10','2020-11-13 16:55:13'),
	('3','2','2020-12-05 18:38:30'),
	('4','8','2021-08-15 17:10:10'),
	('5','8','2022-01-09 01:44:33'),
	('5','5','2020-08-06 15:23:43'),
	('6','7','2017-01-24 00:31:17'),
	('6','1','2017-10-12 12:35:20'),
	('7','4','2011-12-15 22:30:49'),
	('8','4','2012-03-17 14:56:41'),
	('9','9','2022-02-24 21:14:22'),
	('10','3','2015-12-13 08:30:22');

INSERT INTO following(user_id, artist_id)
VALUES
	(1,	1),
	(1,	2),
	(1,	3),
	(2,	1),
	(2,	3),
	(3,	2),
	(4,	4),
	(5,	5),
	(5,	6),
	(6,	6),
	(6,	1),
	(7,	6),
	(9,	3),
	(10,2);