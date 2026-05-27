--task: Show records from the Physics category from year 1901.
select *
from nobel
where subject = 'Physics' and yr = 1901;