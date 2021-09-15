--1

USE vk;
SELECT * FROM vk.users; -- эти строки скрипта избыточны - нужно или убрать первую строку, или можно убрать в этой и последующих строках
 -- упоминание базы из имени таблицы. Других предложений по оптимизации у меня нет)

--2
use vk;
select * from messages;
select to_user_id from messages;
select to_user_id from messages where to_user_id = 9;
select to_user_id, from_user_id from messages where to_user_id = 9;
select to_user_id, from_user_id, count(id) from messages group by to_user_id, from_user_id;
insert into messages (to_user_id, from_user_id, body) values (9, 67, '');
select to_user_id, from_user_id, count(id) from messages group by to_user_id, from_user_id order by count(id) desc;
select to_user_id, from_user_id, max(count_id) from (
	select to_user_id, from_user_id, count(id) as count_id from messages group by to_user_id, from_user_id
) as src;

--3

use vk;
select * from users;
select id, birthday from users;
select id, birthday from users order by birthday limit 10;
select * from reaction_types;
insert into reaction_types (name) values ('like');
select * from reactions;
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 47, 1); -- в моей бд не было данных, заполнила сама
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 94, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 76, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 50, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 42, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 35, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 33, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 8, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 5, 1);
insert into reactions (msg_id, media_id, user_id, reaction_type_id) values (1, 1, 1, 1);
select id, birthday from users order by birthday limit 10;
select count(id) where user_id in(select id from users order by birthday limit 10);
select count(reactions.id) from users
left join reactions
	on users.id = reactions.user_id
  order by birthday limit 10;
  
  
  --4
  
  use vk;
select * from users;
select count(reactions.id) as count_reactions, 'M' as gender from users
		left join reactions
			on users.id = reactions.user_id
		  where gender = 'M'
		  union all
		  select count(reactions.id), 'F' as gender from users
		left join reactions
			on users.id = reactions.user_id
		  where gender = 'F'
          order by count_reactions desc;
		
--5 

use vk;
select users.id, count(messages.id) as count_msg, count(reactions.id) as count_rct from users
	left join messages on users.id = messages.to_user_id
    left join reactions on users.id = reactions.user_id
    group by users.id
    order by count(messages.id), count(reactions.id);
    







