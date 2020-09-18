create database Biblioteca

use Biblioteca


create table Autor(
ID_Autor smallint not null,
Nombre nvarchar (40)
constraint pkAutor primary key (ID_Autor)
)

create table Editorial(
ID_Editorial smallint not null,
Nombre nvarchar (20)
constraint pkEditorial primary key (ID_Editorial)
)

create table Lectores(
ID_Lectores smallint not null,
Nombre nvarchar (30)
constraint pkLectores primary key (ID_Lectores)
)


create table Libros(
CodLibro smallint not null,
Titulo nvarchar (20),
ID_Autor smallint,
ID_Editorial smallint
constraint pkLibro primary key (CodLibro),
constraint fkAutor foreign key (ID_Autor) references Autor(ID_Autor),
constraint fkEditorial foreign key (ID_Editorial) references Editorial(ID_Editorial)
)

create table Prestamo(
ID_Prestamo smallint not null,
ID_Lectores smallint not null,
CodLibro smallint not null,
Fecha_Devolucion datetime not null
constraint pkPrestamo primary key (ID_Prestamo),
constraint fkLector foreign key (ID_Lectores) references Lectores(ID_Lectores),
constraint fkCodLibro foreign key (CodLibro) references Libros(CodLibro)
)