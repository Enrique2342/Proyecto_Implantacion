CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255),
    ApellidoP VARCHAR(255),
    APELLIDOM VARCHAR(255),
    CALLE VARCHAR(255),
    DELEGACION VARCHAR(255),
    COLONIA VARCHAR(255),
    TELEFONO VARCHAR(255),
    FECHA_NAC DATE,
    password VARCHAR(255),
    Licenciatura VARCHAR(255),
    numero_cuenta VARCHAR(20) UNIQUE, 
    rol VARCHAR(20),
    ruta_imagen VARCHAR(255),
    estado BOOLEAN NOT NULL DEFAULT 1,
    id_materia INT,  
    id_horario INT
);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Adrien osamet', 'Ojeda','Trasviña', 'Aquiles serda', 'Esterito', 'Esterito', '61215543212', '1996-06-11', 
12345, 'Lic. Actuaria', 'A12345678','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Jasmin', 'Zarate','Chula', 'Chabacano', 'Haiti', 'Santo Domingo', '19207491876', '1998-03-09', 
82937, 'Lic. Arquitectura', 'A18293047','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Frida', 'Gutierrez','Treviño', 'Cereza', 'Exposito', 'Bombas', '83947129087', '1890-10-01', 
12355, 'Lic. Panaderia', 'A78965439','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Emiliano', 'Quiroz','Cervantes', 'Lomas Estrella', 'Canal de chalco', 'Escritorio', '81111889965', '2003-10-11', 
12222, 'Lic. Sanborns', 'A92634876','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Jose Enrique', 'Fuentes','Hernandez', 'Francisco I Madero', 'Centro', 'Rio Viejo', '6478289354', '2002-10-14', 
54321, 'Lic. Literatura', 'A87654321','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Analy', 'Cisneros','Godinez', 'Cupcakes', 'Venustiano Carranza', 'Pollito asado', '7383748383', '2003-02-15', 
12345, 'Lic. Cinematografia', 'A12348765','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Cecilia', 'Llanos','Molina', 'Progreso', 'Progresos', 'San pablo', '8858483848', '2001-11-10', 
12345, 'Lic. Sistemas', 'A12545465','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Jose Antonio', 'Reyes','Alvarez', 'Pozole', 'Maiz', 'Pollito', '5646544545', '1996-02-19', 
12345, 'Lic.Aviacion', 'A65888599','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Lilibet', 'Martinez','Nunes', 'Tamales', 'Ventero', 'Mosquitos', '5422113332', '1996-02-20', 
12345, 'Lic. Criminologia', 'A38383003','alumno', 0);

insert into usuarios (nombre,ApellidoP,APELLIDOM,calle,DELEGACION,COLONIA,TELEFONO,FECHA_NAC,password,
Licenciatura,numero_cuenta,rol,estado) values ('Gloria', 'Marin','Toledo', 'Aguas', 'Frescas', 'Nose', '2452433121', '1996-09-01', 
12345, 'Lic. Psicologia', 'A65645333','alumno', 0);

CREATE TABLE colegiaturas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    estudiante_id INT,
    monto DECIMAL(10, 2),
    fecha_pago DATE,
    estado varchar(255),
    CONSTRAINT fk_estudiante FOREIGN KEY (estudiante_id) REFERENCES usuarios(id)
);

INSERT INTO colegiaturas (estudiante_id, monto, fecha_pago, estado) VALUES
(1, 500.00, '2023-01-15', 'Pendiente'),
(1, 500.00, '2023-02-15', 'Pendiente'),
(1, 500.00, '2023-03-15', 'Pendiente'),
(2, 500.00, '2023-01-16', 'Pendiente'),
(2, 500.00, '2023-02-16', 'Pendiente'),
(2, 500.00, '2023-03-16', 'Pendiente'),
(3, 500.00, '2023-01-17', 'Pendiente'),
(3, 500.00, '2023-02-17', 'Pendiente'),
(3, 500.00, '2023-03-17', 'Pendiente'),
(4, 500.00, '2023-01-18', 'Pendiente'),
(4, 500.00, '2023-02-18', 'Pendiente'),
(4, 500.00, '2023-03-18', 'Pendiente'),
(5, 500.00, '2023-01-19', 'Pendiente'),
(5, 500.00, '2023-02-19', 'Pendiente'),
(5, 500.00, '2023-03-19', 'Pendiente'),
(6, 500.00, '2023-01-20', 'Pendiente'),
(6, 500.00, '2023-02-20', 'Pendiente'),
(6, 500.00, '2023-03-20', 'Pendiente'),
(7, 500.00, '2023-03-21', 'Pendiente'),
(7, 500.00, '2023-03-21', 'Pendiente'),
(7, 500.00, '2023-03-21', 'Pendiente'),
(8, 500.00, '2023-03-22', 'Pendiente'),
(8, 500.00, '2023-03-22', 'Pendiente'),
(8, 500.00, '2023-03-22', 'Pendiente'),
(9, 500.00, '2023-03-23', 'Pendiente'),
(9, 500.00, '2023-03-23', 'Pendiente'),
(9, 500.00, '2023-03-23', 'Pendiente'),
(10, 500.00, '2023-03-24', 'Pendiente'),
(10, 500.00, '2023-03-24', 'Pendiente'),
(10, 500.00, '2023-03-24', 'Pendiente'),
(11, 500.00, '2023-03-25', 'Pendiente'),
(11, 500.00, '2023-03-25', 'Pendiente'),
(11, 500.00, '2023-03-25', 'Pendiente'),
(12, 500.00, '2023-03-26', 'Pendiente'),
(12, 500.00, '2023-03-25', 'Pendiente'),
(12, 500.00, '2023-03-25', 'Pendiente'),
(13, 500.00, '2023-03-26', 'Pendiente'),
(13, 500.00, '2023-03-26', 'Pendiente'),
(13, 500.00, '2023-03-26', 'Pendiente'),
(14, 500.00, '2023-03-27', 'Pendiente'),
(14, 500.00, '2023-03-27', 'Pendiente'),
(14, 500.00, '2023-03-27', 'Pendiente'),
(15, 500.00, '2023-03-28', 'Pendiente'),
(15, 500.00, '2023-03-28', 'Pendiente'),
(15, 500.00, '2023-03-28', 'Pendiente');


CREATE TABLE horarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    materia VARCHAR(255),
    horario VARCHAR(255),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

INSERT INTO horarios (id_usuario, materia, horario) VALUES (1, 'Matemáticas', 'Lunes 10:00 AM - 12:00 PM');

CREATE TABLE cursos (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    id_profesor INT,
    nombre_curso VARCHAR(255),
    descripcion TEXT,
    horario VARCHAR(255),
    salon VARCHAR(10),
    FOREIGN KEY (id_profesor) REFERENCES usuarios(id)
);

INSERT INTO cursos (id_profesor, nombre_curso, descripcion, horario, salon)
VALUES (7, 'Modelado de programación ', 'POO', 'Lunes 12:00 PM - 14:00 PM', 'Salón F302');
INSERT INTO cursos (id_profesor, nombre_curso, descripcion, horario, salon)
VALUES (7, 'Introducción a Sistemas Operativos ', 'introducción a sistema operativo windows 10', 'Lunes 7:00 AM - 12:00 PM', 'Salón F102');

CREATE TABLE horariosp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_curso INT,  
    materia VARCHAR(255),
    horario VARCHAR(255),
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)  
);

CREATE TABLE materias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    creditos INT
);
