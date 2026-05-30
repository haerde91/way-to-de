# SQL Learning – Aggregates (COUNT, SUM, AVG, MIN, MAX)

This folder contains exercises focused on aggregate functions in SQL.

## Topics practiced

- `COUNT()` for counting rows and filtered data
- `SUM()` for summing numeric values
- `AVG()` for calculating averages
- `MIN()` and `MAX()` for finding boundaries in data
- `COUNT(DISTINCT ...)` for unique values

## Environment

- PostgreSQL  
- DBeaver  
- pgAdmin  
- VS Code  

## Notes

In this section I learned how to perform calculations on entire columns instead of filtering individual rows.

I also practiced understanding the difference between:
- total aggregation (e.g. `COUNT(*)`)
- filtered aggregation (e.g. `COUNT(*) WHERE ...`)
- unique values (`DISTINCT`)

## Difficulties

- misunderstanding when to use `SUM()` vs `COUNT()`
- confusion about `COUNT(DISTINCT column)`

- interpreting `MIN()` and `MAX()` differences correctly
- minor stylistic issues such as unnecessary parentheses

These were resolved through testing queries and analyzing results step by step.

## Key takeaway

Aggregate functions allow working on entire datasets at once, but correct interpretation of results is more important than syntax.

##################################
i used gpt and translator for made this readme
##################################