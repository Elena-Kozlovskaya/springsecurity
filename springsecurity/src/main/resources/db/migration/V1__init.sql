create table if not exists users
(
    id       bigserial,
    username varchar(30) not null unique,
    password varchar(80) not null,
    email    varchar(50) unique,
    primary key (id)
);

create table if not exists roles
(
    id   serial,
    name varchar(50) not null,
    primary key (id)
);

create table if not exists users_roles
(
    user_id bigint not null,
    role_id int    not null,
    primary key (user_id, role_id),
    foreign key (user_id) references users (id),
    foreign key (role_id) references roles (id)
);

insert into roles (name)
values ('ROLE_USER'),
       ('ROLE_ADMIN');

insert into users (username, password, email)
values ('MyUser', '$2a$12$QcqtrvJhZNtmUI5u/QRrfOpGfaMubI5ZiXahUYk5TUppxIHT8Vt4C', 'myuser@gmail.com'),
       ('MyAdmin', '$2a$12$QcqtrvJhZNtmUI5u/QRrfOpGfaMubI5ZiXahUYk5TUppxIHT8Vt4C', 'myadmin@gmail.com');

insert into users_roles (user_id, role_id)
values (1, 1);
