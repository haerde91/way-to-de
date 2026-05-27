# SQL Learning – WHERE exercises

This folder contains SQL exercises focused on filtering and conditional logic using the `WHERE` clause in PostgreSQL.

## Dataset

Exercises are based on the `nobel` training table.

Columns used:

- `yr` → award year
- `subject` → Nobel Prize category
- `winner` → laureate name

##Environment

Exercises were completed in a local PostgreSQL environment using:

- PostgreSQL
-DBeaver
- pgAdmin
- Visual Studio Code

## Topics covered

This section includes practice with:

- basic WHERE filtering
- comparison operators
- `AND` / `OR`
- `IN`
- `BETWEEN`
- `LIKE`
- `NOT LIKE`
- filtering with multiple conditions
- sorting filtered results
- combining filtering with string functions

## Learning process

All exercises were solved independently before verification.

The workflow used during practice:

1. Analyze the task
2. Write the SQL query manually
3. Run and debug queries locally
4. Verify logic and syntax
5. Use ChatGPT only for review, feedback, and explanation of mistakes

## Problems encountered during learning

One important issue discovered during practice involved query execution order.

While solving a task using:

- `length(winner)`
- aliases created in `SELECT`

an attempt was made to reference a column alias directly inside the `WHERE` clause.

This caused an error because:

- `WHERE` is processed before `SELECT`
- aliases created in `SELECT` are not yet available during filtering

This helped reinforce understanding of SQL query execution order.

Another important observation during practice was related to the `IN` operator.

Initially, filtering multiple values ​​would have been solved using multiple `OR` conditions.  
The exercises helped demonstrate why `IN` provides a cleaner and more scalable solution for filtering several values ​​from the same column.

## Goal

The goal of this section is to develop:

- strong filtering logic
- cleaner query writing habits
- confidence working with real SQL syntax and debugging

########################################
I made this readme with help chatgpt and translator.
########################################