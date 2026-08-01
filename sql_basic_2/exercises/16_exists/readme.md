# SQL Learning – EXISTS and NOT EXISTS exercises

This folder contains exercises focused on EXISTS and NOT EXISTS operators in SQL.

The goal of this section was to learn how to check whether related data exists and solve business problems without changing the final query granularity.

The main focus was understanding how EXISTS answers questions like:

"Does this entity have related records that meet a specific condition?"

## Topics practiced

* using EXISTS and NOT EXISTS operators
* understanding EXISTS as a boolean condition
* checking whether related records exist
* using correlated subqueries
* combining EXISTS with JOINs
* using EXISTS with aggregation and HAVING
* filtering customers and products based on business conditions
* maintaining correct query granularity
* avoiding duplicates caused by JOIN operations
* choosing the correct table as the starting point of a query

## Environment

* PostgreSQL
* DBeaver
* pgAdmin
* VS Code
* Ubuntu

## Notebook

In this section I learned how to use EXISTS and NOT EXISTS to verify whether related data exists without changing the final output structure.

Before using EXISTS, similar problems were often solved with JOINs. However, JOINs can change query granularity and create duplicate rows when one entity has multiple related records.

During these exercises I practiced using EXISTS for different business scenarios, for example:

* finding customers without orders,
* finding products that were never ordered,
* identifying customers who ordered specific products,
* checking customer behavior based on order history,
* combining EXISTS with grouped calculations.

I learned that EXISTS is useful when the final result should stay at the level of the main entity, while other tables are only used to verify whether a condition is true.

## Difficulties

* understanding how EXISTS works internally
* understanding that EXISTS only needs one matching record to return TRUE
* distinguishing between EXISTS and JOIN use cases
* choosing the correct starting table
* maintaining correct granularity across multiple tables
* understanding when JOINs can create duplicates
* combining aggregation with EXISTS conditions
* deciding when CTEs are useful and when they add unnecessary complexity

These difficulties were reduced by first defining the final result, its granularity, and the business condition before writing SQL.

## Data Engineer perspective

During these exercises I practiced designing SQL queries based on business logic instead of only focusing on syntax.

Before writing SQL, I learned to define:

* the main entity,
* expected output granularity,
* relationship path between tables,
* condition that needs to be verified.

A good solution should:

* keep correct granularity,
* clearly communicate business logic,
* avoid unnecessary duplicates,
* be easy to maintain and review.

For EXISTS queries, the main question is not:

"How many related records exist?"

but:

"Does at least one related record exist that proves this condition is true?"

## Key takeaway

EXISTS is not only a SQL keyword used for filtering.

The most important lesson was learning to design SQL around business questions.

Instead of asking:

"How do I join these tables?"

I learned to ask:

"Does this entity have related data that proves this condition is true?"

Understanding when to use EXISTS helps create cleaner SQL, maintain correct granularity, and avoid unnecessary data duplication.

##################################
i used gpt and translator for making this readme
##################################