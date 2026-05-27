--task: Show: winner, subject, yr. Only for: 
--Literature or Medicine, years between 1901 and 1909
--Sort: by year descending, then by winner ascending
select winner, subject, yr
from nobel
where subject in ('Literature', 'Medicine')
and yr between 1901 and 1909
order by yr desc, winner asc;