# Not Boring Movies (LeetCode 620)

**Difficulty:** Easy

---

## 📝 Problem Description
You are given a table named `Cinema` that contains information about movies, including their ratings and descriptions.

Your task is to report **movies that meet both of the following conditions**:
- The movie has an **odd-numbered ID**
- The movie description is **not equal to `"boring"`**

---

## 📊 Table Schema

### Cinema

| Column Name | Type    | Description |
|------------|---------|-------------|
| id         | int     | Unique movie identifier |
| movie      | varchar | Movie name |
| description| varchar | Movie description or genre |
| rating     | float   | Movie rating (0 to 10, 2 decimal places) |

- `id` is the **primary key**.

---

## ✅ Requirements
- Select movies with an **odd `id`**.
- Exclude movies whose `description` is `"boring"`.
- Return all columns from the table.
- Order the result by `rating` in **descending order**.

---

## 📥 Example

### Input

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 1  | War        | great 3D    | 8.9    |
| 2  | Science    | fiction     | 8.5    |
| 3  | irish      | boring      | 6.2    |
| 4  | Ice song   | Fantacy     | 8.6    |
| 5  | House card | Interesting | 9.1    |

### Output

| id | movie      | description | rating |
|----|------------|-------------|--------|
| 5  | House card | Interesting | 9.1    |
| 1  | War        | great 3D    | 8.9    |

---

## 📖 Explanation
- Movies with odd IDs are: **1, 3, 5**
- Movie with ID **3** is excluded because its description is `"boring"`
- Remaining movies are sorted by rating in descending order

---

## 🔗 Reference
- [LeetCode Problem 620](https://leetcode.com/problems/not-boring-movies/)
