create database Escuela

use Escuela

create table Alumnos(
	ID_Alumno smallint not null,
	Nombre nvarchar(20) not null,
	Apaterno nvarchar (20) not null,
	Amaterno nvarchar (20),
	primary key(ID_Alumno)
)

Alter Table Alumnos Add Direccion nvarchar(20)
Alter Table Alumnos Change Direccion Dir char(20)
Alter Table Alumnos Delete Primary Key
Alter Table Alumnos Add Primary Key(ID_Alumno,Nombre)
create table Temporal(
	ID_Temporal smallint not null,
    Nombre nvarchar(20) not null,
	Apaterno nvarchar (20) not null,
	ID_Alumno smallint not null,
	primary	key (ID_Temporal),
	constraint pkrel foreign key (ID_Alumno) references Alumnos (ID_Alumno)
) 
alter table Temporal drop column Apaterno
drop table Temporal
