--task:Calculate the difference between the earliest and latest year in the table.
select max(yr)-min(yr) as diff_bet_yr
from nobel;