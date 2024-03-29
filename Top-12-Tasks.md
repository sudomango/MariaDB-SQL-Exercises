### Примеры наиболее сложных SQL-запросов в решённых мной задачах:

------------------------------------------------------------

📜 Задание 55 (тренажёр SQL Academy): https://sql-academy.org/ru/trainer/tasks/55.

**Задание:** Удалить компании, совершившие наименьшее количество рейсов.

**Примечание:** Несмотря на кажущуюся простоту, это одно из самых комплексных заданий тренажёра.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_academy_online/Task%20Solution%20%2355%20(MySQL).sql)

------------------------------------------------------------

📜 Задание 58 (тренажёр SQL Academy): https://sql-academy.org/ru/trainer/tasks/58.

**Задание:** Добавить отзыв с рейтингом 5 на жильё, находящиеся по адресу "11218, Friel Place, New York", от имени "George Clooney".

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_academy_online/Task%20Solution%20%2358%20(MySQL).sql)

------------------------------------------------------------

📜 Задание 66 (тренажёр SQL Academy): https://sql-academy.org/ru/trainer/tasks/66.

**Задание:** Вывести список комнат со всеми удобствами (наличие ТВ, интернета, кухни и кондиционера), а также общее количество дней и сумму за все дни аренды каждой из таких комнат.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_academy_online/Task%20Solution%20%2366%20(MySQL).sql)

------------------------------------------------------------

📜 Задание 71 (тренажёр SQL Academy): https://sql-academy.org/ru/trainer/tasks/71.

**Задание:** Найдите какой процент пользователей, зарегистрированных на сервисе бронирования, хоть раз арендовали или сдавали в аренду жильё. Результат округлите до сотых.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_academy_online/Task%20Solution%20%2371%20(MySQL).sql)

------------------------------------------------------------

Тренажёр SQL-Ex оказался достаточно зубодробительной штукой. И хоть в нём есть немало заданий с сомнительными (особенно с точки зрения практического использования на проектах) и искусственно переусложнёнными формулировками, большинство заданий всё же показались мне интересными и действительно заставили меня поразмыслить.

------------------------------------------------------------

📜 Задание 10 (тренажёр SQL-Ex, подраздел: DML): https://sql-ex.ru/dmlexercises.php?N=10.

**Задание:** Добавить в таблицу PC те модели ПК из Product, которые отсутствуют в таблице PC. При этом модели должны иметь следующие характеристики:

1\. Код равен номеру модели плюс максимальный код, который был до вставки.

2\. Скорость, объём памяти и диска, а также скорость CD должны иметь максимальные характеристики среди всех имеющихся в таблице PC.

3\. Цена должна быть средней среди всех ПК, имевшихся в таблице PC до вставки.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_ex_online/Task%20Solution%20%2310%20(DML).sql)

------------------------------------------------------------

📜 Задание 11 (тренажёр SQL-Ex, подраздел: DML): https://sql-ex.ru/dmlexercises.php?N=11.

**Задание:** Для каждой группы блокнотов с одинаковым номером модели добавить запись в таблицу PC со следующими характеристиками:

код: минимальный код блокнота в группе +20;

модель: номер модели блокнота +1000;

скорость: максимальная скорость блокнота в группе;

ram: максимальный объем ram блокнота в группе *2;

hd: максимальный объем hd блокнота в группе *2;

cd: cd c максимальной скоростью среди всех ПК;

цена: максимальная цена блокнота в группе, уменьшенная в 1,5 раза.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_ex_online/Task%20Solution%20%2311%20(DML).sql)

------------------------------------------------------------

📜 Задание 25 (тренажёр SQL-Ex, подраздел: SELECT с выбором СУБД): https://sql-ex.ru/exercises/index.php?act=learn&LN=25.

**Задание:** Найдите производителей принтеров, которые производят ПК с наименьшим объемом RAM и с самым быстрым процессором среди всех ПК, имеющих наименьший объем RAM. Вывести: Maker.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_ex_online/Task%20Solution%20%2325%20(SELECT).sql)

------------------------------------------------------------

📜 Задание 35 (тренажёр SQL-Ex, подраздел: SELECT с выбором СУБД): https://sql-ex.ru/exercises/index.php?act=learn&LN=35.

**Задание:** В таблице Product найти модели, которые состоят только из цифр или только из латинских букв (A-Z, без учета регистра). Вывод: номер модели, тип модели.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_ex_online/Task%20Solution%20%2335%20(SELECT).sql)

------------------------------------------------------------

📜 Задание 39 (тренажёр SQL-Ex, подраздел: SELECT с выбором СУБД): https://sql-ex.ru/exercises/index.php?act=learn&LN=39.

**Задание:** Найдите корабли, сохранившиеся для будущих сражений; т.е. выведенные из строя в одной битве (damaged), они участвовали в другой, произошедшей позже.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_ex_online/Task%20Solution%20%2339%20(SELECT).sql)

------------------------------------------------------------

📜 Задание 41 (тренажёр SQL-Ex, подраздел: SELECT с выбором СУБД): https://sql-ex.ru/exercises/index.php?act=learn&LN=41.

**Задание:** Для каждого производителя, у которого присутствуют модели хотя бы в одной из таблиц PC, Laptop или Printer, определить максимальную цену на его продукцию. Вывод: имя производителя, если среди цен на продукцию данного производителя присутствует NULL, то выводить для этого производителя NULL, иначе максимальную цену.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/sql_ex_online/Task%20Solution%20%2341%20(SELECT).sql)

------------------------------------------------------------

Для проверки следующих заданий можно воспользоваться онлайн-редактором: https://sqliteonline.com. Достаточно подключиться к СУБД MariaDB, и можно пользоваться. Внимание: свои базы данных создавать нельзя, только таблицы.

------------------------------------------------------------

📜 Задача с онлайн-собеседования на позицию Middle Backend Developer (ссылка на видео, к сожалению, затерялась).

**Задание:** Вывести самое свежее значение по каждой паре валют, не включать в выборку значения NULL. Стоит учитывать, что значение по любой паре валют могло какое-то время не обновляться, всё равно вывести самое последнее из существующих.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/currency_pairs_task_backend/Task%20Solution%20(MariaDB).sql)

[Ссылка на файл базы данных](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/currency_pairs_task_backend/Schema%20%26%20Data.sql) для возможной проверки решения

------------------------------------------------------------

📜 Задача, составленная самостоятельно для собственной спроектированной базы данных "Любимые Видеоигры".

**Задание:** Вывести количество и средний возраст пользователей для каждой игровой платформы (у которых количество пользователей >= хотя бы N зарегистрированных аккаунтов).

Отсортировать результат по среднему возрасту уникальных пользователей на платформе (по возрастанию). Колонки в таблице результатов: название платформы (по ним всё сгруппировано), средний возраст пользователей, количество пользователей. Так как количество записей в таблицах на данный момент небольшое, то принять N = 3 (хотя бы 3 зарегистрированных аккаунта).

**Примечание:** Один и тот же пользователь может несколько раз отметить разные игры на одной и той же платформе, но в суммарном зачёте пользователей его не надо прибавлять два раза! Считаем только уникальных пользователей.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/favorite_videogames_sql/Task%20Solution%20%2313%20(MariaDB).sql)

[Ссылка на файл базы данных](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/favorite_videogames_sql/Schema%20%26%20Data%20(MariaDB%20Dump).sql) для возможной проверки решения

------------------------------------------------------------

📜 Другая задача, составленная самостоятельно для собственной спроектированной базы данных "Любимые Видеоигры".

**Задание:** Сгруппировать всех пользователей по age_status (если возраст пользователя больше 40, написать "очень старый", если больше или равен 25 - "не очень старый", если младше 25, то написать "молодой"). Показать количество пользователей и средний возраст пользователей по каждой возрастной группе.

[Ссылка на файл с решением](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/favorite_videogames_sql/Task%20Solution%20%2315%20(MariaDB).sql)

[Ссылка на файл базы данных](https://github.com/sudomango/MariaDB-SQL-Exercises/blob/main/favorite_videogames_sql/Schema%20%26%20Data%20(MariaDB%20Dump).sql) для возможной проверки решения
