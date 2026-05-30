--task:Show number of prizes per subject ordered descending.
select subject, count(*) as prizes_per_subject
from nobel
group by subject
order by prizes_per_subject desc;