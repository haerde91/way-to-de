-- ============================================
-- OPTIMIZATION PROCESS
-- ============================================
-- 1. Write the baseline query
-- 2. Run EXPLAIN
--     What execution plan does PostgreSQL choose?
-- 3. Run EXPLAIN ANALYZE
--     What actually happened during execution?
-- 4. Identify a potential bottleneck
--     Where is the query spending time/resources?
-- 5. Make a change
--     Add an index and/or modify the query
-- 6. Run EXPLAIN ANALYZE again
--     Did the change actually improve performance?
-- 7. Compare the results
--     BEFORE vs AFTER
-- 8. Keep the improvement or revert the change
-- 9. Clean up experimental objects
--     Remove indexes created only for testing
-- ============================================

-- ============================================
-- 1. BASELINE QUERY
-- ============================================
-- We want to find all orders placed by customer 5.
-- This query will be our baseline for the experiment.
select *
from orders
where customer_id = 5;
-- ============================================
-- 2. EXPLAIN
-- ============================================
-- We now ask PostgreSQL to show us the execution plan
-- it intends to use for our query.
-- At this stage, we are NOT trying to optimize anything.
-- We simply want to observe how PostgreSQL plans to find
-- the orders belonging to customer 5.
-- We will use the result to understand:
-- - which scan PostgreSQL chooses,
-- - how many rows it expects to find,
-- - and what estimated cost it assigns to the operation.
explain
select *
from orders 
where customer_id = 5;

-- ============================================
-- 3. EXPLAIN ANALYZE
-- ============================================
-- We now execute the query and inspect what actually
-- happened during execution.
-- Unlike EXPLAIN, EXPLAIN ANALYZE runs the query
-- and provides actual execution statistics.
-- We will compare:
-- - estimated rows vs actual rows,
-- - estimated cost vs actual execution time,
-- - the planned execution method vs what actually happened.
-- This gives us a real performance measurement
-- before making any changes to the query or database.

explain analyze 
select *
from orders
where customer_id = 5;

-- ============================================
-- NOTE: INDEX EXPERIMENT
-- ===========================================
-- The current table is too small to demonstrate
-- a meaningful performance improvement from an index.
-- For larger tables, an index can significantly reduce
-- the amount of data PostgreSQL needs to scan.
-- Example syntax:
--
-- CREATE INDEX idx_orders_customer_id
-- ON orders(customer_id);
--
-- Whether PostgreSQL actually uses the index depends
-- on the query, table size, data distribution and
-- the execution plan chosen by the query planner.
-- We will revisit this experiment later with a much
-- larger dataset and compare the execution plans
-- and actual execution times.


