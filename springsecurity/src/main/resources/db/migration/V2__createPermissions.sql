create table if not exists permissions
(
    id serial,
    name varchar(50) not null,
    primary key (id)
    );

create table if not exists roles_permissions
(
    role_id int not null,
    permission_id int not null,
    primary key (role_id, permission_id),
    foreign key (role_id) references roles (id),
    foreign key (permission_id) references permissions (id)
);

insert into permissions (name)
values ('PERMISSION_WRITE'),
       ('PERMISSION_READ');

insert into roles_permissions (role_id, permission_id)
values (1, 2),
       (2, 1),
       (2, 2);

insert into users_roles (user_id, role_id)
values (2, 2);