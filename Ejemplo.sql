--create sirve para crear bases de datos o tablas
 create database ejemplo  
 --
 use ejemplo
 --Creacion de tabla fuerte
 create table alumno (
	idAlumno smallint,
	nombre	 nvarchar(20) not null,
	Apaterno	nvarchar(10) not null,
	Amaterno	nvarchar(10),

	constraint pkAlumno primary key (idAlumno)
 )
 use ejemplo
 create table horario(
	idHorario int,
	idAlumno  smallint not null,
	Horario   nvarchar (50) not null,

	constraint pkHorario primary key (idHorario),
	constraint fkAlumno foreign key (idAlumno) references alumno(idAlumno)

 )
