# SQL-Assessment

## Task 1: Enquiry and Transaction Counts

### Objective

Generate a summary table showing, for each user and each date, how many enquiries and transactions they made. The solution must avoid using JOINs.

### Approach

**Step -1** 

Count the number of enquiries for each `user_id` on each `date` from the `enquiries` table.

SELECT
        user_id,
        date,
        count() AS count_enq,
        0 AS count_txns
FROM enquiries
GROUP BY user_id, date

This query counts the number of enquiries made by each user on each date.  
Since this query only deals with enquiries, we set `count_txns` to 0 to maintain column consistency for the upcoming `UNION ALL`.

**Step -2**  

Count the number of transactions for each `user_id` on each `date` from the `txns` table.

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
         "UNION ALL"
         Step 2 - Query**
    ) As enquiry_txn  
GROUP BY user_id, date;

The outer query groups the combined data again by `user_id` and `date` to sum up the enquiry and transaction counts, producing the final result with total counts per user per day.

==============================================================================================================


## Task 2: Enquiry Conversion Mapping

### Objective

Users express interest in a product by filling out an enquiry form.
An enquiry is considered converted if the user completes a transaction within 30 days of submitting the enquiry.
For each transaction, only the first enquiry made within the preceding 30 days is counted as converted.
Each transaction can be linked to atmost one enquiry.
However, a single enquiry may be linked to multiple transactions.

### Rules

1. An enquiry is **converted** if a **transaction is made by the same user within 30 days** after the enquiry date.
2. For each **transaction**, only the **first enquiry** (by date) within the past 30 days is considered.
3. A transaction can be linked to only **one enquiry**.
4. But one enquiry can be linked to **multiple transactions**.

### Approach

**Step 1**

Match each transaction with enquiries in the last 30 days

WITH FirstEnquiryPerTxn AS (
    SELECT
        t.txn_id,
        t.date AS txn_date,
        e.enquiry_id,
        e.date AS enquiry_date,
        t.user_id,
        row_number() OVER (PARTITION BY t.txn_id ORDER BY e.date ASC) AS rn
    FROM txns t
    INNER JOIN enquiries e
        ON t.user_id = e.user_id
        AND e.date BETWEEN t.date - INTERVAL 30 DAY AND t.date
)

We join `txns` and `enquiries` on `user_id`, and filter to only keep enquiries made within 30 days before the transaction date.  
We use `ROW_NUMBER()` to rank these enquiries per transaction, so we can later select only the **first matching enquiry** for each transaction.

**Step 2**  

Get first enquiry per transaction

FirstEnquiries AS (
    SELECT txn_id, enquiry_id
    FROM FirstEnquiryPerTxn
    WHERE rn = 1 )
    
From the ranked list, we keep only rows with `rn = 1`, i.e., the earliest enquiry linked to each transaction

**Step 3**

SELECT
    e.enquiry_id,
    e.date,
    e.user_id,
    groupArray(fe.txn_id) AS txn_ids
FROM enquiries e
LEFT JOIN FirstEnquiries fe ON e.enquiry_id = fe.enquiry_id
GROUP BY e.enquiry_id, e.date, e.user_id;


We join the filtered list of linked transaction IDs back with the original `enquiries` table.  
For each enquiry, we collect all `txn_id`s where it was the first valid enquiry within 30 days before the transaction — using `groupArray()`.

We use a `LEFT JOIN` to ensure that all enquiries appear in the final output, even if they were not linked to any transaction (i.e., not converted).


**Final Output**

Each enquiry row will show:
- enquiry_id  
- date of enquiry  
- user_id  
- list of all transaction IDs it successfully converted (can be an empty array)
