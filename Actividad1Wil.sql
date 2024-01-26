CREATE DATABASE Asignacion1;
USE Asignacion1;

CREATE TABLE TbDepartamento(
id_departamento int PRIMARY KEY 
);

CREATE TABLE TbCargo(
id_cargo INT PRIMARY KEY
);

CREATE TABLE TbEmpleado(
id_empleado INT PRIMARY KEY,
nombre_empleado VARCHAR(50),
apellido_empleado VARCHAR(50),
salario_empleado DECIMAL,
fecha_inicio DATE,
id_cargo INT,
id_departamento INT, 
FOREIGN KEY (id_departamento) REFERENCES TbDepartamento(id_departamento),
FOREIGN KEY (id_cargo) REFERENCES TbCargo(id_cargo)
);

CREATE TABLE TbProyecto(
id_proyecto INT PRIMARY KEY
);

CREATE TABLE TbCargoProyecto(
id_proyecto INT,
id_empleado INT,
FOREIGN KEY (id_proyecto) REFERENCES TbProyecto(id_proyecto),
FOREIGN KEY (id_empleado) REFERENCES TbEmpleado(id_empleado)
);


