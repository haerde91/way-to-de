--task: Show all columns. Only for category Physics. Sort by year ascending.
select *
from nobel
where subject = 'Physics'
order by yr;