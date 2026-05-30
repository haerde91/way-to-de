--task:Show subjects where the number of prizes is greater than 3.
select subject, count(*) as number_of_prizes
from nobel
group by subject
having count(*) > 3;