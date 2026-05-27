--task: Show records from the Physics or Chemistry category.
select *
from nobel 
where subject = 'Physics' 
or subject = 'Chemistry';