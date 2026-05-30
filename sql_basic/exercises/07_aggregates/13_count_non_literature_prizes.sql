--task:Count the number of prizes that are not in the Literature category.
select count(*) as prizes_not_for_literature
from nobel
where subject <> 'Literature';