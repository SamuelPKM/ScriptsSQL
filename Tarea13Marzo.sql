create database Empleados
use Empleados

drop table Departamentos
drop table Empleado

create table Departamentos(
Codigo int not null,
Nombre nvarchar(100) not null,
Presupuesto int not null,
constraint PKDepartamento primary key (Codigo)
)


create table Empleado(
DNI varchar(8) not null,
Nombre nvarchar (100) not null,
Apellidos nvarchar (255) not null,
Departamento int not null,
constraint PKEmpleados primary key (DNI),
constraint FkDepartamento foreign key (Departamento) references Departamentos(Codigo)
)

--Punto 1
insert into Departamentos values (1,'Humanidades',1000)
insert into Departamentos values (2,'Comunicacion',1500)
insert into Departamentos values (3,'Laboratorio',2200)
insert into Departamentos values (4,'Talleres',3600)
insert into Departamentos values (5,'Produccion',4800)
--Punto 2
insert into Empleado values(12345678,'Adolfo','Sanchez Asuara',1)
insert into Empleado values(22345678,'Luis','Lopez Mateos',1)
insert into Empleado values(32345678,'Cristian','Marin Covarrubias',2)
insert into Empleado values(42345678,'Javier','Martinez Cervantes',1)
insert into Empleado values(52345678,'Arturo','Duran Lopez',4)
insert into Empleado values(62345678,'Carlos','Segoviano Garcia',1)
insert into Empleado values(72345678,'Oscar','Gonzalez Garcia',5)
insert into Empleado values(82345678,'Gerardo','Guevara Rangel',1)
insert into Empleado values(92345678,'Gabriel','Lopez Laguna',3)
insert into Empleado values(93345678,'Noemi','Zamora Garcia',1)
insert into Empleado values(94345678,'Luna','Ramos Andrade',3)
insert into Empleado values(95345678,'Marcos','Ramos Andrade',2)
insert into Empleado values(96345678,'Monica','Andrade Lara',3)
insert into Empleado values(97345678,'Samuel','Ramos Gonzalez',4)
insert into Empleado values(98345678,'Federico','Peluche Derbez',5)
insert into Empleado values(99345678,'Guadalupe','El Machin',3)
insert into Empleado values(99445678,'Ramon','Loco Valdez',2)
insert into Empleado values(99545678,'Jose','Alfredo Jimenez',5)
insert into Empleado values(99645678,'Antonio','Aguilar Aguilar',4)
insert into Empleado values(99745678,'Pancho','Barrasa Presente',2)
insert into Empleado values(99845679,'Valentin','GalloOro Perez',5)

--Para ver todos los registros en las tablas 
select * from Empleado
select * from Departamentos

--Para ver los apellidos de los empleados    Punto 3
select Apellidos from Empleado
--Para ver los apellidos distintos           Punto 4
select distinct Apellidos from Empleado 
--Para ver los datos de los Empleados que se apellidan Lopez Punto 5 
select * from Empleado 
where Apellidos like ('%Lopez%')
--Para ver los que se apellidan Lopez y los que se apellidan Perez Punto 6
select * from Empleado
where Apellidos like('%Lopez%') or Apellidos like ('%Perez%')
--Para ver los que trabajan en el tercer departamento          Punto 7
select * from Empleado 
where Departamento like (3)
--Para ver todos los que trabajan en el departamento 2 o en el 4   Punto 8
select * from Empleado 
where Departamento like (2) or Departamento like (4)
--Para ver todos los datos de trabajadores cuyo apellido empiece con P Punto 9
select * from Empleado 
where Apellidos like ('P%')
--Para dar a conocer el promedio total de los departamentos Punto 10
select AVG(Presupuesto) as 'Promedio'
from Departamentos 
--Para saber cuantos trabajadores hay por departamento Punto 11
select Departamento, count(Departamento) as 'Empleados Pertenecientes' from Empleado group by Departamento
--Datos de los empleados y su departamento Punto 12
select Empleado.DNI, Empleado.Nombre, Empleado.Apellidos, Empleado.Departamento, Departamentos.Nombre, Departamentos.Presupuesto 
from Empleado inner join Departamentos
on Empleado.Departamento = Departamentos.Codigo
order by Departamento
--Datos del empleado, el nombre del deparmaneto y su presupuesto Punto 13
select Empleado.DNI, Empleado.Nombre, Empleado.Apellidos,Departamentos.Nombre as 'Nombre del Departamento', Departamentos.Presupuesto 
from Empleado inner join Departamentos
on Empleado.Departamento = Departamentos.Codigo
order by DNI

--DNI Nombre y apellidos de los Empleados que su departamento tenga un presupuesto mayor a 10000 Punto 14
update Departamentos
set Presupuesto = 11000 where Codigo = 5

select Empleado.DNI, Empleado.Nombre, Empleado.Apellidos
from Empleado inner join Departamentos
on Empleado.Departamento = Departamentos.Codigo and Departamentos.Presupuesto > 10000
order by DNI
--Datos de los departamentos cuyo presupuesto sea mayor al promedio Punto 15
update Departamentos
set Presupuesto = 1100 where Codigo = 5

select *
from Departamentos 
where Presupuesto > (select AVG(Presupuesto) from Departamentos)

--Obtener unicamente los nombres de los Departamentos que tienen mas de 2 Trabajadores Punto 16
select Nombre 
from Departamentos
where (select COUNT(Departamento) from Empleado) > 2

--Anadir el departamento Calidad con presupuesto de 40000, codigo 11 y anadir a Esther Vazquez, DNI:89267109 Punto 17
insert into Departamentos values (11,'Calidad',40000)
insert into Empleado values (89267109,'Esther, Vazquez',11)
--Aplicar un recorte presupuestal del 10% a todos los departamentos Punto 18
update Departamentos
set Presupuesto = (Presupuesto - Presupuesto * .1) 
--Reasignar los empleados de un Departamento a otro   Punto 19
update Empleado
set Departamento = (11)
where Departamento = 3
--Despedir a todos los empleados de un departamento  Punto 20
alter table Empleado ADD Estatus nvarchar(30) 
update Empleado
set Estatus = 'Contratado'

update Empleado
set Estatus = 'Despedido'
where Departamento = (select Codigo from Departamentos where Nombre = 'Calidad')