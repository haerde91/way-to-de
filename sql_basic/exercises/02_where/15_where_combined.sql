--task: Show: winner, subject, yr ; 
--only for the Literature category
--only for years after 2000
--order results by year ascending
select winner, subject, yr
from nobel
where subject = 'Literature'
and yr > 2000
order by yr asc;