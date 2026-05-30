--task:Count how many times each winner appears in the dataset.
select winner, count(*) as prizes_per_winner
from nobel
group by winner;