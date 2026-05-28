--task: Skip first 3 rows. Show remaining records
select *
from nobel
offset 3;