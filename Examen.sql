create database Biblioteca;

use Biblioteca;


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

create table Socios(
ID_Socio smallint not null,
DNI nvarchar(20) not null,
Direccion nvarchar (30) not null,
Telefono nvarchar(12) not null,
Nombre nvarchar (20) not null,
Apellidos nvarchar(20) not null
constraint pkLectores primary key (ID_Socio)
)


create table Libros(
ISBN smallint not null,
Titulo nvarchar (20) not null,
ID_Editorial smallint not null,
Ano date not null,
ID_Autor smallint not null,
AnoEdicion date not null,
ID_EditorialEdicion smallint,
Estatus nvarchar (20),
constraint pkLibro primary key (ISBN),
constraint fkAutor foreign key (ID_Autor) references Autor(ID_Autor),
constraint fkEditorial foreign key (ID_Editorial) references Editorial(ID_Editorial),
constraint fkEditorialEdicion foreign key (ID_EditorialEdicion) references Editorial(ID_Editorial)
)

create table Prestamo(
ID_Prestamo smallint not null,
ID_Socio smallint not null,
ISBN smallint not null,
Fecha_Prestamo datetime not null,
Fecha_DevolucionEspectada datetime not null,
Fecha_devolucionReal datetime,
constraint pkPrestamo primary key (ID_Prestamo),
constraint fkLector foreign key (ID_Socio) references Socios(ID_Socio),
constraint fkCodLibro foreign key (ISBN) references Libros(ISBN)
)

drop database Biblioteca