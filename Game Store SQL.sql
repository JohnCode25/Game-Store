CREATE TABLE jogos 
( titulo varchar2(50) not null,
idjogo int not null,
dev varchar2(50),
primary key (idjogo));

CREATE TABLE dev (
iddev int not null,
namedev varchar2 (50),
primary key (iddev));

alter table jogos
add genero varchar2 (50) not null; 

create table genero (
generos varchar2 (50),
genero_id int not null,
titulo_jogo varchar2 (50) not null,
idjogo int not null,
primary key (genero_id),
foreign key (idjogo) references jogos);

INSERT INTO JOGOS (titulo_jogo, idjogo, dev, genero) 
VALUES ('Medal of Honor', 8, 'Eletronic Arts', 'FPS');

INSERT INTO JOGOS (titulo_jogo, idjogo, dev, genero) 
VALUES ('Call of Duty', 7, 'Activision', 'FPS'); 

INSERT INTO JOGOS (titulo_jogo, idjogo, dev, genero) 
VALUES ('Fall Guys', 4, 'Epic Games', 'Plataforma_Corrida');

INSERT INTO JOGOS (titulo_jogo, idjogo, dev, genero) 
VALUES ('The Last of Us', 5, 'NaughtyDog', 'Survival Horror_Ação');

INSERT INTO JOGOS (titulo_jogo, idjogo, dev, genero) 
VALUES ('God of War 2', 6, 'Santa Monica Studios', 'Hacking Slash_Ação');



