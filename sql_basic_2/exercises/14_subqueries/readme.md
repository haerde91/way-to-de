# SQL Learning – SUBQUERY exercises

This folder contains exercises focused on solving SQL problems using SUBQUERY and breaking complex queries into smaller logical steps.

## Topics practiced

- using subqueries inside SELECT, FROM and WHERE clauses
- comparing results between main queries and subqueries
- calculating values needed for comparison (AVG, COUNT, SUM)
- filtering data based on results from another query
- understanding nested query logic
- combining SUBQUERY with JOIN, GROUP BY and HAVING
- understanding data granularity when using aggregations and subqueries

## Environment

- PostgreSQL  
- DBeaver  
- pgAdmin  
- VS Code  
- Ubuntu Linux (migrated learning environment from Windows)

## Notebook

In this section I learned how to use subqueries to solve more complex SQL problems by dividing them into smaller logical steps.

These exercises helped me understand that SQL problems are often easier to solve by first identifying what needs to be calculated and then comparing the results with the required condition.

I also improved my understanding of data granularity and learned that before using aggregation functions like COUNT or AVG, it is important to understand what each row represents after joins and filtering.

During this section I focused not only on writing correct SQL syntax, but also on understanding the business logic behind each query.

## Difficulties

- understanding what should be calculated first before writing the final query
- choosing the correct level of aggregation
- avoiding incorrect COUNT results after JOIN operations
- managing multiple levels of nested subqueries

These problems were reduced by analyzing each task step by step:
- identifying the final result,
- finding the first calculation needed,
- determining what additional information is required to reach the final answer.

## Key takeaway

SUBQUERY is not only a syntax feature used to create nested queries.

The most important skill is learning how to break a complex business problem into smaller logical steps and compare intermediate results to reach the final answer.

Understanding data granularity and knowing what exactly is being counted or compared is essential for writing reliable SQL queries.

##################################
i used gpt and translator for making this readme
##################################