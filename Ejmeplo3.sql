use ejemplo

create table Calificaciones(
ID_Calificaciones float,
ID_Alumno float,
Materia nvarchar(50),
calificacion float,
Parcial int
constraint PKCalificaciones primary key (ID_Calificaciones)
)
insert into Calificaciones
values('1','1','Bases de datos','5.5','1')

drop table Calificaciones


select * from Alumnos
select * from Calificaciones

select  Alumnos.nombre, Calificaciones.Materia,Calificaciones.Parcial,Calificaciones.calificacion
from Alumnos inner join Calificaciones
 on Alumnos.id_alumno = Calificaciones.ID_Alumno


 select Alumnos.nombre,Calificaciones.Parcial AVG(Calificaciones.calificacion) as promedio
 from Alumnos inner join Calificaciones
  on Alumnos.id_alumno = Calificaciones.ID_Alumno
   group by Alumnos.nombre
