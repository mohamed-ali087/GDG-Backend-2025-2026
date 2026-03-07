USE college_db;

SELECT student_id, student_name, city
FROM students;

SELECT instructors.name, departments.name AS department_name, salary
FROM instructors LEFT JOIN departments
ON instructors.department_code = departments.department_code
;

SELECT departments.name, course_code, course_title
FROM courses  LEFT JOIN departments
ON courses.department_code = departments.department_code;
;

SELECT students.student_name, enrollment_date, student_final_grade
FROM students JOIN students_enrollment
# ON students.student_id = students_enrollment.student_id
# ON students_enrollment.course_code = 'CS101'
ON students.student_id = students_enrollment.student_id
WHERE students_enrollment.course_code = 'CS101'
;

SELECT students_enrollment.course_code, courses.course_title
, COUNT(studnet_enrollment.student_id) AS total_students
FROM courses LEFT JOIN students_enrollment
ON courses.course_code = students_enrollment.course_code
GROUP BY courses.course_code, courses.course_title
;

SELECT instructor_name,
       salary,
       departments.department_name
FROM instructors i
JOIN departments d
ON i.department_code = d.department_code
WHERE i.salary = (
    SELECT MAX(salary)
    FROM instructors
);


SELECT c.course_title AS course_title,
       p.course_title AS prerequisite_course_title
FROM course_prerequisites cp
JOIN courses c
     ON cp.course_code = c.course_code
JOIN courses p
     ON cp.prerequisite_code = p.course_code
     
;

SELECT s.student_name,
       f.name AS dependent_name,
       r.relationship
FROM students s
JOIN students_family_members_relations r
     ON s.student_id = r.student_id
JOIN students_family_members f
     ON r.member_id = f.member_id
;


SELECT d.name AS department_name,
       COUNT(i.id) AS instructor_count
FROM departments d
JOIN instructors i
     ON d.department_code = i.department_code
GROUP BY d.department_code, d.name
HAVING COUNT(i.id) > 5
;

SELECT s.student_name,
       COUNT(se.course_code) AS number_of_courses
FROM students s
JOIN students_enrollment se
     ON s.student_id = se.student_id
GROUP BY s.student_id, s.student_name
HAVING COUNT(se.course_code) > 3;


SELECT c.course_code,
       c.course_title
FROM courses c
LEFT JOIN students_enrollment se
     ON c.course_code = se.course_code
WHERE se.student_id IS NULL;

