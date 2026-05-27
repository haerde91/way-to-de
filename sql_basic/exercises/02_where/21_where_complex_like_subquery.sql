--task: Show winners whose name: starts with letter E
--and is longer than 5 characters
select n.winner, l.l_n
from nobel n 
join (
    select winner, length (winner) as l_n
    from nobel
    where winner ilike 'e%'
) l 
on n.winner = l.winner
where l_n >5
order by l_n;
--it is bonus task, i was think about this
--solution for 19 exercise whole day
--a lot of i remember from sqlbolt trening
--but i little bit use help gpt in first row
--( n.winner, l.l_h)