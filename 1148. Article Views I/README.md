# Article Views I (LeetCode 1148)

**Difficulty:** Easy

---

## 📝 Problem Description
You are given a table named `Views` that stores information about article views.  
Each row represents a viewer who viewed an article written by an author on a specific date.

Your task is to identify **all authors who have viewed at least one of their own articles**.

---

## 📊 Table Schema

### Views

| Column Name | Type | Description |
|------------|------|-------------|
| article_id | int  | ID of the article |
| author_id  | int  | ID of the author |
| viewer_id  | int  | ID of the viewer |
| view_date  | date | Date of the view |

### Notes
- The table does **not** have a primary key.
- Duplicate rows may exist.
- If `author_id` equals `viewer_id`, it means the author viewed their own article.

---

## ✅ Requirements
- Return the IDs of authors who viewed **their own articles** at least once.
- The result column must be named `id`.
- The result must be sorted in **ascending order**.
- Each author should appear **only once** in the result.

---

## 📥 Example

### Input

| article_id | author_id | viewer_id | view_date  |
|------------|-----------|-----------|------------|
| 1 | 3 | 5 | 2019-08-01 |
| 1 | 3 | 6 | 2019-08-02 |
| 2 | 7 | 7 | 2019-08-01 |
| 2 | 7 | 6 | 2019-08-02 |
| 4 | 7 | 1 | 2019-07-22 |
| 3 | 4 | 4 | 2019-07-21 |
| 3 | 4 | 4 | 2019-07-21 |

### Output

| id |
|----|
| 4  |
| 7  |

### Explanation
- Author **7** viewed one of their own articles.
- Author **4** viewed one of their own articles.
- Duplicate records do not change the final result.

---

## 🔗 Reference
- [LeetCode Problem 1148](https://leetcode.com/problems/article-views-i/)
