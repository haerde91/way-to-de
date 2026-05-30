--task:Find the latest year when a Medicine prize was awarded.
select max(yr) as last_medicine_prize
from nobel
where subject = 'Medicine';
