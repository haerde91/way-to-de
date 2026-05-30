--task:Count how many prizes were awarded in the Literature category.
select count(*) as literature_prizes
from nobel
where subject = 'Literature';