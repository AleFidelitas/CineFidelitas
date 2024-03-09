/*Se crea la base de datos */
drop schema if exists cinefide;
drop user if exists administrador;
CREATE SCHEMA cinefide ;

/*Se crea un usuario para la base de datos llamado "usuario_prueba" y tiene la contraseña "Usuario_Clave."*/
create user 'administrador'@'%' identified by 'Admin123';

/*Se asignan los prvilegios sobr ela base de datos TechShop al usuario creado */
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


