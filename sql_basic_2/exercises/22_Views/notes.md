# Views

A VIEW is a named, stored SELECT query that can be used like a table.

## Why use a VIEW?

- Reuse complex SQL logic.
- Avoid repeating the same JOINs and calculations.
- Hide unnecessary database complexity.
- Provide a simple interface to data.
- Can be queried with WHERE, ORDER BY, GROUP BY, JOIN, etc.

## VIEW vs TABLE

TABLE:
- Stores data.

VIEW:
- Stores a query definition.
- Does not normally store a separate copy of the result.

## VIEW vs CTE

CTE:
- Exists only within one query.

VIEW:
- Is stored in the database.
- Can be reused by multiple queries.

## Important

A normal VIEW does not automatically improve performance.
It is mainly an abstraction and reusability mechanism.

If historical values must remain unchanged, do not blindly calculate them
from mutable current data.

## Basic lifecycle

CREATE VIEW
    ↓
SELECT FROM VIEW
    ↓
CREATE OR REPLACE VIEW
    ↓
DROP VIEW
