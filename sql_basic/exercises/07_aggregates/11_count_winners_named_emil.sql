--task:Count winners whose first name starts with "Emil".
select count(*) as count_of_emil
from nobel
where winner like 'Emil%';