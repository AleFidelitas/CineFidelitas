drop schema if exists cinefide;
drop user if exists administrador;
CREATE SCHEMA cinefide ;

create user 'administrador'@'%' identified by 'Admin123';

grant all privileges on cinefide.* to 'administrador'@'%';
flush privileges;

create table cinefide.usuarios(
id_usuario int NOT NULL Auto_Increment primary key, 
usuario  varchar(50),    
nombre  varchar(50), 
apellidos  varchar(100),
contraseña  varchar(50),    
correo  varchar(100), 
fecha varchar(30))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

