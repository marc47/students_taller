drop database if exists students_taller;
create database students_taller;

use students_taller;

create table estudiantes(
	estudiante_id int auto_increment primary key,
    nombre_estudiante varchar(100) not null
);


create table docentes(
	docente_id int auto_increment primary key,
    nombre_docente varchar(100) not null
);

create table cursos(
 curso_id int auto_increment primary key,
    nombre_curso varchar(100) not null,
    docente_id int not null,
    estudiante_id int not null,
    horario_inicio time,
    horario_fin time,
    aula int not null,
    constraint fk_curso_docente foreign key (docente_id) references docentes(docente_id),
    constraint fk_curso_estudiante foreign key (estudiante_id) references estudiantes(estudiante_id)
);