# SQL Learning – Window Functions exercises

This folder contains exercises focused on Window Functions in PostgreSQL.

The goal of this section was to learn how to perform calculations across related rows while keeping the original query granularity.

The main focus was understanding how Window Functions can calculate values across groups or ordered rows without collapsing multiple records into a single row.

## Topics practiced

* using Window Functions with OVER()
* using PARTITION BY to define independent groups
* using ORDER BY inside Window Functions
* using aggregate Window Functions such as SUM(), AVG(), MIN(), MAX() and COUNT()
* calculating running totals
* calculating moving averages
* using ROW_NUMBER(), RANK() and DENSE_RANK()
* understanding the differences between ranking functions
* using LAG() and LEAD() to access previous and next rows
* using FIRST_VALUE() and LAST_VALUE()
* using Window Frames with ROWS BETWEEN
* using PRECEDING, FOLLOWING, CURRENT ROW and UNBOUNDED
* using NTILE() to divide rows into groups
* using PERCENT_RANK() and CUME_DIST() for relative position and distribution
* using NTH_VALUE() to retrieve a value from a specific position
* combining multiple Window Functions in one query
* combining Window Functions with CTEs, JOINs and aggregations
* maintaining correct query granularity
* understanding the difference between PARTITION BY and Window Frames
* choosing the appropriate Window Function based on business requirements

## Environment

* PostgreSQL
* DBeaver
* pgAdmin
* VS Code
* Ubuntu

## Notebook

In this section I learned how to use Window Functions to calculate metrics across related rows without changing the final query granularity.

Before using Window Functions, similar problems could often require additional subqueries, CTEs or JOINs. Window Functions allow calculations such as averages, totals, rankings and comparisons to be added to individual rows while keeping those rows in the result.

During these exercises I practiced using Window Functions for different business scenarios, for example:

* calculating customer-level averages while keeping individual orders,
* calculating running totals,
* calculating moving averages,
* ranking orders and products within groups,
* comparing a record with the previous or next record,
* comparing monthly sales with the previous month,
* identifying unusually large orders compared with a customer's typical order,
* dividing records into approximately equal groups,
* comparing values with specific positions within a group.

I learned that PARTITION BY defines the group over which the Window Function operates, while ORDER BY defines the order of rows inside that group.

I also learned that Window Frames define which rows within the ordered window are considered for a calculation.

## Difficulties

* understanding the difference between GROUP BY and Window Functions
* understanding that Window Functions do not reduce the number of rows
* understanding how PARTITION BY affects the calculation
* understanding how ORDER BY affects functions such as LAG(), LEAD(), ranking functions and running totals
* understanding the difference between ROW_NUMBER(), RANK() and DENSE_RANK()
* choosing between LAG() and LEAD()
* understanding the difference between PARTITION BY and Window Frames
* understanding why LAST_VALUE() can require an explicit Window Frame
* understanding how Window Functions interact with different query granularities
* deciding when aggregation should happen before applying a Window Function
* remembering the exact syntax of less frequently used Window Functions

These difficulties were reduced by focusing first on the business requirement, expected query granularity and required comparison before choosing the appropriate Window Function.

## Data Engineer perspective

During these exercises I practiced designing SQL queries based on business logic instead of only focusing on syntax.

Before writing SQL, I learned to define:

* the main entity,
* expected output granularity,
* the group over which the calculation should be performed,
* the ordering of rows when required,
* whether the calculation should use the entire partition or a specific Window Frame,
* whether the Window Function should be applied before or after aggregation.

A good solution should:

* keep the correct query granularity,
* clearly communicate the business logic,
* use the appropriate Window Function,
* define PARTITION BY and ORDER BY intentionally,
* avoid unnecessary CTEs or transformations,
* be easy to maintain and review.

For Window Functions, the main question is not:

"Which Window Function should I memorize?"

but:

"What calculation do I need across these rows while keeping the current row in the result?"

Understanding this distinction helps determine whether a Window Function is appropriate and which type of function should be used.

## Key takeaway

Window Functions are useful when calculations need to be performed across related rows without losing the individual records in the result.

The most important lesson was understanding the relationship between:

* query granularity,
* PARTITION BY,
* ORDER BY,
* Window Frames,
* and the specific Window Function being used.

Instead of asking:

"How do I calculate this for every group?"

I learned to ask:

"Do I need the group-level calculation, but still want to keep every individual row?"

If the answer is yes, a Window Function is often the appropriate tool.

I also learned that not every Window Function needs to be memorized. The important skill is recognizing the business problem, knowing that a suitable Window Function exists, understanding what it does, and being able to look up the exact syntax when necessary.

##################################
i used gpt and translator for making this readme
##################################