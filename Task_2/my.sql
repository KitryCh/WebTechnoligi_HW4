-- Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. В таблице должно быть четыре поля: id, name, age,
-- address. Все поля в таблице обязательны для заполнения.

-- Необходимо добавить 5-10 одногруппников в данную таблицу.
-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), которые живут в Москве и их возраст 
-- находится в диапазоне [18, 30) лет.

-- Примечание: Квадратные скобки при указании диапазона, означают "включительно", а круглые "не включительно", то есть диапазон (7, 9] означает
-- "от 7, где 7 не попадает в данный диапазон, до 9 включительно". Такой синтаксис нельзя использовать в sql, вам нужно найти решение, как 
-- такое условие можно записать в sql по-другому.

-- Для проверок работы своего скрипта можете использовать свою базу данных, либо используйте сайт: https://onecompiler.com/mysql


-- create
CREATE TABLE STUDENTS (
  Id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  adress TEXT NOT NULL
);

-- insert
INSERT INTO STUDENTS VALUES (0001, 'Pavel', '38','Moskva');
INSERT INTO STUDENTS VALUES (0002, 'Ekaterina', '42','Moskva');
INSERT INTO STUDENTS VALUES (0003, 'Margarita', '18','Moskva');
INSERT INTO STUDENTS VALUES (0004, 'Evgenii', '25','Moskva');
INSERT INTO STUDENTS VALUES (0005, 'Valeriya', '29','Moskva');
INSERT INTO STUDENTS VALUES (0006, 'Aleksandr', '19','Moskva');
INSERT INTO STUDENTS VALUES (0007, 'Denis', '8','Санкт-Петербург');
INSERT INTO STUDENTS VALUES (0008, 'Tatiana', '64','Moskva');
INSERT INTO STUDENTS VALUES (0009, 'Sofiya', '22','Санкт-Петербург');
INSERT INTO STUDENTS VALUES (0010, 'Elena', '11','Moskva');
INSERT INTO STUDENTS VALUES (0011, 'Vasiliy', '8','Санкт-Петербург');

-- fetch 
SELECT name FROM STUDENTS WHERE adress = 'Moskva' AND (age >= 18 AND  age < 30);