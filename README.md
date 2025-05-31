# SQL-Assessment

## Task 1: Enquiry and Transaction Counts

### Objective

Generate a summary table showing, for each user and each date, how many enquiries and transactions they made. The solution must avoid using JOINs.

### Approach

**Step -1** Count the number of enquiries for each `user_id` on each `date` from the `enquiries` table.

SELECT
        user_id,
        date,
        count() AS count_enq,
        0 AS count_txns
FROM enquiries
GROUP BY user_id, date

This query counts the number of enquiries made by each user on each date.  
Since this query only deals with enquiries, we set `count_txns` to 0 to maintain column consistency for the upcoming `UNION ALL`.

**Step -2**  Count the number of transactions for each `user_id` on each `date` from the `txns` table.

SELECT
        user_id,
        date,
        0 AS count_enq,
        count() AS count_txns
FROM txns
GROUP BY user_id, date

This query counts the number of transactions made by each user on each date.  
Since this only deals with transactions, we set `count_enq` to 0 to align the output for combining with enquiry data using `UNION ALL`.

`GROUP BY user_id, date` is used to count how many enquiries or transactions each user made on each specific date.

We use `UNION ALL` to combine the results of the enquiry and transaction count queries, keeping all records without removing duplicates.
This creates a single dataset with both enquiry and transaction counts for each user per date.

**Step -3** 

SELECT
    user_id,
    date,
    sum(count_enq) AS count_enq,
    sum(count_txns) AS count_txns
FROM (
         **Step 1 - Query
         UNION ALL
         Step 2 - Query**
    ) As enquiry_txn  
GROUP BY user_id, date
ORDER BY user_id, date;

The outer query groups the combined data again by `user_id` and `date` to sum up the enquiry and transaction counts, producing the final result with total counts per user per day.

==============================================================================================================


## Task 2: Enquiry Conversion Mapping

### Objective

Identify which enquiries resulted in transactions. An enquiry is considered converted if the user completes a transaction within 30 days of the enquiry. Each transaction can be linked to at most one enquiry (the earliest one within the last 30 days), but a single enquiry can be linked to multiple transactions.

---

### Rules

1. An enquiry is **converted** if a **transaction is made by the same user within 30 days** after the enquiry date.
2. For each **transaction**, only the **first enquiry** (by date) within the past 30 days is considered.
3. A transaction can be linked to only **one enquiry**.
4. But one enquiry can be linked to **multiple transactions**.

---

### Approach

1. Join the `txns` and `enquiries` tables **on user_id** and **date range condition**:
   - Enquiry date must be within 30 days **before** the transaction date.
2. Use `ROW_NUMBER()` partitioned by transaction to identify the **first valid enquiry**.
3. Filter to keep only rows where `row_number = 1`.
4. Group the valid (txn-enquiry) mappings by `enquiry_id` to collect all linked `txn_id`s into an array.
5. Left join this mapping back to the `enquiries` table to get all enquiries and their linked transactions (if any).

---

### Output Schema

| Column Name  | Data Type       | Description                                               |
|--------------|------------------|-----------------------------------------------------------|
| enquiry_id   | String           | Unique identifier for the enquiry                         |
| date         | Date             | Date of the enquiry                                       |
| user_id      | String           | Unique identifier for the user                            |
| txn_ids      | Array(String)    | Array of transaction IDs linked to the enquiry            |

---

### Notes

- Enquiries with no matching transactions will have an **empty array** for `txn_ids`.
- Output contains **one row per enquiry**.
- Ensures strict compliance with the rule: one txn → one enquiry (first), but one enquiry → many txns.

