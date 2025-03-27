#Taller-en-clase-26/03/2025

# veterinaria

-CREAMOS LA BASE DE DATOS:

create database veterinaria;

-LE PEDIMOS QUE UTILIZE LA BASE DE DATOS:

use veterinaria;

-CREAMOS LA TABLA DE MASCOTAS:

create table mascotas (
    -> nombre varchar (45),
    -> especie varchar(45),
    -> raza varchar (45),
    -> edad int,
    -> identificacion float(10));

-INSETAMOS DATOS EN LA TABLA:

insert into  mascotas (nombre, especie, raza, edad, identificacion) values
    -> ('luna', 'perro', 'labardor', '5', '1033'),
    -> ('max', 'perro', 'bulldog', '3', '3453'),
    -> ('copo', 'gato', 'siames', '7', '6789'),
    -> ('lupi', 'ave', 'canario', '3', '4578'),
    -> ('black', 'gato', 'persa', '4', '7980');

-CONSULTAMOS LOS DATOS DE LA TABLA:    

select * from mascotas;

-AGREGAMOS 2 NUEVAS COLUMNAS EN LA TABLA:

alter table mascotas
    -> add column dueño varchar(45),
    -> add column telefono_dueño varchar(15);

- AGREGAMOS DATOS A LAS 2 NUEVAS COLUMNAS:

 update mascotas set dueño = 'felipe', telefono_dueño = '3057283942' where nombre = 'luna';
 update mascotas set dueño = 'brayan', telefono_dueño = '3067289942' where nombre = 'max';

-FILTRA LOS DATOS PARA QUE SOLO ME MUESTRE LAS FILAS DE LA COLUMNA ESPECIE YA SEA PERRO O AVE

select * from mascotas where especie = 'perro' or especie = 'ave';

-ME FILTRA LOS DATOS PARA QUE SOLO ME MUESTRE LA COLUMNA ESPECIE GATO Y QUE LA RAZA SEA PERSA

mysql> select * from mascotas where especie = 'gato' and raza = 'persa';
