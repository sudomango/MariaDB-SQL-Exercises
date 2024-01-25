/* Решение задания #13 для базы данных Favorite_Videogames. */

SELECT
   platform_name,
   ROUND(AVG(user_age), 2) AS average_user_age,
   COUNT(user_id) AS users_count
FROM
   (SELECT DISTINCT
      platform_name,
      user_id,
      CONCAT(Users.name, " ", Users.lastname) AS user_name,
      Users.age AS user_age
   FROM Favorite_Games
   INNER JOIN Users ON Favorite_Games.user_id = Users.id
   INNER JOIN Videogames ON Favorite_Games.game_id = Videogames.id
   INNER JOIN Platforms ON Videogames.platform_id = Platforms.id) AS Unique_Users
GROUP BY platform_name
HAVING users_count >= 3
ORDER BY average_user_age;