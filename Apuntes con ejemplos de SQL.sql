/*Eliminar una Base de datos:

DROP DATABASE nombrebasededatos;

*/

DROP DATABASE apuntes;

/*Creacion de una base de datos con los valores predeterminados:

CREATE DATABASE nombrebasededatos

*/

CREATE DATABASE apuntes;

/*Utilizacion de una base de datos determinada para el uso de los comandos:

USE nombrebasededatos

*/

USE apuntes;

/*Creación de una tabla en una base de datos:

CREATE TABLE nombretabla (
	nombrecampo1 tipodato propiedades,
	nombrecampo2 tipodato propiedades,
	);

Los tipos de datos mas utilizados son:
	- int
	- varchar(cantidadcaracteres)

Las propiedades utilizadas principalmente son:
	- PRIMARY KEY
	- NOT NULL
	- IDENTITY			--> Campo de auto-incremento. 
								Para mostrar el valor inicial programado para el identity ejecutamos: SELECT IDENT_SEED('nombretabla');
								Para mostrar la cantidad de valores para cada incremento ejecutamos: SELECT IDENT_INCR('nombretabla');
*/

CREATE TABLE pruebatabla (
	dni varchar(9) PRIMARY KEY,
	nombre varchar(50) NOT NULL,
	telefono int ,
	);

CREATE TABLE pruebatabla2 (
	id_libro int identity,
	nombre varchar(20) not null,
	precio int,
	impuestos int,
	);

/*Comando ALTER para modificar las caracteristicas de los campos de una tabla:

- Añadir campos a una tabla:

	ALTER TABLE pruebatabla
		ADD nombrecampo tipocampo propiedad

*/

INSERT INTO pruebatabla(dni, nombre) VALUES ('58467931G', 'Pepe');

/*Forma 2 (Para introducir todos los valores de los campos) 
¡¡¡ES OBLIGATORIO RESPETAR EL ORDEN DE INTRODUCCION DE LOS DATOS TAL CUAL EL ORDEN EN EL QUE HEMOS DEFINIDO LOS CAMPOS EN LA CREACION DE LA TABLA!!!:

	INSERT INTO nombretabla VALUES (valorcampo1, 'valorcampo2', valorcampo3);

*/

INSERT INTO pruebatabla VALUES ('58467931H', 'Manuel', 922578642, 'C/Miraflores, Santa Cruz de Tenerife');

/*Mostrar datos de una tabla:

	SELECT campo1, campo2 FROM pruebatabla WHERE condiciones;
*/

SELECT dni, nombre FROM pruebatabla WHERE nombre = 'Pepe';

SELECT * FROM pruebatabla WHERE telefono IS NOT NULL;

SELECT * FROM pruebatabla WHERE nombre <> 'Pepe';

SELECT * FROM pruebatabla;

/* Mostrar campos calculados en un select y que el campo aparezca con un alias con el uso del "AS":

	SELECT campo1, campo2, campo3 + campo4 AS aliasdelcampocalculado FROM tabla WHERE condicion

*/

/*Operadores relacionales:

=	igual a
<	menor que
>	mayor que
<=	menor igual que
>=	mayor igual que
<>	diferente de

Operadores aritméticos:

+		Suma
-		Resta
*		multiplicacion
/		division
%		modulo (resto de la division)
SQR()	raiz cuadrada

*/

SELECT nombre, precio + impuestos AS Precio_con_Impuestos FROM pruebatabla2;

/*Para actualizar la/a entrada/s de un registro, utilizaremos el comando UPDATE:
	
	UPDATE nombretabla SET nombrecampo = valor WHERE condicion;

*/

UPDATE pruebatabla SET nombre = 'Juan' WHERE dni = '58467931G';

/*Eliminar registros de una tabla:

	DELETE FROM nombretabla WHERE condicion;

*/

DELETE FROM pruebatabla WHERE dni = '58467931G';

/*Para eliminar TODOS los registros de una tabla reiniciando los campos identity:

	TRUNCATE TABLE pruebatabla;

*/

TRUNCATE TABLE pruebatabla;

/* Eliminar tablas:

	DROP TABLE nombretabla;

*/

DROP TABLE pruebatabla;