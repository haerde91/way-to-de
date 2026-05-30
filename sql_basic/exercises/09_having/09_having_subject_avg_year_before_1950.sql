--task:Show subjects where average award year is less than 1950.
select subject, avg(yr) as avg_year
from nobel
group by subject
having avg(yr) < 1950;