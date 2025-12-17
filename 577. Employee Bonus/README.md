# Employee Bonus (LeetCode 577)

**Difficulty:** Easy

---

## 📝 Problem Description
You are given two tables: `Employee` and `Bonus`.

Each employee may or may not receive a bonus. Your task is to report the **name and bonus amount** of employees who satisfy **at least one** of the following conditions:
- The employee received a bonus **less than 1000**
- The employee **did not receive any bonus**

---

## 📊 Table Schemas

### Employee

| Column Name | Type    | Description |
|------------|---------|-------------|
| empId      | int     | Unique employee ID |
| name       | varchar | Employee name |
| supervisor | int     | Manager ID (nullable) |
| salary     | int     | Employee salary |

- `empId` is the **primary key**.

---

### Bonus

| Column Name | Type | Description |
|------------|------|-------------|
| empId      | int  | Employee ID |
| bonus      | int  | Bonus amount |

- `empId` is the **primary key**.
- `empId` is a **foreign key** referencing `Employee.empId`.

---

## ✅ Requirements
- Include employees who:
  - Have a bonus **less than 1000**, or
  - **Do not appear** in the `Bonus` table.
- Return:
  - `name`
  - `bonus`
- If an employee has no bonus, the bonus value should be `NULL`.
- The result can be returned in **any order**.

---

## 📥 Example

### Input

#### Employee

| empId | name   | supervisor | salary |
|-------|--------|------------|--------|
| 3     | Brad   | null       | 4000   |
| 1     | John   | 3          | 1000   |
| 2     | Dan    | 3          | 2000   |
| 4     | Thomas | 3          | 4000   |

#### Bonus

| empId | bonus |
|-------|-------|
| 2     | 500   |
| 4     | 2000  |

### Output

| name | bonus |
|------|-------|
| Brad | null  |
| John | null  |
| Dan  | 500   |

---

## 📖 Explanation
- **Brad** and **John** do not have bonus records.
- **Dan** has a bonus less than 1000.
- **Thomas** is excluded because his bonus is 2000.

---

## 🔗 Reference
- [LeetCode Problem 577](https://leetcode.com/problems/employee-bonus/)
