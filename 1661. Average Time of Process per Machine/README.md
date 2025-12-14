# Average Time of Process per Machine (LeetCode 1661)

**Difficulty:** Easy

---

## 📝 Problem Description
You are given a table named `Activity` that tracks the start and end times of processes running on different machines in a factory.

Each machine runs several processes, and for every process there is exactly:
- one `start` record
- one `end` record

Your task is to compute the **average processing time per machine**.

---

## 📊 Table Schema

### Activity

| Column Name   | Type  | Description |
|--------------|-------|-------------|
| machine_id   | int   | ID of the machine |
| process_id   | int   | ID of the process |
| activity_type| enum  | `'start'` or `'end'` |
| timestamp    | float | Time in seconds |

### Notes
- `(machine_id, process_id, activity_type)` is the **primary key**.
- Each `(machine_id, process_id)` pair has exactly one `start` and one `end`.
- The `start` timestamp is always **less than** the `end` timestamp.

---

## ✅ Requirements
- Calculate the time taken for each process as:  
  `end timestamp - start timestamp`
- For each machine, compute the **average time** across all its processes.
- Return:
  - `machine_id`
  - average time as `processing_time`
- Round `processing_time` to **3 decimal places**.
- The result can be returned in **any order**.

---

## 📥 Example

### Input

| machine_id | process_id | activity_type | timestamp |
|------------|------------|---------------|-----------|
| 0 | 0 | start | 0.712 |
| 0 | 0 | end   | 1.520 |
| 0 | 1 | start | 3.140 |
| 0 | 1 | end   | 4.120 |
| 1 | 0 | start | 0.550 |
| 1 | 0 | end   | 1.550 |
| 1 | 1 | start | 0.430 |
| 1 | 1 | end   | 1.420 |
| 2 | 0 | start | 4.100 |
| 2 | 0 | end   | 4.512 |
| 2 | 1 | start | 2.500 |
| 2 | 1 | end   | 5.000 |

### Output

| machine_id | processing_time |
|------------|-----------------|
| 0 | 0.894 |
| 1 | 0.995 |
| 2 | 1.456 |

---

## 📖 Explanation
- Each machine runs the same number of processes.
- The processing time of a process is calculated using its `start` and `end` timestamps.
- The average processing time is computed per machine and rounded to 3 decimals.

---

## 🔗 Reference
- [LeetCode Problem 1661](https://leetcode.com/problems/average-time-of-process-per-machine/)
