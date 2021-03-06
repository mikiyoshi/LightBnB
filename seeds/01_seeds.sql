-- DELETE table data
DELETE FROM users;
DELETE FROM properties;
DELETE FROM reservations;
DELETE FROM property_reviews;


-- RESET id/PRIMARY KEYS start by 1
-- https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-sequence-transact-sql?view=sql-server-ver15
-- データを追加し続けると、連番が増え続けるので、リセットが必要
ALTER SEQUENCE users_id_seq RESTART WITH 1;
ALTER SEQUENCE properties_id_seq RESTART WITH 1;
ALTER SEQUENCE reservations_id_seq RESTART WITH 1;
ALTER SEQUENCE property_reviews_id_seq RESTART WITH 1;

-- MUST Order 1 users
INSERT INTO users (name, email, password)
VALUES ('Eva Stanley','sebastianguerra@ymail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Louisa Meyer','jacksonrose@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Dominic Parks','victoriablackwell@outlook.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');
-- It's the word 'password' hashed with bcrypt.

-- MUST Order 2 properties
INSERT INTO properties (owner_id, title, description, thumbnail_photo_url, cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, country, street, city, province, post_code, active)
VALUES (1 ,'Blank corner','description','https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350','https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg','85234','6','6','7','Canada','651 Nami Road','Bohbatev','Alberta','83680','true'),
(2 ,'Habit mix','description','https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350','https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg','46058','0','5','6','Canada','1650 Hejto Center','Genwezuj','Newfoundland And Labrador','44583','true'),
(3 ,'Headed know','description','https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg?auto=compress&cs=tinysrgb&h=350','https://images.pexels.com/photos/1029599/pexels-photo-1029599.jpeg','82640','0','5','5','Canada','513 Powov Grove','Jaebvap','Ontario','38051','true');

-- MUST Order 3 reservations
INSERT INTO reservations (guest_id, property_id, start_date, end_date)
VALUES (1, 1, '2018-09-11', '2018-09-26'),
(2, 2, '2019-01-04', '2019-02-01'),
(3, 3, '2021-10-01', '2021-10-14');

-- MUST Order 4 property_reviews
INSERT INTO property_reviews (guest_id, property_id, reservation_id, rating, message)
VALUES (1, 1, 1, 3, 'messages'),
(2, 2, 2, 4, 'messages'),
(3, 3, 3, 4, 'messages');

-- Data table check
SELECT * FROM users;
SELECT * FROM properties;
SELECT * FROM reservations;
SELECT * FROM property_reviews;
-- psql
-- \i seeds/01_seeds.sql
