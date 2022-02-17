/* 1. Необходимо отобразить названия жанров (name) из таблицы
genres, у которых нет ни одной книги из таблицы books. Связь
books.genre_id = genres.id.*/
SELECT g.name FROM genres g LEFT JOIN books b ON b.genre_id = g.id WHERE b.name iS NULL;
/* 2. Выбрать фамилию surname пользователя и имя name из таблицы
users и соответствующее название региона (поле name) из
таблицы areas. Связь: users.area_id = areas.id, отсортировать
по названию региона. Выбрать всего 4 записи.*/
SELECT u.surname,u.name,a.name FROM users u INNER JOIN areas a ON u.area_id=a.id ORDER BY a.name LIMIT 4;
/* 3. Необходимо посчитать сколько новостей в каждой категории.
Связь news.category_id = categories.id. */
SELECT c.name, COUNT(n.id) FROM categories c LEFT JOIN news n ON n.category_id = c.id GROUP BY c.name;
/* 4. Выбрать название города (name) из таблицы cities и
соответствующее название региона (name) из таблицы areas.
Связь: cities.area_id = areas.id. */
SELECT c.name, a.name AS areas FROM cities c INNER JOIN areas a ON c.area_id=a.id;
/* 5. Выбрать название школы (name) из таблицы schools и
соответствующее название региона (name) из таблицы districts.
Связь: schools.district_id = districts.id. */
SELECT s.name , d.name AS districts FROM schools s INNER JOIN districts d ON s.district_id = d.id;