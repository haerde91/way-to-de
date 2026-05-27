--task: Display: subject, winner, yr, Add a constant column with the value 'analysis_run'
select subject, winner, yr, 'analysis_run' as analysis 
from nobel;