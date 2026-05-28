--task: Show first 3 records from Physics.
select *
from nobel
where subject = 'Physics'
limit 3;