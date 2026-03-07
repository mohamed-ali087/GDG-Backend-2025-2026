USE college_db;

INSERT INTO departments (department_code, name, building_location)
VALUES
('IT', 'Information Technology', 'Building C'),
('ECE', 'Communication and Electronics Engineering', 'Building C'),
('CSE', 'Computer Engineering', 'Building C'),
('ENG', 'Engineering', 'Building E'),
('MTH', 'Mathematics', 'Building S'),
('PHY', 'Physics', 'Building S'),
('BIO', 'Biology', 'Building G'),
('CHEM', 'Chemistry', 'Building G'),
('BUS', 'Business Administration', 'Building H')
;

# ALTER TABLE departments MODIFY head_id INT NULL;

INSERT INTO instructors(name, salary, hire_date, city, street, zip_code, department_code)
VALUES
('Ali Farouk', 12000, '2015-09-01', 'Cairo', 'Garden Street', '11512', 'CSE'),
('Mona Youssef', 11500, '2016-03-15', 'Giza', 'Liberty St', '12522', 'IT'),
('Omar Adel', 13000, '2014-08-21', 'Alexandria', 'Sunset Rd', '21501', 'ENG'),
('Heba Khaled', 11800, '2017-01-10', 'Cairo', 'Nile St', '11766', 'IT'),
('Karim Samir', 11200, '2018-05-12', 'Giza', 'Pyramids Rd', '12612', 'IT'),
('Nada Fouad', 12500, '2013-11-03', 'Alexandria', 'Corniche St', '21533', 'ECE'),
('Yasser Magdy', 12000, '2016-07-19', 'Cairo', 'Heliopolis Ave', '11342', 'ECE'),
('Salma Farid', 12300, '2015-06-25', 'Giza', 'Faisal Ave', '12565', 'CSE'),
('Tamer Fathy', 11900, '2017-09-18', 'Cairo', 'Maadi Ave', '11432', 'CSE'),
('Dina Nabil', 12700, '2012-04-14', 'Tanta', 'Elbahr Rd', '31112', 'ENG'),
('Adel Hany', 12100, '2016-12-01', 'Mansoura', 'University Rd', '35517', 'ENG'),
('Farah Tarek', 11500, '2018-08-30', 'Cairo', 'Shobra Ave', '11673', 'MTH'),
('Hany Omar', 11850, '2017-03-21', 'Giza', 'Mohandessin Rd', '12412', 'MTH'),
('Maha Yasser', 12400, '2014-10-05', 'Alexandria', 'Stanley Rd', '21453', 'PHY'),
('Ramy Samir', 11950, '2016-02-17', 'Cairo', 'Zamalek Ave', '11212', 'PHY'),
('Samar Adel', 11600, '2017-09-10', 'Aswan', 'Corniche Rd', '81512', 'BIO'),
('Hossam Gamal', 11350, '2018-11-06', 'Luxor', 'Khaled Rd', '85952', 'BIO'),
('Laila Mohamed', 12000, '2015-01-12', 'Cairo', 'Ain Shams Ave', '11866', 'CHEM'),
('Tamer Ashraf', 11750, '2016-06-08', 'Giza', 'Haram Rd', '12522', 'CHEM'),
('Nour Saeed', 12200, '2014-05-22', 'Cairo', 'Garden City Rd', '11520', 'BUS')
;

-- UPDATE departments
-- SET head_id = CASE department_code
--     WHEN 'IT' THEN 2
--     WHEN 'ECE' THEN 1
--     WHEN 'CSE' THEN 2
--     WHEN 'ENG' THEN 3
--     WHEN 'MTH' THEN 4
--     WHEN 'PHY' THEN 5
--     WHEN 'BIO' THEN 6
--     WHEN 'CHEM' THEN 7
--     WHEN 'BUS' THEN 8
-- END;

UPDATE departments
SET head_id = 2
WHERE department_code = 'IT';

UPDATE departments
SET head_id = 1
WHERE department_code = 'ECE';

UPDATE departments
SET head_id = 2
WHERE department_code = 'CSE';

UPDATE departments
SET head_id = 3
WHERE department_code = 'ENG';

UPDATE departments
SET head_id = 4
WHERE department_code = 'MTH';

UPDATE departments
SET head_id = 5
WHERE department_code = 'PHY';

UPDATE departments
SET head_id = 6
WHERE department_code = 'BIO';

UPDATE departments
SET head_id = 7
WHERE department_code = 'CHEM';

UPDATE departments
SET head_id = 8
WHERE department_code = 'BUS'; 


INSERT INTO courses (course_code, course_title, credits, course_instructor, department_code)
VALUES
('MTH1', 'Math 1', 12, 1, 'MTH'),
('MTH2', 'Math 2', 12, 1, 'MTH'),
('PHY1', 'Physics 1', 10, 2, 'PHY'),
('PHY2', 'Physics 2', 10, 2, 'PHY'),
('CS101', 'Introduction to Programming', 15, 3, 'CSE'),
('CS102', 'Data Structures', 15, 3, 'CSE'),
('CS201', 'Database Systems', 14, 4, 'CSE'),
('CS202', 'Operating Systems', 14, 4, 'CSE'),
('ENG1', 'English 1', 8, 5, 'ENG'),
('ENG2', 'English 2', 8, 5, 'ENG'),
('IT101', 'Introduction to Information Technology', 12, 3, 'IT'),
('ECE101', 'Electronics Fundamentals', 12, 2, 'ECE'),
('CSE101', 'Computer Engineering Basics', 14, 4, 'CSE')
;

INSERT INTO course_prerequisites (course_code, prerequisite_code)

VALUES
("MTH2", "MTH1"),
("PHY2", "PHY1"),
("CS102", "CS101"),
("ENG2", "ENG1")
;


INSERT INTO instructors_phone_numbers (phone_number, instructor_id)
VALUES
('01010101001', 1),
('01010101002', 1),
('01020202001', 2),
('01030303001', 3),
('01030303002', 3),
('01030303003', 3),
('01040404001', 4),
('01050505001', 5),
('01050505002', 5),
('01060606001', 6),
('01070707001', 7),
('01070707002', 7),
('01080808001', 8),
('01090909001', 9),
('01090909002', 9),
('01101010101', 10),
('01111111101', 11),
('01111111102', 11),
('01121212101', 12),
('01131313101', 13),
('01131313102', 13),
('01141414101', 14),
('01151515101', 15),
('01151515102', 15),
('01151515103', 15),
('01161616101', 16),
('01171717101', 17),
('01181818101', 18),
('01191919101', 19),
('01191919102', 19),
('01202020201', 20)
;




INSERT INTO students (student_name, city, street, zip_code, student_department)
VALUES
('Ahmed Ali', 'Cairo', 'Tahrir St', '11511', 'CSE'),
('Sara Mohamed', 'Giza', 'Haram St', '12521', 'IT'),
('Omar Hassan', 'Alexandria', 'Sea Rd', '21500', 'ENG'),
('Mahmoud Hassan', 'Cairo', 'Nasr City', '11765', 'IT'),
('Laila Mostafa', 'Giza', 'Dokki St', '12611', 'IT'),
('Youssef Adel', 'Alexandria', 'Sidi Gaber', '21532', 'ECE'),
('Nourhan Samir', 'Cairo', 'Heliopolis', '11341', 'ECE'),
('Mazen Mohamed', 'Sharqia', 'Mesalamia', '12564', 'ECE'),
('Mona Khaled', 'Cairo', 'Maadi St', '11431', 'CSE'),
('Ahmed Samy', 'Tanta', 'Elbahr St', '31111', 'ENG'),
('Salma Hany', 'Mansoura', 'University St', '35516', 'ENG'),
('Omar Fathy', 'Cairo', 'Shobra', '11672', 'MTH'),
('Heba Ali', 'Giza', 'Mohandessin', '12411', 'MTH'),
('Mostafa Nabil', 'Alexandria', 'Stanley', '21452', 'PHY'),
('Aya Mahmoud', 'Cairo', 'Zamalek', '11211', 'PHY'),
('Hassan Yasser', 'Aswan', 'Corniche St', '81511', 'BIO'),
('Farah Gamal', 'Luxor', 'Khaled Ibn Elwalid', '85951', 'BIO'),
('Adel Mohamed', 'Cairo', 'Ain Shams', '11865', 'CHEM'),
('Dina Ashraf', 'Giza', 'Haram St', '12521', 'CHEM'),
('Tamer Saeed', 'Cairo', 'Garden City', '11519', 'BUS'),
('Rania Magdy', 'Giza', '6th October', '32311', 'BUS');
;

INSERT INTO students_phone_numbers (phone_number, student_id)
	VALUES

	('01210010001', 1),
	('01210010002', 1),
	('01220020001', 2),
	('01230030001', 3),
	('01230030002', 3),
	('01240040001', 4),
	('01250050001', 5),
	('01250050002', 5),
	('01260060001', 6),
	('01270070001', 7),
	('01270070002', 7),
	('01280080001', 8),
	('01290090001', 9),
	('01290090002', 9),
	('01300000001', 10),
	('01310010001', 11),
	('01310010002', 11),
	('01320020001', 12),
	('01330030001', 13),
	('01340040001', 14),
	('01340040002', 14),
	('01350050001', 15),
	('01360060001', 16),
	('01360060002', 16),
	('01370070001', 17),
	('01380080001', 18),
	('01390090001', 19),
	('01390090002', 19),
	('01400000001', 20)
;


INSERT INTO students_enrollment(student_id, course_code, enrollment_date, full_grade, student_final_grade)
VALUES
(1, 'CS101', '2023-01-15', 100, 92),
(1, 'MTH1', '2023-01-16', 100, 88),
(2, 'IT101', '2023-02-01', 100, 75),
(2, 'CS101', '2023-02-05', 100, 82),
(3, 'ENG1', '2023-01-20', 100, 90),
(3, 'PHY1', '2023-01-22', 100, 85),
(4, 'MTH1', '2023-01-25', 100, 78),
(4, 'CS102', '2023-01-28', 100, 81),
(5, 'IT101', '2023-02-02', 100, 88),
(5, 'MTH2', '2023-02-04', 100, 92),
(6, 'ECE101', '2023-01-18', 100, 84),
(6, 'PHY2', '2023-01-19', 100, 79),
(7, 'CS101', '2023-02-05', 100, 91),
(7, 'MTH1', '2023-02-06', 100, 87),
(8, 'CSE101', '2023-01-15', 100, 93),
(8, 'ENG2', '2023-01-16', 100, 89),
(9, 'ENG1', '2023-02-10', 100, 80),
(9, 'PHY1', '2023-02-12', 100, 84),
(10, 'MTH2', '2023-01-20', 100, 76),
(10, 'CS102', '2023-01-22', 100, 82),
(11, 'PHY1', '2023-01-18', 100, 88),
(11, 'ENG1', '2023-01-19', 100, 85),
(12, 'CS101', '2023-02-02', 100, 90),
(12, 'MTH1', '2023-02-04', 100, 86),
(13, 'IT101', '2023-01-25', 100, 83),
(13, 'ECE101', '2023-01-28', 100, 78),
(14, 'CSE101', '2023-02-01', 100, 91),
(14, 'PHY2', '2023-02-03', 100, 87),
(15, 'ENG2', '2023-01-15', 100, 82),
(15, 'MTH1', '2023-01-16', 100, 88)
;

INSERT INTO students_family_members(name, birthdate)
VALUES
('Hassan Ali', '1975-04-10'),
('Fatma Ali', '1978-08-21'),
('Mohamed Mohamed', '1980-02-12'),
('Amina Mohamed', '1982-09-05'),
('Adel Hassan', '1976-06-18'),
('Salma Hassan', '1980-12-11'),
('Tamer Samir', '1979-03-09'),
('Mona Samir', '1981-07-30'),
('Yasser Fouad', '1977-05-22'),
('Nada Fouad', '1979-11-14'),
('Salma Farid', '1982-01-01'),
('Mohamed Farid', '1979-02-02'),
('Ali Samir', '1975-06-06'),
('Heba Samir', '1978-08-08'),
('Omar Tarek', '1980-09-09'),
('Maha Tarek', '1982-12-12'),
('Fathy Ahmed', '1976-03-03'),
('Salma Ahmed', '1978-05-05')
;

INSERT INTO students_family_members_relations(member_id, student_id, relationship)
VALUES
(1, 1, 'Father'),
(2, 1, 'Mother'),
(1, 4, 'Father'),
(2, 4, 'Mother'),
(3, 2, 'Father'),
(4, 2, 'Mother'),
(5, 3, 'Father'),
(6, 3, 'Mother'),
(7, 5, 'Father'),
(8, 5, 'Mother'),
(9, 6, 'Father'),
(10, 6, 'Mother'),
(11, 7, 'Mother'),
(12, 7, 'Father'),
(13, 8, 'Father'),
(14, 8, 'Mother'),
(15, 9, 'Father'),
(16, 9, 'Mother'),
(17, 10, 'Father'),
(18, 10, 'Mother')
;