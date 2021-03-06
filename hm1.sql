-- Князятов Михаил

CREATE TABLE films (
 title TEXT NOT NULL,
 id INTEGER not null auto_increment,
 country TEXT NOT NULL,
 box_office INTEGER NOT NULL,
 release_date DATE,
 primary key (id)
);

CREATE TABLE persons (
 id INTEGER not null auto_increment,
 fio TEXT NOT NULL,
 primary key (id)
); 

CREATE TABLE persons2content (
 person_id INTEGER,
 FOREIGN KEY (person_id) REFERENCES persons (id),
 film_id INTEGER,
  FOREIGN KEY (film_id) REFERENCES films (id),
  person_type TEXT
);

INSERT INTO films (title, country, box_office, release_date)
    VALUES ('Зло', 'Швеция', 340122, '2003-05-16'),
 ('Невидимый гость', 'Испания', 283197, '2016-09-23'),
 ('Легенда № 17', 'Россия', 29523237, '2012-04-18'),
 ('Пила', 'Сша', 103096345, '2004-01-19'),
 ('Укрощение строптивого', 5, 'Италия', 0, '1980-12-20');

INSERT INTO persons (fio)
  VALUES ('Андреас Уилсон'),
  ('Хенрик Лунстрем'),
 ('Густаф Скарсгард'),
 ('Линда Зиллиакус'),
 ('Марио Касас'),
 ('Ана Вахенер'),
 ('Данила Козловский'),
 ('Олег Меньшиков'),
 ('Тобин Белл'),
 ('Ли Уонелл'),
 ('Кэри Элвес'),
 ('Адриано Челентано'),
 ('Орнелла Мути');
  
INSERT INTO persons2content (person_id, film_id, person_type)
  VALUES (1, 1, 'Актёр'),
 (2, 1, 'Актёр'),
 (3, 1, 'Актёр'),
 (4, 1, 'Актриса'),
 (5, 2, 'Актёр'),
 (6, 2, 'Актриса'),
 (7, 3, 'Актёр'),
 (8, 3, 'Актёр'),
 (9, 4, 'Актёр'),
 (10, 4, 'Актёр'),
 (11, 4, 'Актёр'),
 (12, 5, 'Актёр'),
 (13, 5, 'Актриса');