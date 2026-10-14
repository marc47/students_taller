use students_taller;

-- Todos los estudiantes

select * from estudiantes;

-- Estudiantes cuyo nombre empieza con “M”

select estudiante_id, nombre_estudiante
from estudiantes
where nombre_estudiante like 'M%';

-- Cursos ordenados por nombre

select curso_id, nombre_curso, aula, horario_inicio, horario_fin
from cursos
order by nombre_curso asc;

-- Cuántos estudiantes hay registrados

select count(*) as total_estudiantes
from estudiantes;

-- Cada curso con su docente (JOIN)

select c.nombre_curso, d.nombre_docente, c.aula
from cursos c
join docentes d on c.docente_id = d.docente_id;

-- Cursos con docente y estudiante, solo los del aula 101 

select c.nombre_curso,
       d.nombre_docente,
       e.nombre_estudiante,
       c.horario_inicio,
       c.horario_fin
from cursos c
join docentes d on c.docente_id = d.docente_id
join estudiantes e on c.estudiante_id = e.estudiante_id
where c.aula = 101;
