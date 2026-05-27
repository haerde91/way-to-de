--task: Show winners whose name: starts with letter E
--and is longer than 5 characters
select winner, length (winner) as l_n
from nobel
where winner like 'E%'
and length (winner) > 5 ; ----> i had problem with this caus i try use alias from select.
------------------------------> now i know it was wrong caus where is reading early then select :)

