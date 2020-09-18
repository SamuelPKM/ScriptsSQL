create database Ejemplo2
use Ejemplo2
--drop database Ejemplo2



CREATE TABLE  Departamento ( 
codDepto     nvarchar (4)  PRIMARY KEY,
nombreDpto   nvarchar (20) NOT NULL,
ciudad      nvarchar (15), 
codDirector  nvarchar (12) 
)
--Drop table  Departamento

CREATE TABLE  Empleado ( 
nDIEmp nvarchar( 12 )  primary key, 
nomEmp nvarchar( 30 ) NOT NULL, 
sexEmp CHAR( 1 ) NOT NULL CHECK (sexEmp  IN ('F', 'M') ),
fecNac nvarchar(20) NOT NULL ,
fecIncorporacion nvarchar(20) NOT NULL,
salEmp FLOAT NOT NULL,
comisionE FLOAT NOT NULL, 
cargoE nvarchar( 15 ) NOT NULL, 
jefeID nvarchar( 12 ), 
codDepto nvarchar( 4 ) NOT NULL, 
CONSTRAINT FK_Empl FOREIGN KEY (jefeID) REFERENCES Empleado,
CONSTRAINT FK_Dpto FOREIGN KEY (codDepto) REFERENCES Departamento 
);

INSERT INTO Departamento (codDepto, nombreDpto, ciudad, coddirector) VALUES  
('1000', 'GERENCIA', 'CALI', '31.840.269'),  ('1500', 'PRODUCCIÓN', 'CALI', '16.211.383'), ('2000', 'VENTAS', 'CALI', '31.178.144'),
('3000', 'INVESTIGACIÓN', 'CALI', '16.759.060'),('3500', 'MERCADEO', 'CALI', '22.222.222'),('2100', 'VENTAS', 'POPAYAN', '31.751.219'),
('2200', 'VENTAS', 'BUGA', '768.782'), ('2300', 'VENTAS', 'CARTAGO', '737.689'), ('4000', 'MANTENIMIENTO', 'CALI', '333.333.333'), ('4100', 'MANTENIMIENTO', 'POPAYAN', '888.888'), 
('4200', 'MANTENIMIENTO', 'BUGA', '11.111.111'), ('4300', 'MANTENIMIENTO', 'CARTAGO', '444.444');

INSERT INTO Empleado (nDIEmp, nomEmp, sexEmp, fecNac, fecIncorporacion, salEmp, comisionE, cargoE, jefeID, codDepto) 
VALUES ('31.840.269', 'María Rojas', 'F', '1959-01-15', '16-05-1990', 6250000, 1500000, 'Gerente', NULL, '1000'),
('16.211.383', 'Luis Pérez', 'M', '1956-02-25', '2000-01-01', 5050000, 0, 'Director', '31.840.269', '1500'),
('31.178.144', 'Rosa Angulo', 'F',  '1957-03-15', '1998-08-16', 3250000, 3500000, 'Jefe Ventas', '31.840.269', '2000'),
('16.759.060', 'Darío Casas', 'M', '1960-04-05', '1992-11-01', 4500000, 500000, 'Investigador', '31.840.269', '3000'),
('22.222.222', 'Carla López', 'F', '1975-05-11', '2005-07-16',  4500000, 500000, 'Jefe Mercadeo', '31.840.269', '3500'),
('22.222.333', 'Carlos Rozo', 'M', '1975-05-11', '2001-09-16',  750000, 500000, 'Vigilante', '31.840.269', '3500') ,
('1.751.219', 'Melissa Roa', 'F', '1960-06-19', '2001-03-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2100'),
('768.782', 'Joaquín Rosas', 'M', '1947-07-07', '1990-05-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2200'),
('737.689', 'Mario Llano', 'M', '1945-08-30', '1990-05-16', 2250000, 2500000, 'Vendedor', '31.178.144', '2300'), 
('333.333.333', 'Elisa Rojas', 'F', '1979-09-28', '2004-06-01', 3000000, 1000000, 'Jefe Mecánicos', '31.840.269', '4000'), ('888.888', 'Iván Duarte', 'M', '1955-08-12',  '1998-05-16',  1050000, 200000, 'Mecánico', '333.333.333', '4100'), ('11.111.111', 'Irene Díaz', 'F', '1979-09-28', '2004-06-01', 1050000, 200000, 'Mecánico', '333.333.333', '4200'),
('444.444', 'Abel Gómez', 'M', '1939-12-24', '2000-10-01', 1050000, 200000, 'Mecánico', '333.333.333', '4300'),
('1.130.222', 'José Giraldo', 'M', '1985-01-20', '2000-11-01', 1200000, 400000, 'Asesor', '22.222.222', '3500'),
('19.709.802', 'William Daza', 'M', '1982-10-09', '1999-12-16', 2250000, 1000000,'Investigador', '16.759.060', '3000'),
('31.174.099', 'Diana Solarte', 'F', '1957-11-19', '1990-05-16', 1250000, 500000, 'Secretaria', '31.840.269', '1000'),
('1.130.777', 'Marcos Cortez', 'M', '1986-06-23', '2000-04-16',  2550000, 500000, 'Mecánico', '333.333.333', '4000'),
('1.130.782', 'Antonio Gil', 'M', '1980-01-23', '2010-04-16', 850000, 1500000, 'Técnico', '16.211.383', '1500'),
('333.333.334', 'Marisol Pulido', 'F', '1979-10-01', '1990-05-16', 3250000, 1000000, 'Investigador', '16.759.060', '3000'),
('333.333.335', 'Ana Moreno', 'F', '1992-01-05', '2004-06-01', 1200000, 400000, 'Secretaria', '16.759.060', '3000'),
('1.130.333', 'Pedro Blanco', 'M', '1987-10-28', '2000-10-01', 800000, 3000000, 'Vendedor', '31.178.144', '2000'),
('1.130.444', 'Jesús Alfonso', 'M', '1988-03-14', '2000-10-01', 800000, 3500000, 'Vendedor', '31.178.144', '2000'),
('333.333.336', 'Carolina Ríos', 'F', '1992-02-15', '2000-10-01', 1250000, 500000, 'Secretaria', '16.211.383', '1500'),
('333.333.337', 'Edith Muñoz', 'F', '1992-03-31', '2000-10-01', 800000, 3600000, 'Vendedor', '31.178.144', '2100'),
('1.130.555', 'Julián Mora', 'M', '1989-07-03', '2000-10-01', 800000, 3100000, 'Vendedor', '31.178.144', '2200'),
('1.130.666', 'Manuel Millán', 'M', '1990-12-08', '2004-06-01',800000, 3700000, 'Vendedor', '31.178.144', '2300'); 

--1
select * from Empleado
--2
select * from Departamento
--3
select * from Empleado
where CargoE=('Secretaria')
--4
select nomEmp, salEmp from Empleado
--5
select * from Empleado
where cargoE=('Vendedor')
order by nomEmp asc;
--6
select Distinct nombreDpto from Departamento;
--7
select Distinct nombreDpto from Departamento
order by nombreDpto asc
--8
select nombreDpto, ciudad from Departamento
order by ciudad asc
--9
select nombreDpto, ciudad from Departamento
order by ciudad desc
--10
select nomEmp, cargoE from Empleado
order by salEmp
--11
select nomEmp, cargoE from Empleado
order by CargoE, salEmp
--12
select nomEmp, cargoE from Empleado
order by CargoE desc
--13
select salEmp, comisionE from Empleado
where codDepto like ('2000')
--14
select salEmp, comisionE from Empleado
where codDepto like ('2000')
order by comisionE
--15
select comisionE from Empleado
--16
select distinct comisionE from Empleado
order by comisionE
--17
select distinct salEmp from Empleado
--18
select nomEmp, salEmp, salEmp+500 as 'Pago total $'  from Empleado
where codDepto = ('3000')
--19
select * from Empleado
where salEmp<comisionE
--20
select nDIEmp,nomEmp,salEmp,comisionE from Empleado
where salEmp*.3 <=comisionE
--21
select nomEmp as 'Nombre' , cargoE as 'Cargo', nDIEmp,  sexEmp, fecNac, fecIncorporacion, salEmp, comisionE, jefeID, codDepto from Empleado
--22
select nDIEmp,nomEmp,salEmp,comisionE from Empleado
where nDIEmp>('19.709.802')
--23
select nDIEmp,nomEmp,salEmp,comisionE from Empleado
where salEmp <= comisionE*.4
--24
select nomEmp, cargoE as 'Grupo' from Empleado
where (nomEmp> 'J' and nomEmp< 'Z')
order by nomEmp
--25
select salEmp,comisionE, salEmp+comisionE as 'Salario total', nDIEmp,nomEmp from Empleado
where comisionE> 1000000
order by nDIEmp
--26
select salEmp,comisionE, salEmp+comisionE as 'Salario total', nDIEmp,nomEmp from Empleado
where comisionE = 0 
order by nDIEmp
--27
select nDIEmp,nomEmp,salEmp,comisionE from Empleado
where salEmp >1000000 and jefeID > '31.840.269'
--28
select nDIEmp,nomEmp,salEmp,comisionE from Empleado
where salEmp != 1000000 and jefeID != '31.840.269'
--29
select nomEmp, cargoE as 'Grupo' from Empleado
where not nomEmp like '%Ma%'
--30
select  distinct nombreDpto from Departamento
where not (nombreDpto like 'Ventas' or nombreDpto like 'Investigacion' or nombreDpto like 'Mantenimiento')

--31
select E.nomEmp, E.cargoE,D.nombreDpto from Departamento D,Empleado E
where cargoE in ('Secretaria','Vendedor')
and salEmp>1000000 and E.codDepto = D.codDepto and E.codDepto not in (select X.codDepto from Departamento X where X.nombreDpto = 'PRODUCCIÓN')

--32

SELECT nomEmp from Empleado
where LEN(nomEmp) = 11;

--33
SELECT nomEmp from Empleado
where LEN(nomEmp) > 12;

--34
select * from Empleado
where (nomEmp = 'M%'  AND (salEmp > 800000 OR comisionE > 0) 
      AND  codDepto IN (SELECT codDepto        
	  FROM DEpartamento        
	  WHERE nombreDpto = 'VENTAS'))

--35
select nomEmp, salEmp, (salEmp*1.07) as 'nuevo salario', comisionE FROM Empleado ; 
  
--36
select * from Empleado where  nDIEmp IN ('31.178.144', '16.759.060', '1.751.219', '768.782', '737.689', 
'19.709.802', '31.174.099', '1.130.782')

--37
select nDIEmp, nomEmp, codDepto from Empleado 
order by  codDepto, nomEmp; 

--38
select nomEmp, salEmp from Empleado
where salEmp IN (select MAX(salEmp) from Empleado)

--39
select COUNT(nDIEmp),SUM (comisionE) from Empleado
where comisionE > 0

--40
select MAX (nomEmp) from Empleado; 

--41
select MAX(salEmp) as 'Maximo',MIN(salEmp) as 'Minimo',(MAX(salEmp)-MIN(salEmp)) as 'Diferencia'  from Empleado

--42
select MAX(salEmp) as 'Maximo',MIN(salEmp) as 'Minimo',(MAX(salEmp)+MIN(salEmp)) as 'Suma'  from Empleado

--43
SELECT codDepto, sexEmp, COUNT (nomEmp) FROM Empleado GROUP BY codDepto, sexEmp

--44
SELECT codDepto, AVG(salEmp) as 'Promedio' FROM Empleado GROUP BY codDepto; 
 
--45
SELECT N.codDepto, D.nombreDpto, N.Promedio FROM Departamento D, (SELECT codDepto, AVG(salEmp) AS Promedio FROM Empleado    
WHERE salEmp > 900000 AND salEmp > 575000 GROUP BY codDepto) N WHERE N.codDepto = D.codDepto; 

--46
SELECT E.codDepto, E.nomEmp, E.salEmp, N.proT FROM Empleado E, (SELECT AVG(salEmp) AS proT FROM Empleado) N 
WHERE E.salEmp >= N.proT ORDER BY E.codDepto; 

--47
SELECT N.codDepto, D.nombreDpto, N.nro FROM Departamento D, (SELECT codDepto, COUNT(nDIEmp) AS nro FROM Empleado 
GROUP BY codDepto HAVING COUNT(nDIEmp)>3) N 
WHERE N.codDepto = D.codDepto

--48
SELECT J.nDIEmp, J.nomEmp FROM Empleado J, (SELECT S.jefeID FROM Empleado E,  Empleado S 
WHERE E.nDIEmp = S.jefeID GROUP BY S.jefeID HAVING COUNT (S.nDIEmp)>= 1) P 
WHERE J.nDIEmp = P.jefeID 

--49
SELECT D.nombreDpto FROM Departamento D, (SELECT * FROM Departamento D inner JOIN  Empleado )  
WHERE D.codDepto = N.codDepto GROUP BY D.nombreDpto HAVING COUNT (N.nDIEmp) = 0 ORDER BY D.nombreDpto DESC; 


--50
SELECT D.nombreDpto, nCar, proS FROM (Departamento D  NATURAL LEFT OUTER JOIN  (SELECT codDepto, COUNT (cargoE) AS nCar, AVG (salEmp) AS proS FROM Empleado GROUP BY codDepto ) E ) ORDER BY nombreDpto

--51
CREATE VIEW SumSalar AS  (SELECT codDepto, SUM (salEmp) AS sumS FROM Empleado GROUP BY codDepto); 
CREATE VIEW SumSalar2 AS (SELECT MAX (sumS) sSalD  FROM SumSalar) 
SELECT * FROM SumSalar2 ; 
SELECT D.nombreDpto, E.sSalD FROM Departamento D,       
(SELECT codDepto, sSalD       
FROM SumSalar2 S2, SumSalar S1       
WHERE S2.sSalD = S1.sumS) E WHERE D.codDepto = E.codDepto; 
--52

SELECT D.nDIEmp, D.nomEmp, E.noSu FROM Empleado D, (SELECT jefeId, COUNT(nDIEmp) AS noSu  FROM Empleado WHERE jefeId IS NOT NULL GROUP BY jefeId) E 
WHERE D.nDIEmp = E.jefeId ORDER BY E.noSu DESC 