--task: Add a constant column with value 'nobel_award' for each record.
select *,  'nobel_award' as award_type
from nobel