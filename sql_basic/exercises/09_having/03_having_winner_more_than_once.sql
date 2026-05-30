--task: Show winners who appear more than once in the dataset.
select winner, count(*) as appearance_count
from nobel
group by winner
having count(*) > 1;

--no data in table