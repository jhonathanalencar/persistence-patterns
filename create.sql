drop schema cifer cascade;

create schema cifer;

create table cifer.user (
	user_id uuid primary key,
	name text not null,
	email text not null unique
);

create table cifer.ticket (
	ticket_id uuid primary key,
	requester_id uuid not null references cifer.user (user_id),
	assignee_id uuid null references cifer.user (user_id),
	content text,
	start_date timestamp,
	end_date timestamp,
	status text,
	duration int
);

insert into cifer.user (user_id, name, email) values ('b7e6db47-3e5d-4220-9265-0e6eef8c4330', 'Alice', 'alice@gmail.com');
insert into cifer.user (user_id, name, email) values ('d88aa636-22f5-4da1-9384-077f80e51301', 'Bob', 'bob@gmail.com');