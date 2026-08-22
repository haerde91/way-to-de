-- ============================================
-- 1. BASELINE QUERY
-- ============================================

-- First, we run the original query without any optimization.
-- We want to establish a baseline:
-- - what data are we retrieving?
-- - what does the query look like?
-- - does it return the correct result?
--
-- This is our starting point for later comparisons.

SELECT ...
FROM ...
WHERE ...;


-- ============================================
-- 2. EXPLAIN
-- ============================================

-- EXPLAIN does NOT normally execute the query.
-- It shows the execution plan PostgreSQL intends to use.
--
-- The plan can show things such as:
-- - Seq Scan
-- - Index Scan
-- - JOIN operations
-- - Sort operations
-- - estimated cost (cost)
-- - estimated number of rows (rows)
--
-- In other words, we are asking PostgreSQL:
-- "HOW do you plan to execute this query?"

EXPLAIN
SELECT ...
FROM ...
WHERE ...;


-- ============================================
-- 3. EXPLAIN ANALYZE
-- ============================================

-- EXPLAIN ANALYZE actually executes the query
-- and provides information about what happened
-- during the real execution.
--
-- This allows us to compare:
--
-- estimated → what PostgreSQL expected
-- actual    → what actually happened
--
-- This gives us real execution measurements.

EXPLAIN ANALYZE
SELECT ...
FROM ...
WHERE ...;


-- ============================================
-- 4. CREATE INDEX
-- ============================================

-- We create an index on a column that may be frequently
-- used for filtering or searching.
--
-- An index is an additional data structure that can
-- help PostgreSQL find relevant rows more efficiently.
--
-- IMPORTANT:
-- Creating an index does NOT guarantee that PostgreSQL
-- will use it.
--
-- The query planner decides whether using the index
-- makes sense for a particular query.

CREATE INDEX index_name
ON table_name(column_name);


-- ============================================
-- 5. EXPLAIN ANALYZE AFTER INDEX
-- ============================================

-- We run the SAME query again.
--
-- Now we check whether creating the index changed
-- the execution plan and whether it actually improved
-- the query's performance.
--
-- We compare BEFORE vs AFTER.
--
-- Questions to consider:
-- - Did PostgreSQL use the index?
-- - Did the execution plan change?
-- - Did the query actually become faster?
-- - Was the index useful in this case?

EXPLAIN ANALYZE
SELECT ...
FROM ...
WHERE ...;


-- ============================================
-- 6. CLEANUP
-- ============================================

-- After the experiment, we remove the index
-- if it was created only for learning purposes.
--
-- This keeps our database clean and prevents us
-- from leaving unnecessary indexes behind.

DROP INDEX index_name;
