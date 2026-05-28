--task: Skip first 3 rows. Show next 3 rows.
select *
from nobel 
limit 3 offset 3;