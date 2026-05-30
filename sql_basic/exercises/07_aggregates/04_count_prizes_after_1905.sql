--task:Count how many prizes were awarded after 1905.
select count(*) as count_prizes
from nobel
where yr > 1905;