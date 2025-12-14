# Recyclable and Low Fat Products (LeetCode 1757)

**Difficulty:** Easy  

## 📝 Problem Description
You are given a table named `Products` that stores information about food products.  
Each product indicates whether it is **low fat** and whether it is **recyclable**.

Your task is to find the IDs of products that are **both low fat and recyclable**.

---

## 📊 Table Schema

### Products

| Column Name | Type | Description |
|------------|------|-------------|
| product_id | int  | Unique identifier for each product |
| low_fats   | enum | `'Y'` = Low fat, `'N'` = Not low fat |
| recyclable | enum | `'Y'` = Recyclable, `'N'` = Not recyclable |

- `product_id` is the primary key.

---

## ✅ Requirements
Return the `product_id` of all products where:
- `low_fats = 'Y'`
- `recyclable = 'Y'`

✔ The result can be returned in **any order**.

---

## 📥 Example

### Input

| product_id | low_fats | recyclable |
|------------|----------|------------|
| 0 | Y | N |
| 1 | Y | Y |
| 2 | N | Y |
| 3 | Y | Y |
| 4 | N | N |

### Output

| product_id |
|------------|
| 1 |
| 3 |

### Explanation
Only products **1** and **3** satisfy both conditions.

---
## 🔗 Reference
- [LeetCode Problem 1757](https://leetcode.com/problems/recyclable-and-low-fat-products/)