create database PuntoDeVenta

use PuntoDeVenta


create table Clientes(
CEDULA_CLIENTE int not null,
NOM_Cliente nvarchar(30) not null, 
DIR_Cliente nvarchar(30) not null,
Ciudad_Cliente nvarchar(20) not null,
TELEF_Cliente nvarchar(12),
constraint pkClientes primary key(CEDULA_CLIENTE)
) 
create table Factura(
NUM_FAC int not null,
Fecha datetime,
CEDULA_CLIENTE int not null,
constraint pkFactura primary key (NUM_FAC),
constraint fkCliente foreign key (CEDULA_CLIENTE) references Clientes(CEDULA_CLIENTE) 
)

create table Productos(
COD_Prod int not null,
Categoria_Prod nvarchar(30),
DESC_Prod nvarchar (30)
constraint pkProductos primary key (COD_Prod),
)

create table Venta(
NUM_FAC int not null,
COD_Prod int not null,
CANT_Prod int not null,
Total money not null,
constraint fkPROD foreign key (COD_Prod) references Productos(COD_Prod),
constraint fkFactura foreign key (NUM_FAC) references Factura(NUM_FAC)
)