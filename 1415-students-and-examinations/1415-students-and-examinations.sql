# Write your MySQL query statement below
WITH subjects AS (
    SELECT DISTINCT subject_name FROM Subjects -- Ensure all subjects are included
),
exam_counts AS (
    SELECT student_id, subject_name, COUNT(*) AS attended_exams
    FROM Examinations
    GROUP BY student_id, subject_name
)
SELECT 
    s.student_id, 
    s.student_name, 
    sub.subject_name, 
    COALESCE(ec.attended_exams, 0) AS attended_exams
FROM Students s
CROSS JOIN subjects sub
LEFT JOIN exam_counts ec 
    ON s.student_id = ec.student_id 
    AND sub.subject_name = ec.subject_name
ORDER BY s.student_id ASC, sub.subject_name ASC;
