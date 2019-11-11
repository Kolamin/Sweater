delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$Yz1xAA81O2v0Ur7wG9r7V.xvrunqxtzsDdplOqcjeHgw8fYqWdMWO', 'admin'),
(2, true, '$2a$08$Yz1xAA81O2v0Ur7wG9r7V.xvrunqxtzsDdplOqcjeHgw8fYqWdMWO', 'mike');

insert into user_role(user_id, roles) values
(1, 'USER'), (1, 'ADMIN'),
(2, 'USER');