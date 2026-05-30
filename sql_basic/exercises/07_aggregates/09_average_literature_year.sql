--task:Calculate the average award year for Literature prizes.
select avg(yr) as avg_literature_year
from nobel
where subject = 'Literature';