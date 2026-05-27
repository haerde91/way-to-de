--task: Show all columns. Sort first by subject, then by yr.
select *
from nobel
order by subject, yr;


----->I had to use the documentation,
--because I forgot about the 'order by' sorting structure
--i.e., I forgot that conditions can be separated by a comma
--no need to mess around...