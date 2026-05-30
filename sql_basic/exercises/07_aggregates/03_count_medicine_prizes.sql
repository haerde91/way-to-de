--task:Count the number of prizes awarded in the Medicine category.
select count(*) as medicine_prizes
from nobel
where subject = 'Medicine';
