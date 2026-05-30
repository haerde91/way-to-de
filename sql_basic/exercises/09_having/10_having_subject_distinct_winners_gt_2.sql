--task: Show subjects with more than 2 distinct winners.
select subject, count(distinct winner) as winner_count
group by subject
having count(distinct winner) >2;
