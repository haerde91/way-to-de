--task: Show all records except the Peace category.
select *
from nobel
where subject <> 'Peace';