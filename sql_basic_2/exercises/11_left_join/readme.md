# SQL Learning – LEFT JOIN exercises

This folder contains focused exercises on combining tables using LEFT JOIN in SQL.

## Topics practiced

- using `LEFT JOIN` to keep all records from the main table
- understanding missing relationships between tables
- working with NULL values after joins
- finding records without matching data
- combining LEFT JOIN with aggregations
- using COUNT(), SUM(), and COALESCE()
- filtering and sorting joined data
- building simple analytical reports

## Environment

- PostgreSQL  
- DBeaver  
- pgAdmin  
- VS Code  

## Notebook

In this section I learned how to use LEFT JOIN to analyze data while keeping all records from the main table, even when related records do not exist.

These exercises helped me understand the difference between INNER JOIN and LEFT JOIN, especially how missing relationships are represented with NULL values.

I also practiced combining joins with aggregation functions to create customer and product reports.

## Difficulties


- handling missing values in aggregations using COALESCE()
- avoiding unwanted filtering of LEFT JOIN results

These problems were reduced by checking intermediate query results and understanding how joins affect the final dataset.

## Key takeaway

LEFT JOIN returns all records from the left table and matching records from the right table.

Missing matches are represented as NULL values.

The most important skill is understanding how data relationships affect the final result, especially when working with incomplete data.

##################################
I used GPT and translator for making this README
##################################