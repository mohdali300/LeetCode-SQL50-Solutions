# Students and Examinations (LeetCode 1280)

**Difficulty:** Easy

---

## 📝 Problem Description
You are given information about students, subjects, and exam attendances in a school.

Each student is expected to take **every subject**, and the `Examinations` table records each time a student attends an exam.  
The table may contain **duplicate records**, meaning a student can attend the same exam multiple times.

Your task is to report **how many times each student attended each subject’s exam**.

---

## 📊 Table Schemas

### Students

| Column Name  | Type    | Description |
|-------------|---------|-------------|
| student_id  | int     | Unique student ID |
| student_name| varchar | Student name |

- `student_id` is the **primary key**.

---

### Subjects

| Column Name  | Type    | Description |
|-------------|---------|-------------|
| subject_name| varchar | Subject name |

- `subject_name` is the **primary key**.

---

### Examinations

| Column Name  | Type    | Description |
|-------------|---------|-------------|
| student_id  | int     | Student ID |
| subject_name| varchar | Subject name |

### Notes
- This table **has no primary key** and may contain duplicates.
- Each row represents one attendance of a student in a subject exam.
- Every student is associated with **all subjects**, even if they never attended an exam.

---

## ✅ Requirements
- For **each student and each subject**, calculate how many times the student attended the exam.
- Return the following columns:
  - `student_id`
  - `student_name`
  - `subject_name`
  - `attended_exams`
- If a student did not attend a subject’s exam, `attended_exams` should be `0`.
- Order the result by:
  - `student_id` (ascending)
  - `subject_name` (ascending)

---

## 📥 Example

### Input

#### Students

| student_id | student_name |
|------------|--------------|
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |

#### Subjects

| subject_name |
|--------------|
| Math         |
| Physics      |
| Programming  |

#### Examinations

| student_id | subject_name |
|------------|--------------|
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |

### Output

| student_id | student_name | subject_name | attended_exams |
|------------|--------------|--------------|----------------|
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |

---

## 📖 Explanation
- The result must include **all combinations** of students and subjects.
- Attendance is counted based on how many times a matching record appears in `Examinations`.
- Students who never attended any exam must still appear with counts of `0`.

---

## 🔗 Reference
- [LeetCode Problem 1280](https://leetcode.com/problems/students-and-examinations/)
