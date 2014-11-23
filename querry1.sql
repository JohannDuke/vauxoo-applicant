-- Database: employee_employee

-- DROP DATABASE employee_employee;

create database employee_employee

create table tb_employee(
id_employee serial not null unique,
first_name varchar(30) not null,
last_name varchar(30) not null,
constraint pk_tb_employee primary key (id_employee));



create table trabaja_en(
id_employe serial not null unique,
id_departamento int,
constraint pk_tb_trabaja_en primary key (id_employe));


create table tb_employee_departament(
id_emp_dep serial not null unique,
name_dep varchar(30) not null,
description text,
constraint pk_tb_employee_departament primary key (id_emp_dep));



alter table trabaja_en
add constraint fk_department FOREIGN KEY(id_departamento) REFERENCES tb_employee_departament(id_emp_dep) 

alter table trabaja_en
add constraint fk_depa FOREIGN KEY(id_employe) REFERENCES tb_employee(id_employee) 


insert into tb_employee(first_name,last_name) values('david','lopez');
insert into tb_employee(first_name,last_name) values('jose','luna');
insert into tb_employee(first_name,last_name) values('maria','perez');
insert into tb_employee(first_name,last_name) values('raul','gonzalez');

insert into tb_employee_departament(id_emp_dep,name_dep,description) values(1,'sistemas','sistemas');
insert into tb_employee_departament(id_emp_dep,name_dep,description) values(2,'rh','rh');
insert into tb_employee_departament(id_emp_dep,name_dep,description) values(3,'gerencia','gerencia');
insert into tb_employee_departament(id_emp_dep,name_dep,description) values(4,'direccion','direccion');
insert into tb_employee_departament(id_emp_dep,name_dep,description) values(5,'almacen','almacen');
insert into tb_employee_departament(id_emp_dep,name_dep,description) values(6,'limpieza','limpieza');

insert into trabaja_en(id_employe,id_departamento) values(1,2);
insert into trabaja_en(id_employe,id_departamento) values(2,2);
insert into trabaja_en(id_employe,id_departamento) values(3,5);
insert into trabaja_en(id_employe,id_departamento) values(4,6);

select * from tb_employee
select * from tb_employee_departament
select * from trabaja_en


drop table trabaja_en;
drop table tb_employee;
drop table tb_employee_departament

