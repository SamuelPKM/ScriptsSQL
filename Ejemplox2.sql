select * from dbo.MSreplication_options

select optname, value from MSreplication_options

select MSreplication_options.optname, MSreplication_options.value 
from MSreplication_options
order by optname DESC

use  ejemplo
select * from dbo.Alumnos
select nombre, Apaterno, Amaterno from Alumnos
select nombre + ' ' + Apaterno + ' ' + Amaterno as nombrecompleto from Alumnos
select nombre + ' ' + Apaterno + ' ' + Amaterno as nombrecompleto from Alumnos where Activo = 'true' and (Edad > 20 and Edad < 30)  
select nombre + ' ' + Apaterno + ' ' + Amaterno as nombrecompleto from Alumnos where Activo = 'true' and (Edad between 20 and 30)  
select * from Alumnos where nombre like '%A%'
select * from Alumnos where	Edad in (20,19,55) and Apaterno in ('ramos','andrade')
select nombre, Apaterno, Amaterno from Alumnos group by Apaterno, Amaterno, nombre order by nombre desc

insert into Alumnos (id_alumno,nombre, Apaterno,Amaterno,Direccion,Ciudad,estado,Edad, Activo) 
values('14','aguarraz','sola','zalazr','cdmx','cdmx','ventaneando','10', 0) 

insert into Alumnos values('15','paty','chapoy','chismes ','cdmx','cdmx','ventaneando','100', 1) 

delete from Alumnos where id_alumno = 15

update  Alumnos
set  Activo = 0 where id_alumno = 1
