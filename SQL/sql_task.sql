»сходные данные: есть 2 таблицы user и level с соответствующим набором полей. —труктура таблиц и значени€ полей указаны ниже									
“аблица - user									
id	user_name	level_id	skill						
1	Anton	1	900000						
2	Denis	3	4000						
3	Petr	2	50000						
4	Andrey	4	20						
5	Olga	1	600000						
6	Anna	1	1600000						
									
“аблица - level									
id	level_name								
1	admin								
2	power_user								
3	user								
4	guest								
									
«адани€ на написание запросов к Ѕƒ:									
1. ќтобрать из таблицы user всех пользователей, у которых level_id=1, skill > 799000 и в имени встречаетс€ буква а									
2. ”далить всех пользователей, у которых skill меньше 100000									
3. ¬ывести все данные из таблицы user в пор€дке убывани€ по полю skill 									
4. ƒобавить в таблицу user нового пользовател€ по имени Oleg, с уровнем 4 и skill =10									
5. ќбновить данные в таблице user -  дл€ пользователей с level_id меньше 2 проставить skill 2000000									
6. ¬ыбрать user_name всех пользователей уровн€ admin использу€ подзапрос									
7. ¬ыбрать user_name всех пользователей уровн€ admin использу€ join									
									
									

1. SELECT user_name FROM user WHERE level_id = 1 AND skill > 799000 AND user_name '%a%';


3. SELECT * FROM user WHERE ORDER BY skill DESC;


6. SELECT user_name FROM user WHERE level_id IN (SELECT id FROM level WHERE level_name = 'admin');


2. DELETE FROM user WHERE skill < 100000;


4. INSERT INTO user (user_name, level_id, skill) VALUES ('Oleg', 4, 10);


5. UPDATE user SET skill = 2000000 WHERE level_id < 2;


7. SELECT user.user_name FROM user JOIN level ON user.level_id = level.id  WHERE level.level_name = 'admin';