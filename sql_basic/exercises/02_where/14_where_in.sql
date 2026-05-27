--task: Show records for categories: Physics, Medicine, Peace
select *
from nobel 
where subject in ('Physics', 'Medicine', 'Peace');