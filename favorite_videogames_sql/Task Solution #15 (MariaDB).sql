/* Решение задания #15 для базы данных Favorite_Videogames. */

SELECT
   CASE
      WHEN Users.age > 40 THEN "too ooold"
      WHEN Users.age >= 25 THEN "not so old"
      ELSE "young"
   END AS age_status,
   AVG(Users.age) AS average_age,
   COUNT(Users.name) AS users_count
FROM Users
GROUP BY age_status
ORDER BY average_age;

/* Запрос для ручной проверки результатов решения задания. */

SELECT
   Users.name,
   Users.lastname,
   Users.age,
   CASE
      WHEN Users.age > 40 THEN "too ooold"
      WHEN Users.age >= 25 THEN "not so old"
      ELSE "young"
   END AS age_status
FROM Users
ORDER BY Users.age;