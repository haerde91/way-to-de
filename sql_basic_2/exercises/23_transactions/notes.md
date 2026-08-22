# Transactions

A transaction is a group of SQL operations treated as one logical unit.

Main idea:

- All operations succeed → `COMMIT`
- Something goes wrong → `ROLLBACK`

## 1. BEGIN

Starts a transaction.

```sql
BEGIN;

All following operations belong to the transaction until COMMIT or ROLLBACK.

## 2. COMMIT

Confirms and saves all changes made during the transaction.

COMMIT;

3. ROLLBACK

Cancels all changes made during the current transaction.

ROLLBACK;

ROLLBACK does NOT automatically retry the transaction.
Basic structure

BEGIN;

-- SQL operation 1
-- SQL operation 2
-- SQL operation 3

COMMIT;

If something goes wrong:

BEGIN;

-- SQL operation 1
-- SQL operation 2

ROLLBACK;

Transactions in applications

In a real application, Python or another programming language can control the transaction while PostgreSQL executes the SQL.

User action
    ↓
Python application
    ↓
BEGIN
    ↓
INSERT / UPDATE / DELETE
    ↓
Everything OK → COMMIT
Error          → ROLLBACK

Example: placing an order may require:

    Create order.
    Create order items.
    Update stock.
    Record payment.

We want:

Everything succeeds → COMMIT
Something fails     → ROLLBACK

This prevents a partially completed operation.
ROLLBACK vs RETRY

These are different concepts:

ROLLBACK
→ undo the current transaction

RETRY
→ start a new transaction and try again

Retry logic is normally handled by the application.
ACID

Transactions are associated with ACID:

    Atomicity — all operations succeed or none are applied.
    Consistency — database remains in a valid state.
    Isolation — concurrent transactions are controlled.
    Durability — committed changes remain saved.

The most important concept for now:

    Atomicity = all or nothing.

Current learning approach

The current dataset is mainly designed for SQL analysis and is not ideal for a meaningful transaction exercise.

For now, understand:

BEGIN → operations → COMMIT
BEGIN → operations → ROLLBACK

We will return to practical transactions later during the Python/project stage, when Python and PostgreSQL work together as one pipeline.