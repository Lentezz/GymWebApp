insert into exercises
values (1, 'ГАНТЕЛІ', 'ГРУДИ', 'Тяга гантелі до поясу'),
       (2, 'ГАНТЕЛІ', 'ПЛЕЧІ', 'Закидання гантель за голову'),
       (3, 'ГАНТЕЛІ', 'СПИНА', 'Станова тяга гантелями'),
       (4, 'ШТАНГА', 'СПИНА', 'Підняття штанги вгору'),
       (5, 'ШТАНГА', 'ПЛЕЧІ', 'Веслування'),
       (6, 'ГАНТЕЛІ', 'ПЛЕЧІ', 'Плечі вгору вниз'),
       (7, 'ШТАНГА', 'РУКИ', 'Жим штанги на лаві'),
       (8, 'ГАНТЕЛІ', 'ПЛЕЧІ', 'Молотковий підйом'),
       (9, 'ШТАНГА', 'НОГИ', 'Трикутник'),
       (10, 'ГАНТЕЛІ', 'РУКИ', 'Випади з гантелями'),
       (11, 'ШТАНГА', 'НОГИ', 'Фронтальне присідання зі штангою'),
       (12, 'ГУМА', 'НОГИ', 'Стрибки на скакалці'),
       (13, 'ГУМА', 'НОГИ', 'Підйом ніг з резинками'),
       (14, 'ГУМА', 'СПИНА', 'Перекидання гумового дроту через спину'),
       (15, 'ГУМА', 'РУКИ', 'Стискання еспандеру'),
       (16, 'ГАНТЕЛІ', 'СПИНА', 'Прес з гантелями'),
       (17, 'ГАНТЕЛІ', 'ГРУДИ', 'Французький жим з гантелями'),
       (18, 'ГАНТЕЛІ', 'ПЛЕЧІ', 'Перекидні вправи з гантелями для плечей'),
       (19, 'ГУМА', 'ПЛЕЧІ', 'Розведення рук з гумовою стрічкою'),
       (20, 'ГУМА', 'ПЛЕЧІ', 'Головне зрушення'),
       (21, 'ГАНТЕЛІ', 'ПЛЕЧІ', 'Жим гантелей лежачи на лаві'),
       (22, 'ГУМА', 'РУКИ', 'Біцепсові кільця'),
       (23, 'ШТАНГА', 'РУКИ', 'Мертва тяга'),
       (24, 'ГАНТЕЛІ', 'РУКИ', 'Мертва тяга зі зворотним хватом'),
       (25, 'ГАНТЕЛІ', 'ГРУДИ', 'Розведення гантелей лежачи або стоячи'),
       (26, 'НІЧОГО', 'ГРУДИ', 'Відтискання'),
       (27, 'НІЧОГО', 'РУКИ', 'Підтягування'),
       (28, 'НІЧОГО', 'НОГИ', 'Присідання'),
       (29, 'НІЧОГО', 'ГРУДИ', 'Присідання зі зведеними руками'),
       (30, 'НІЧОГО', 'НОГИ', 'Біг'),
       (31, 'НІЧОГО', 'СПИНА', 'Повороти на турніку'),
       (32, 'НІЧОГО', 'СПИНА', 'Прес на перекладині');

insert into plans
values (1, 'Набір ваги', 4, 150.00, 450.00),
       (2, 'Набір ваги', 8, 150.00, 800.00),
       (3, 'Набір ваги', 12, 150.00, 1200.00),
       (4, 'Схуднення', 4, 150.00, 430.00),
       (5, 'Схуднення', 8, 150.00, 780.00),
       (6, 'Схуднення', 12, 150.00, 1140.00),
       (7, 'Сила', 4, 150.00, 500.00),
       (8, 'Сила', 8, 150.00, 900.00),
       (9, 'Сила', 12, 150.00, 1350.00);

INSERT INTO roles VALUES (1, 'ROLE_USER'), (2, 'ROLE_ADMIN');

insert into users(id, email, enabled,first_name, last_name, password, subscribed, username)
values (1,'admin@gmail.com',1, 'Admin','Admin','$2a$10$lmwTYkM8WOfb02wY.wLBXeRVkFCtbyEopVGU.nOasKtGc5sC5nKlG',null,'Admin'),
       (2,'groomy14@gmail.com',1,'Georg','Gorny','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa',null,'Gniego'),
       (3,'s.jasinski@outlook.com',1,'Stinger','Hoston','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa','yes','Jasson'),
       (4,'kamil.boston@in.com',1,'Kamil','Boston','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa','yes','Kambon'),
       (5,'marco_schumann@gmail.com',1,'Marco','Schumann','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa',null,'Marko'),
       (6,'starsky@net.com',1,'Adam','Husein','$2a$10$OpIqZEOW2QSlm1KByYrGHO1c8gBrD.m3JxpHGDEImr59GVD9JidKa','yes','Ausein'),
       (7,'andrea.batis@net.com',1,'Andrea','Batis','Andrea333',null,'Andrea'),
       (8,'bartoz@gmail.com',1,'Bartoz','Lincoln','$2a$10$QmXsopwvLKx0shHMqKjxeO6pe6F6hsbYVF3O/c9vAut7m5UXIWHgC',null,'LinColn');

insert into trainers
values (1, 'van.van@gmail.com', 'Van Darkholme'),
       (2, 'wilher@gmail.com', 'William Herrington'),
       (3, 'dennly@gmail.com', 'Denny Li'),
       (4, 'ricky@gmail.com', 'Ricardo Limos'),
       (5, 'mark69wolf@gmail.com', 'Mark Wolf'),
       (6, 'nicoDog@gmail.com', 'Nico Douga'),
       (7, 'lily.deep@gmail.com', 'Lily Star');

insert into schedule
values (1, 'Понеділок', '16:00', 'Body Shape', 'Nico Douga', 6),
       (2, 'Понеділок', '17:00', 'Kettlebells', 'Mark Wolf', 5),
       (3, 'Понеділок', '18:00', 'Body Workout', 'Mark Wolf', 5),
       (4, 'Понеділок', '19:00', 'Circuit Training', 'Denny Li', 3),
       (5, 'Понеділок', '20:00', 'Weight Lifting', 'Ricardo Limos', 4),

       (6, 'Вівторок', '16:00', 'Upper-Body', 'Mark Wolf', 5),
       (7, 'Вівторок', '17:00', 'Resistance Bands', 'Mark Wolf', 5),
       (8, 'Вівторок', '18:00', 'Iron Power', 'Ricardo Limos', 4),
       (9, 'Вівторок', '19:00', 'Circuit Training', 'Denny Li', 3),
       (10, 'Вівторок', '20:00', 'Gym Classes', 'William Herrington', 2),

       (11, 'Середа', '16:00', 'Body Pump', 'Nico Douga', 6),
       (12, 'Середа', '17:00', 'Kettlebells', 'Nico Douga', 6),
       (13, 'Середа', '18:00', 'Lower-Body', 'Nico Douga', 6),
       (14, 'Середа', '19:00', 'Weight Lifting', 'Ricardo Limos', 4),
       (15, 'Середа', '20:00', 'Crossfit', 'Van Darkholme', 1),

       (16, 'Четвер', '16:00', 'Fighter Training', 'Denny Li', 3),
       (17, 'Четвер', '17:00', 'Circuit Training', 'Denny Li', 3),
       (18, 'Четвер', '18:00', 'Iron Power', 'William Herrington', 2),
       (19, 'Четвер', '19:00', 'Strength', 'Van Darkholme', 1),
       (20, 'Четвер', '20:00', 'Body Pump', 'Van Darkholme', 1),

       (21, 'Пятниця', '16:00', 'Iron Power', 'William Herrington', 2),
       (22, 'Пятниця', '17:00', 'Upper-Body', 'William Herrington', 2),
       (23, 'Пятниця', '18:00', 'Lower-Body', 'Lily Star', 7),
       (24, 'Пятниця', '19:00', 'Body Shape', 'Lily Star', 7),

       (25, 'Субота', '09:00', 'Circuit Training', 'Mark Wolf', 5),
       (26, 'Субота', '10:00', 'Bootcamp', 'Mark Wolf', 5),
       (27, 'Субота', '18:00', 'Weight Lifting', 'Ricardo Limos', 4),

       (28, 'Неділя', '09:00', 'Gym Classes', 'Denny Li', 3),
       (29, 'Неділя', '10:00', 'Strength', 'William Herrington', 2),
       (30, 'Неділя', '16:00', 'Resistance Bands', 'Van Darkholme', 1);

insert into classes_users (contact_number, email, schedule_id, user_id)
values (821514223,'groomy14@gmail.com',30, 2),
       (631709312,'bartoz@gmail.com',27, 8),
       (631709312,'bartoz@gmail.com',18, 8),
       (821457569,'kamil.boston@in.com', 8, 4),
       (520645014,'s.jasinski@outlook.com', 16, 1),
       (821457569,'kamil.boston@in.com', 25, 4);

insert into workouts
values (1, 'Схуднення',3, 8, 'НАБІР ВАГИ',1),
       (2, 'Мої тренування', 5, 4, 'СИЛА',5),
       (3, 'Супер', 15, 4, 'СХУДНЕННЯ',4);

INSERT INTO plan_order VALUES
                           (1, false, null, true, 1, 4, 2),
                           (2, true, 150.00, true, 6, 2, 4),
                           (3, true, 150.00, false, 9, 3, 7);

insert into user_role values(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);

INSERT INTO plan_trainer VALUES (1, 4),(6, 2);

INSERT INTO exercise_workout VALUES (3, 4),(3, 2),(3,18),(3,15),(3,21),(3,6);
