drop table branas.time_record;
drop table branas.employee;

create table branas.employee (
	employee_id serial primary key,
	name text,
	role text,
	salary numeric,
	wage numeric,
	type text
);

create table branas.time_record (
	time_record_id serial primary key,
	employee_id integer,
	checkin_date timestamp,
	checkout_date timestamp
);

insert into branas.employee (name, role, wage, type) values ('Pedro Silva', 'Developer', 50, 'hourly');
insert into branas.employee (name, role, salary, type) values ('Ana Costa', 'Developer', 5000, 'salaried');
insert into branas.employee (name, role, type) values ('Sergio Oliveira', 'Developer', 'volunteer');

insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-04T08:00:00-03:00', '2023-12-04T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-04T014:00:00-03:00', '2023-12-04T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-05T08:00:00-03:00', '2023-12-05T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-05T014:00:00-03:00', '2023-12-05T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-06T08:00:00-03:00', '2023-12-06T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-06T014:00:00-03:00', '2023-12-06T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-07T08:00:00-03:00', '2023-12-07T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-07T014:00:00-03:00', '2023-12-07T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-08T08:00:00-03:00', '2023-12-08T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (1, '2023-12-08T014:00:00-03:00', '2023-12-08T18:00:00-03:00');

insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-04T08:00:00-03:00', '2023-12-04T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-04T014:00:00-03:00', '2023-12-04T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-05T08:00:00-03:00', '2023-12-05T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-05T014:00:00-03:00', '2023-12-05T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-06T08:00:00-03:00', '2023-12-06T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-06T014:00:00-03:00', '2023-12-06T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-07T08:00:00-03:00', '2023-12-07T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-07T014:00:00-03:00', '2023-12-07T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-08T08:00:00-03:00', '2023-12-08T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-08T014:00:00-03:00', '2023-12-08T18:00:00-03:00');

insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-11T08:00:00-03:00', '2023-12-11T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-11T014:00:00-03:00', '2023-12-11T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-12T08:00:00-03:00', '2023-12-12T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-12T014:00:00-03:00', '2023-12-12T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-13T08:00:00-03:00', '2023-12-13T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-13T014:00:00-03:00', '2023-12-13T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-14T08:00:00-03:00', '2023-12-14T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-14T014:00:00-03:00', '2023-12-14T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-15T08:00:00-03:00', '2023-12-15T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-15T014:00:00-03:00', '2023-12-15T18:00:00-03:00');

insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-18T08:00:00-03:00', '2023-12-18T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-18T014:00:00-03:00', '2023-12-18T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-19T08:00:00-03:00', '2023-12-19T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-19T014:00:00-03:00', '2023-12-19T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-20T08:00:00-03:00', '2023-12-20T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-20T014:00:00-03:00', '2023-12-20T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-21T08:00:00-03:00', '2023-12-21T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-21T014:00:00-03:00', '2023-12-21T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-22T08:00:00-03:00', '2023-12-22T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-22T014:00:00-03:00', '2023-12-22T18:00:00-03:00');

insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-26T08:00:00-03:00', '2023-12-26T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-26T014:00:00-03:00', '2023-12-26T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-27T08:00:00-03:00', '2023-12-27T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-27T014:00:00-03:00', '2023-12-27T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-28T08:00:00-03:00', '2023-12-28T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-28T014:00:00-03:00', '2023-12-28T18:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-29T08:00:00-03:00', '2023-12-29T12:00:00-03:00');
insert into branas.time_record (employee_id, checkin_date, checkout_date) values (2, '2023-12-29T014:00:00-03:00', '2023-12-29T18:00:00-03:00');
