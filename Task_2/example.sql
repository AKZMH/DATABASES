DROP TABLE IF EXISTS users;
CREATE TABLE users (
id SERIAL COMMENT 'Первичный ключ таблицы',
name VARCHAR(255) COMMENT 'Имя пользователя'
);