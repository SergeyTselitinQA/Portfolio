�������� ������: ���� 2 ������� user � level � ��������������� ������� �����. ��������� ������ � �������� ����� ������� ����									
������� - user									
id	user_name	level_id	skill						
1	Anton	1	900000						
2	Denis	3	4000						
3	Petr	2	50000						
4	Andrey	4	20						
5	Olga	1	600000						
6	Anna	1	1600000						
									
������� - level									
id	level_name								
1	admin								
2	power_user								
3	user								
4	guest								
									
������� �� ��������� �������� � ��:									
1. �������� �� ������� user ���� �������������, � ������� level_id=1, skill > 799000 � � ����� ����������� ����� �									
2. ������� ���� �������������, � ������� skill ������ 100000									
3. ������� ��� ������ �� ������� user � ������� �������� �� ���� skill 									
4. �������� � ������� user ������ ������������ �� ����� Oleg, � ������� 4 � skill =10									
5. �������� ������ � ������� user -  ��� ������������� � level_id ������ 2 ���������� skill 2000000									
6. ������� user_name ���� ������������� ������ admin ��������� ���������									
7. ������� user_name ���� ������������� ������ admin ��������� join									
									
									

1. SELECT user_name FROM user WHERE level_id = 1 AND skill > 799000 AND user_name '%a%';


3. SELECT * FROM user WHERE ORDER BY skill DESC;


6. SELECT user_name FROM user WHERE level_id IN (SELECT id FROM level WHERE level_name = 'admin');


2. DELETE FROM user WHERE skill < 100000;


4. INSERT INTO user (user_name, level_id, skill) VALUES ('Oleg', 4, 10);


5. UPDATE user SET skill = 2000000 WHERE level_id < 2;


7. SELECT user.user_name FROM user JOIN level ON user.level_id = level.id  WHERE level.level_name = 'admin';