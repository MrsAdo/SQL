Microsoft Windows [Version 10.0.19041.1110]
(c) Корпорация Майкрософт (Microsoft Corporation). Все права защищены.

C:\Users\HP>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 49
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.03 sec)

mysql> USE example;
Database changed

mysql> CREATE TABLE users (id SERIAL, name VARCHAR(50) NOT NULL UNIQUE);
Query OK, 0 rows affected (0.18 sec)

mysql> exit
Bye

C:\Users\HP>mysqldump -u root -p example > example.sql
Enter password: ****

C:\Users\HP>dir
 Том в устройстве C не имеет метки.
 Серийный номер тома: FC11-C450

 Содержимое папки C:\Users\HP

29.08.2021  23:02    <DIR>          .
29.08.2021  23:02    <DIR>          ..
14.05.2019  08:06    <DIR>          .cache
12.11.2019  20:18    <DIR>          .cisco
28.08.2021  00:04    <DIR>          .config
04.06.2019  01:17    <DIR>          .dotnet
25.08.2021  22:13    <DIR>          .eclipse
28.08.2021  00:04                50 .gitconfig
28.08.2021  00:04    <DIR>          .ssh
13.02.2021  23:09    <DIR>          3D Objects
25.05.2021  22:37    <DIR>          ARISExpress
13.02.2021  23:09    <DIR>          Contacts
29.08.2021  22:48    <DIR>          Desktop
21.06.2020  17:53    <DIR>          Doctor Web
28.08.2021  00:06    <DIR>          Documents
28.08.2021  01:14    <DIR>          Downloads
29.08.2021  23:29             1 945 example.sql
13.02.2021  23:09    <DIR>          Favorites
13.02.2021  23:09    <DIR>          Links
16.07.2021  22:50    <DIR>          Microsoft
13.02.2021  23:09    <DIR>          Music
31.07.2021  23:14    <DIR>          OneDrive
13.05.2021  22:53    <DIR>          Pictures
13.02.2021  23:09    <DIR>          Saved Games
13.02.2021  23:09    <DIR>          Searches
04.06.2019  10:25    <DIR>          Source
13.02.2021  23:09    <DIR>          Videos
               2 файлов          1 995 байт
              25 папок  85 763 887 104 байт свободно

C:\Users\HP>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 52
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE sample;
Query OK, 1 row affected (0.01 sec)

mysql> exit
Bye

C:\Users\HP>mysql sample < example.sql

C:\Users\HP>mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 55
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> USE sample;
Database changed
mysql> SHOW TABLES;
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0.01 sec)

mysql> exit
Bye

C:\Users\HP>