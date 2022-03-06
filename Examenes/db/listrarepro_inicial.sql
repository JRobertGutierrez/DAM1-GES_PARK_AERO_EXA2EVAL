DROP TABLE USUARIOS;
DROP TABLE CANCIONES;
DROP TABLE GRUPOS;

CREATE TABLE USUARIOS(
  LOGIN VARCHAR(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  TIPO_USUARIO VARCHAR(1) CHECK (TIPO_USUARIO IN ('A','U')) NOT NULL,
  DNI VARCHAR(9) NOT NULL,
  NOMBRE VARCHAR(255) NOT NULL,
  APELLIDOS VARCHAR(255) NOT NULL,
  TIPO_MUSICA VARCHAR(255),
  TURNO INTEGER
);

CREATE TABLE GRUPOS(
  CODIGO INTEGER,
  NOMBRE VARCHAR(255),
  A�O INTEGER,
  TIPO_MUSICA VARCHAR(255),
  PRIMARY KEY (CODIGO)
);

CREATE TABLE CANCIONES(
  CODIGO_GRUPO INTEGER REFERENCES GRUPOS(CODIGO),
  DISCO VARCHAR(255),
  TITULO VARCHAR(255),
  MINUTOS INTEGER,
  SEGUNDOS INTEGER
);

INSERT INTO USUARIOS VALUES('admin','admin','A','11111111H','Jos�','Jim�nez','',1);
INSERT INTO USUARIOS VALUES('robert','robert','U','22222222K','Robert','Guti�rrez','Heavy metal',null);

INSERT INTO GRUPOS VALUES (1,'Angel Witch',1977,'Heavy Metal');
INSERT INTO GRUPOS VALUES (2,'King Diamond',1985,'Heavy Metal');
INSERT INTO GRUPOS VALUES (3,'Mot�rhead',1975,'Heavy Metal');
INSERT INTO GRUPOS VALUES (4,'Black Sabbath',1968,'Heavy Metal');
INSERT INTO GRUPOS VALUES (5,'Judas Priest ',1969,'Heavy Metal');
INSERT INTO GRUPOS VALUES (6,'Mercyful Fate',1981,'Heavy Metal');
INSERT INTO GRUPOS VALUES (7,'Dio',1982,'Heavy Metal'); 
INSERT INTO GRUPOS VALUES (8,'Omen',1983,'Heavy Metal');
INSERT INTO GRUPOS VALUES (9,'Riot',1975,'Heavy Metal');
INSERT INTO GRUPOS VALUES (10,'Accept',1976,'Heavy Metal');
INSERT INTO GRUPOS VALUES (11,'Crimson Glory',1982,'Heavy Metal');
INSERT INTO GRUPOS VALUES (12,'Saxon',1976,'Heavy Metal');
INSERT INTO GRUPOS VALUES (13,'Diamond Head',1976,'Heavy Metal');
INSERT INTO GRUPOS VALUES (14,'Iron Maiden',1975,'Heavy Metal');
INSERT INTO GRUPOS VALUES (15,'W.A.S.P.',1982,'Heavy Metal');
INSERT INTO GRUPOS VALUES (16,'Ozzy Osbourne',1967,'Heavy Metal');
INSERT INTO GRUPOS VALUES (17,'Pretty Maids',1981,'Heavy Metal');
INSERT INTO GRUPOS VALUES (18,'Savatage',1979,'Heavy Metal');
INSERT INTO GRUPOS VALUES (19,'Scorpions',1965,'Heavy Metal');
INSERT INTO GRUPOS VALUES (20,'Q5',1983,'Heavy Metal');

INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('1','Angel Witch','Angel Witch','3','25');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('1','Angel Witch','Atlantis','3','42');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('2','Fatal Portrait','The Candle','6','38');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('2','Fatal Portrait','The Jonah','5','15');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('3','Mot�rhead','Vibrator','3','39');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('4','Black Sabbath','Black Sabbath','6','22');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('4','Black Sabbath','The Wizard','4','25');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('5','Rocka Rolla','One for the Road','4','34');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('3','Mot�rhead','Mot�rhead','3','13');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('5','Rocka Rolla','Rocka Rolla','3','5');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('6','Melissa','Evil','4','36');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('6','Melissa','Curse Of The Pharaohs','3','56');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('7','Holy Diver','Stand Up and Shout','3','6');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('7','Holy Diver','Holy Diver','5','51');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('8','Battle Cry','Death Rider','3','28');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('8','Battle Cry','The Axeman','4','26');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('9','Rock City','Desperation','2','43');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('9','Rock City','Warrior','3','50');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('10','Accept','Lady Lou','3','3');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('10','Accept','Tired of me','3','14');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('11','Crimson Glory','Valhalla','3','46');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('11','Crimson Glory','Dragon Lady','4','21');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('12','Saxon','Rainbow Theme','3','7');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('12','Saxon','Frozen Rainbow','2','29');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('13','Lightning to the Nations','Lightning to the Nations','4','15');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('13','Lightning to the Nations','The Prince','6','27');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('14','Iron Maiden','Prowler','3','55');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('14','Iron Maiden','Remember Tomorrow','5','27');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('15','W.A.S.P.','I Wanna Be Somebody','3','43');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('15','W.A.S.P.','L.O.V.E. Machine','3','51');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('16','Blizzard of Ozz','I Don''t Know','5','16');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('16','Blizzard of Ozz','Crazy Train','4','57');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('17','Red Hot and Heavy','Back to Back','3','34');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('17','Red Hot and Heavy','Red, Hot and Heavy','3','58');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('18','Sirens','Sirens','3','43');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('18','Sirens','Holocaust','4','34');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('19','Lonesome Crow','I''m Going Mad','4','56');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('19','Lonesome Crow','It All Depends','3','30');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('20','Steel the Light','Missing in Action','3','2');
INSERT INTO CANCIONES (CODIGO_GRUPO,DISCO,TITULO,MINUTOS,SEGUNDOS) VALUES ('20','Steel the Light','Lonely Lady','4','1');
  