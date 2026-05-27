--task:Show: winner, subject, yr. only for:
--Literature or Medicine, years between 1902 and 1909, order by year descending.
select winner, subject, yr
from nobel
where subject in ('Literature', 'Medicine')
and yr between 1902 and 1909
order by yr desc;