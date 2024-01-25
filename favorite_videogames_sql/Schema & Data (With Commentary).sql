CREATE DATABASE IF NOT EXISTS Favourite_Games CHARACTER SET utf8mb4;

USE Favourite_Games;

SHOW DATABASES;

/* Для использования в онлайн-редакторе https://sqliteonline.com код начинается отсюда, т. к. он не позволяет создавать новые базы данных */

CREATE TABLE Users (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(150) NOT NULL,
  lastname VARCHAR(150) NOT NULL,
  age SMALLINT UNSIGNED NOT NULL,
  country VARCHAR(100) DEFAULT "USA",
  nickname VARCHAR(200) DEFAULT NULL
); -- можно добавить после закрывающей скобочки DEFAULT CHARSET=utf8mb4;

CREATE TABLE Platforms (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  company VARCHAR(100) NOT NULL,
  platform_name VARCHAR(100) NOT NULL
);

CREATE TABLE Videogames (
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
  game_name TEXT NOT NULL, -- по идее, можно было поставить VARCHAR(600), но хз насколько такая практика уместна
  platform_id INT UNSIGNED NOT NULL,
  release_date YEAR NOT NULL,
  FOREIGN KEY (platform_id) REFERENCES Platforms(id)
);

SHOW TABLES;

CREATE TABLE Favorite_Games (
  user_id INT UNSIGNED NOT NULL,
  game_id INT UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  FOREIGN KEY (game_id) REFERENCES Videogames(id)
);

-- Теперь вставляем в таблицы исходные данные
-- Так как id авто-инкрементируется, то оставляем в начале 0 или NULL

INSERT INTO Platforms (id, company, platform_name) VALUES
  (0, "Microsoft", "Windows"),
  (0, "Microsoft", "Xbox 360"),
  (0, "Sony", "PlayStation 2"),
  (0, "Sony", "PlayStation 4"),
  (0, "Nintendo", "Wii U");

SELECT * FROM Platforms; -- проверяем введённые данные и заполняем другие таблицы

INSERT INTO Videogames (id, game_name, platform_id, release_date) VALUES
  (0, "Overwatch", 1, 2016),
  (0, "GTA V", 2, 2013),
  (0, "TES: Skyrim", 1, 2011),
  (0, "DOOM", 4, 2016),
  (0, "Jagged Alliance 3", 1, 2023),
  (0, "Need For Speed: Underground", 3, 2003);

INSERT INTO Users (name, lastname, age, country, nickname) VALUES
  ("Alice", "White", 21, "Romania", "alice_007"),
  ("Jack", "Wildson", 23, "USA", "wilds000n"),
  ("Michael", "Jordan", 34, "Germany", "great_guy"),
  ("Gabe", "Newell", 56, "USA", "gabe_is_king"),
  ("Samantha", "Smith", 16, "Canada", "s@m@nth@");

INSERT INTO Favorite_Games (user_id, game_id) VALUES
  (1, 1), (2, 2), (2, 4),
  (3, 4), (3, 5), (5, 2);

/* Надо бы сделать поле nickname уникальным, чтобы по нему (в идеале) можно было бы идентифицировать пользователя */

ALTER TABLE Users CHANGE nickname nickname varchar(200) UNIQUE NOT NULL;

/* Теперь можно вставлять новые данные */

INSERT INTO Platforms (id, company, platform_name) VALUES
  (0, "Microsoft", "Xbox Original"),
  (0, "Sony", "PlayStation One"),
  (0, "Sony", "PlayStation Portable"),
  (0, "Sony", "PlayStation Vita"),
  (0, "Nintendo", "Entertainment System"),
  (0, "Sega", "Mega Drive"),
  (0, "Microsoft", "Xbox One X"),
  (0, "Sony", "PlayStation 3"),
  (0, "Microsoft", "Xbox Series X"),
  (0, "Sony", "PlayStation 5");

/* Пример новой конструкции INSERT .. SELECT, если лень самостоятельно искать нужный id-шник.
Правда, в таком случае придётся вставлять записи по одной штуке за команду.
Либо можно оставить шапку в единственном виде, а все SELECT-ы объединить через UNION ALL */

INSERT INTO Videogames (id, game_name, platform_id, release_date)
SELECT 0, "The Witcher 3", id, 2015
FROM Platforms
WHERE company = "Microsoft" AND platform_name="Windows";

-- Пока табличка не очень большая, воспользуемся классическим методом

INSERT INTO Videogames (id, game_name, platform_id, release_date) VALUES
  (0, "The Witcher 3", 4, 2015),
  (0, "The Witcher 3", 12, 2015),
  (0, "DOOM", 1, 2016),
  (0, "DOOM", 12, 2016),
  (0, "GTA V", 1, 2015),
  (0, "GTA V", 4, 2013),
  (0, "TES: Skyrim", 13, 2011),
  (0, "TES: Skyrim", 2, 2011),
  (0, "TES: Skyrim", 12, 2011),
  (0, "Bloodborne", 4, 2016),
  (0, "Uncharted 3", 13, 2011),
  (0, "Tom Clancy's Splinter Cell", 1, 2003),
  (0, "Tom Clancy's Splinter Cell", 6, 2002),
  (0, "Half-Life 2", 1, 2004),
  (0, "Velvet Assassin", 2, 2009),
  (0, "Gothic 3", 1, 2006),
  (0, "Cyberpunk 2077", 1, 2020),
  (0, "Cyberpunk 2077", 14, 2021),
  (0, "Cyberpunk 2077", 15, 2021),
  (0, "Silent Hill 3", 3, 2003),
  (0, "Crysis 3", 1, 2013),
  (0, "Gone Home", 1, 2013),
  (0, "Gone Home", 4, 2013),
  (0, "Gone Home", 12, 2013);

INSERT INTO Users (name, lastname, age, country, nickname) VALUES
  ("Ali", "Mahamad", 30, "China", "ali_ali_1900"),
  ("Simona", "Bowie", 48, "Japan", "bo_boshka"),
  ("Jakov", "Gillinger", 25, "Russia", "ja_gi_98"),
  ("Yuri", "Smirnov", 14, "Russia", "smirnofff"),
  ("Maximillian", "Strauss", 32, "Austria", "stromaxxx"),
  ("Grut", "Karnov", 34, "Japan", "karnov_2000"),
  ("Sebastian", "Michaelis", 32, "Belgium", "grell_satcliff"),
  ("Brienna", "Gross", 30, "Germany", "BBB_12345"),
  ("Katherine", "Green", 24, "France", "sexy_katushka"),
  ("Cruella", "DeViile", 20, "Belgium", "i_kill_them_all");

/* А вот с соответствиями придётся немного помучаться. Либо выискивать id-шники (что не очень удобно),
либо использовать сложносочинённые конструкции. Например, так выглядит запись
"Пользователь под ником smirnofff в качестве своей любимой игры выбрал DOOM на платформе Xbox One X" */

INSERT INTO Favorite_Games (user_id, game_id) VALUES
  ((select Users.id from Users where nickname = "smirnofff"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "DOOM" and platform_name = "Xbox One X")),

  ((select Users.id from Users where nickname = "karnov_2000"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "Gone Home" and platform_name = "Windows")),

  ((select Users.id from Users where nickname = "i_kill_them_all"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "Silent Hill 3" and platform_name = "PlayStation 2")),

  ((select Users.id from Users where nickname = "i_kill_them_all"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "Bloodborne" and platform_name = "PlayStation 4")),

  ((select Users.id from Users where nickname = "i_kill_them_all"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "The Witcher 3" and platform_name = "PlayStation 4")),

  ((select Users.id from Users where nickname = "stromaxxx"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "Half-Life 2" and platform_name = "Windows")),

  ((select Users.id from Users where nickname = "bo_boshka"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "Gothic 3" and platform_name = "Windows")),

  ((select Users.id from Users where nickname = "grell_satcliff"),
  (select Videogames.id from Videogames left join Platforms on Videogames.platform_id = Platforms.id
  where game_name = "Bloodborne" and platform_name = "PlayStation 4"));

/* Здесь мы понимаем, что SQL очевидно не хватает нормальных переменных, циклов, функций и других управляющих конструкций */