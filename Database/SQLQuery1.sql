USE master
go
drop database BDBookCard
go
CREATE DATABASE BDBookCard
USE BDBookCard

CREATE TABLE Livro(
LIVID int identity(1,1) not null primary key,
LIVNOME varchar(100)
)
go

CREATE TABLE Capitulo(
CAPID int identity(1,1) not null primary key,
CAPDESCRICAO varchar(100) not null,
LIVID int not null FOREIGN KEY REFERENCES Livro(LIVID)
)
go

CREATE TABLE ListaCard(
LISID int identity(1,1) not null primary key,
LISNOME varchar(100) not null,
LISOVERVIEW varchar(max) not null,
)
go

CREATE TABLE CardTexto(
CARID int identity(1,1) not null primary key,
CARTEXTO varchar(max) not null,
)
go

CREATE TABLE ClassificacaoPalavra(
CLAID int identity(1,1) not null primary key,
CLADESCRICAO varchar(100) not null,
)
go

CREATE TABLE Palavra(
PALID int identity(1,1) not null primary key,
PALPALAVRA varchar(100) not null,
PALRELEVANTE int not null default 0
)
go

CREATE TABLE PalavraCard(
PACID int identity(1,1) not null primary key,
PALID int not null FOREIGN KEY REFERENCES Palavra(PALID),
CARID int not null FOREIGN KEY REFERENCES CardTexto(CARID),
CLAID int null FOREIGN KEY REFERENCES ClassificacaoPalavra(CLAID)
)
go

ALTER TABLE Livro
add LIVAUTOR varchar(100) null
go
ALTER TABLE ListaCard
add  CAPID int not null
go
ALTER TABLE ListaCard
ADD FOREIGN KEY (CAPID) REFERENCES Capitulo(CAPID)
go
ALTER TABLE CardTexto
add  LISID int not null
go
ALTER TABLE CardTexto
ADD FOREIGN KEY (LISID) REFERENCES ListaCard(LISID)
GO
