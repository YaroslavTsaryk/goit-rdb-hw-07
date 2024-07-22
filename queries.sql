select id, date, year(date) year, month(date) month, day(date) day 
from orders;

select id, date,  DATE_ADD(date, INTERVAL 1 DAY) next_day
from orders;


select id, date,  TIMESTAMPDIFF(Second,'1970-01-01 00:00:01', date) TS
from orders;

select count(1)
from orders
where date between '1996-07-10 00:00:00' and  '1996-10-08 00:00:00';

select id, date,  JSON_OBJECT('id',id, 'date', date) json_value
from orders;
