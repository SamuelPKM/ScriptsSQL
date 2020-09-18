create database ProyectoArquitectura

use ProyectoArquitectura

create table Usuarios(
ID_Usuario int not null primary key,
ID_TipoUsuario int not null,
Nombre nvarchar(50),
Apaterno nvarchar(50),
Amaterno nvarchar(50),
Usuario nvarchar(50),
Pasword nvarchar(30) not null,
Activo bit not null
)
