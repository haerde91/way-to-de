-- ============================================
-- 1. CREATE VIEW
-- ============================================

-- Creates a named VIEW based on a SELECT query.
-- The VIEW stores the query definition and can be
-- reused later by querying it like a table.
-- Use CREATE VIEW when you want to save and reuse
-- a specific SQL query or data representation.

create view orders_values as
    select oi.order_id,
    sum(oi.quantity*p.price) as order_value
    from order_items oi
    join products p
    on oi.product_id = p.product_id
    group by oi.order_id
;

-- ============================================
-- 2. QUERY A VIEW
-- ============================================

-- A VIEW can be queried like a regular table.
-- Use SELECT to retrieve data from the VIEW.
-- You can also apply clauses such as WHERE, ORDER BY,
-- GROUP BY or HAVING to filter, sort or aggregate the result.
select *
from orders_values
;

-- ============================================
-- 3. CREATE OR REPLACE VIEW
-- ============================================

-- Creates a VIEW if it does not exist.
-- If the VIEW already exists, replaces its definition.

CREATE OR REPLACE VIEW orders_values AS
SELECT
    ...
FROM ...;
;

-- ============================================
-- 4. DROP VIEW
-- ============================================

-- Removes the VIEW from the database.
-- It does not delete the underlying table data.

DROP VIEW orders_values;