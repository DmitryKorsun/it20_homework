/*1 Одним запросом добавить сразу несколько записей
в таблицу.*/
INSERT INTO `films`(`films_id`,
                    `title`,
                    `year`,
                    `plot`,
                    `poster`,
                    `type`,
                    `runtime`,
                    `released`)
VALUES (1,
        'Аквамен',
        '2018',
        'Сын простого человека и царицы подводного мира Артур унаследовал от матери фантастическую силу. Взяв прозвище Аквамен, он встает на защиту людей и бросает вызов своему брату, правителю Атлантиды.',
        'https://www.kino-teatr.ru/movie/posters/big/9/129469.jpg',
        'Фильм',
        '143 мин',
        '2018-12-13'),
       (2,
        'Человек из стали',
        '2013',
        'Кларк Кент много лет назад был отправлен со своей планеты Криптон на Землю. С тех пор он пытается найти ответ на вопрос: зачем? Но однажды человечество подвергается внеземному нападению.',
        'https://thumbs.dfs.ivi.ru/storage28/contents/9/1/9accf791637e49288ecda320e57ecf.jpg',
        'Фильм',
        '142 мин',
        '2013-06-12'),
       (3,
        'Сваты 7',
        '2021',
        'Сваты снова с нами! Неутомимые, непредсказуемые и бесконечно обаятельные, – любящие родственники воссоединяются в новом сезоне народного хита .',
        'https://thumbs.dfs.ivi.ru/storage29/contents/9/d/451694d7ce29809cbb265e9ab15a39.jpg',
        'Сериал',
        '1 сезон',
        '2021-12-20'),
       (4,
        'Теория большого взрыва',
        '2019',
        'Легендарный, культовый, обожаемый миллионами – все это относится к американскому ситкому «Теория большого взрыва». Вот уже десять лет этот сериал остается среди самых популярных.',
        'https://b1.filmpro.ru/c/367823.jpg',
        'Сериал',
        '12 сезонов',
        '2007-09-24'),
       (5,
        ' Семейка Крудс: Новоселье',
        '2020',
        'Веселая семейка Крудс ищет уголок безопасности в крайне опасном первобытном мире. Им удается найти идеальный дом, вот только у него уже есть хозяева, стоящие на более высокой ступени эволюции.',
        'https://i.ytimg.com/vi/KmEXKKinSGk/maxresdefault.jpg',
        'Мультфильм',
        '95 мин',
        '2020-11-25');
/*2.Удалить одну конкретную запись из таблицы.*/
DELETE
FROM `films`
WHERE `films_id` = 4;
/*3.Удалить все записи из таблицы.*/
DELETE
FROM `films`;
/*4.Вывести значения двух полей из таблицы.*/
SELECT `title`,
       `type`
FROM `films`;
/*5.Выбрать все записи из таблицы.*/
SELECT *
FROM `films`;
/*6.Обновить значение полей в нескольких записях по
условию.*/
UPDATE
    `films`
SET `type` = 'Просмотрено'
WHERE `type` = 'Фильм';
/*7.Выбрать записи соответсвующие заданному условию.*/
SELECT *
FROM `films`
WHERE `type` = 'Сериал';
SELECT *
FROM `films`
WHERE `type` = 'Сериал'
  AND `year` = 2021;