# SQL Learning – CTE exercises

This folder contains exercises focused on Common Table Expressions (CTE) in SQL.

The goal of this section was to learn how to break complex SQL problems into smaller, logical processing steps and build queries in a clear and structured way.

## Topics practiced

* creating and using Common Table Expressions (CTEs)
* breaking complex queries into multiple processing stages
* building readable SQL pipelines
* using one CTE as a source for another CTE
* combining CTEs with JOINs and aggregations
* calculating customer and product-level metrics
* filtering results using calculated values from previous steps
* understanding the difference between intermediate calculations and final report output
* improving SQL readability and maintainability

## Environment

* PostgreSQL
* DBeaver
* pgAdmin
* VS Code
* Ubuntu

## Notebook

In this section I learned how to use CTEs to organize SQL queries into logical steps.

Before using CTEs, complex problems were often solved by building nested subqueries from the final result backwards. CTEs introduced a more structured approach where the query can be built step by step from raw data towards the final output.

During these exercises I practiced creating intermediate datasets responsible for specific tasks, for example:

* calculating order values,
* creating customer metrics,
* calculating averages across groups,
* filtering customers or products based on calculated business conditions.

I also learned that each CTE should have a clear responsibility and represent one stage of data transformation.

## Difficulties

* understanding which business metric should be calculated and compared
* distinguishing between similar values, such as:

  * average order value,
  * average customer spending
* choosing correct query granularity before writing SQL
* creating meaningful names for CTEs and aliases
* understanding when a calculated value is needed only for filtering and does not need to appear in the final result

These difficulties were reduced by first defining what one row of the final result represents and then designing the required transformation steps.

## Key takeaway

CTEs are not only a syntax feature for writing longer queries.

The most important lesson was learning how to design SQL as a sequence of data transformations.

A good query should clearly show:

source data
↓
calculation step
↓
business logic
↓
final report

Understanding the flow of data and keeping each step responsible for one purpose makes SQL easier to debug, maintain, and review.

##################################
i used gpt and translator for making this readme
##################################
