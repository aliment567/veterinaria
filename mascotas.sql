create database veterinaria;
use veterinaria;
create table mascotas (
     nombre varchar (45),
     especie varchar(45),
     raza varchar (45),
     edad int,
     identificacion float(10));
insert into  mascotas (nombre, especie, raza, edad, identificacion) values
     ('luna', 'perro', 'labardor', '5', '1033'),
     ('max', 'perro', 'bulldog', '3', '3453'),
     ('copo', 'gato', 'siames', '7', '6789'),
     ('lupi', 'ave', 'canario', '3', '4578'),
     ('black', 'gato', 'persa', '4', '7980');
select * from mascotas;
alter table mascotas
     add column dueño varchar(45),
     add column telefono_dueño varchar(15);
 update mascotas set dueño = 'felipe', telefono_dueño = '3057283942' where nombre = 'luna';
 update mascotas set dueño = 'brayan', telefono_dueño = '3067289942' where nombre = 'max';
select * from mascotas where especie = 'perro' or especie = 'ave';
select * from mascotas where especie = 'gato' and raza = 'persa';

