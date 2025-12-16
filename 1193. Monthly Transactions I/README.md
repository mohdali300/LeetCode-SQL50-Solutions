# Monthly Transactions I (LeetCode 1193)

**Difficulty:** Medium

---

## 📝 Problem Description
You are given a table named `Transactions` that contains records of incoming transactions, including their country, state, amount, and transaction date.

Your task is to compute, **for each month and country**:
- Total number of transactions
- Total amount of transactions
- Number of approved transactions
- Total amount of approved transactions

---

## 📊 Table Schema

### Transactions

| Column Name | Type    | Description |
|------------|---------|-------------|
| id         | int     | Unique transaction identifier |
| country    | varchar | Country code |
| state      | enum    | `"approved"` or `"declined"` |
| amount     | int     | Transaction amount |
| trans_date | date    | Date of the transaction |

- `id` is the **primary key**.

---

## ✅ Requirements
- Group transactions by **month** (in `YYYY-MM` format) and **country**.
- Compute the following for each group:
  - `trans_count`: Total number of transactions
  - `trans_total_amount`: Total amount of all transactions
  - `approved_count`: Number of approved transactions
  - `approved_total_amount`: Total amount of approved transactions
- The result can be returned in **any order**.

---

## 📥 Example

### Input

| id  | country | state    | amount | trans_date  |
|-----|---------|----------|--------|------------|
| 121 | US      | approved | 1000   | 2018-12-18 |
| 122 | US      | declined | 2000   | 2018-12-19 |
| 123 | US      | approved | 2000   | 2019-01-01 |
| 124 | DE      | approved | 2000   | 2019-01-07 |

### Output

| month    | country | trans_count | approved_count | trans_total_amount | approved_total_amount |
|----------|---------|-------------|----------------|-------------------|----------------------|
| 2018-12  | US      | 2           | 1              | 3000              | 1000                 |
| 2019-01  | US      | 1           | 1              | 2000              | 2000                 |
| 2019-01  | DE      | 1           | 1              | 2000              | 2000                 |

---

## 📖 Explanation
- For each `(month, country)` pair, transactions are aggregated.
- Only transactions with `state = 'approved'` are counted in the approved statistics.
- The month is extracted from the `trans_date` in `YYYY-MM` format.

---

## 🔗 Reference
- [LeetCode Problem 1193](https://leetcode.com/problems/monthly-transactions-i/)
