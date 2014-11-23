

create table employee_hobby(
id_hobby serial not null unique,
namee varchar(30) not null,
description varchar(30) not null,
constraint pk_tb_employee_Hobby primary key (id_hobby));


create table emp_tiene_hobb
(
id_empleado int not null,
id_hobby int not null,
primary key (id_empleado,id_hobby));



alter table emp_tiene_hobb
add constraint fk_empleado FOREIGN KEY(id_empleado) REFERENCES tb_employee(id_employee);

alter table emp_tiene_hobb
add constraint fk_hobbie FOREIGN KEY(id_hobby) REFERENCES employee_hobby(id_hobby); 


insert into employee_hobby(namee,description) values('futbol','jugar partidos de futbol');
insert into employee_hobby(namee,description) values('pescar','pescar atunes');
insert into employee_hobby(namee,description) values('leer','adentrarse en un buen libro');

insert into emp_tiene_hobb(id_empleado,id_hobby)values(1,1);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(1,3);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(2,2);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(2,1);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(3,3);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(3,1);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(4,1);
insert into emp_tiene_hobb(id_empleado,id_hobby)values(4,3);


select * from tb_employee;
select * from employee_hobby;
select * from emp_tiene_hobb




