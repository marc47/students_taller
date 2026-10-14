use students_taller;

insert into estudiantes(estudiante_id, nombre_estudiante) values
('1', 'Juan Pérez'),
('2', 'María Gómez'),
('3', 'Luis Ramírez'),
('4', 'Ana Morales'),
('5', 'Laura Rodríguez'),
('6', 'Daniel Hernández'),
('7', 'Carolina Sánchez'),
('8', 'Mario López');

insert into docentes(docente_id, nombre_docente) values
('11', 'Carlos Gomez'),
('12', 'Maria Ramirez'),
('13', 'Jose Rodriguez');

insert into cursos(curso_id, nombre_curso, docente_id, estudiante_id, aula, horario_inicio, horario_fin) values
(111, 'Algoritmos',     11, 1, 101, '10:00', '12:00'),
(112, 'Redes',          12, 2, 102, '14:00', '16:00'),
(113, 'Bases de Datos', 13, 3, 101, '08:00', '10:00');

