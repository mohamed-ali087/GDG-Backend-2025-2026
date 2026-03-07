CREATE DATABASE college_db;
USE college_db;


CREATE TABLE departments(
	department_code VARCHAR(100) NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    building_location VARCHAR(100),
    head_id INT # DEFAULT NULL

);

CREATE TABLE instructors(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DOUBLE,
    hire_date DATE,
    city VARCHAR(100),
    street VARCHAR(100),
    zip_code VARCHAR(100),
    department_code VARCHAR(100),
    
    CONSTRAINT
		FOREIGN KEY(department_code) 
        REFERENCES departments(department_code) 
        ON DELETE SET NULL 
        ON UPDATE CASCADE
    );
	
ALTER TABLE departments
ADD CONSTRAINT fk_head
		FOREIGN KEY (head_id)
		REFERENCES instructors(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE 
;
	
	CREATE TABLE instructors_phone_numbers (
    phone_number VARCHAR(20) PRIMARY KEY,
    instructor_id INT,
    CONSTRAINT fk_instructor_phone
        FOREIGN KEY (instructor_id)
        REFERENCES instructors(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);




ALTER TABLE departments
ADD CONSTRAINT fk_department_head
FOREIGN KEY (head_id)
REFERENCES instructors(id)
ON DELETE SET NULL
ON UPDATE CASCADE;


CREATE TABLE courses (
    course_code VARCHAR(10) PRIMARY KEY,
    course_title VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    course_instructor INT,
    department_codedepartment_code VARCHAR(100),
    
	FOREIGN KEY (course_instructor)
        REFERENCES instructors(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
        ,
        
	FOREIGN KEY (department_code)
		REFERENCES departments(department_code)
);


CREATE TABLE course_prerequisites (
    course_code VARCHAR(10),
    prerequisite_code VARCHAR(10),
    PRIMARY KEY (course_code, prerequisite_code),
    CONSTRAINT fk_course
        FOREIGN KEY (course_code)
        REFERENCES courses(course_code)
        ON DELETE CASCADE,
    CONSTRAINT fk_prerequisite
        FOREIGN KEY (prerequisite_code)
        REFERENCES courses(course_code)
        ON DELETE CASCADE
);


CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    # age INT CHECK (age >= 17),
    city VARCHAR(100),
    street VARCHAR(100),
    zip_code VARCHAR(20),
    student_department VARCHAR(100),
	FOREIGN KEY (student_department)
        REFERENCES departments(department_code)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);


CREATE TABLE students_phone_numbers (
    phone_number VARCHAR(20) PRIMARY KEY,
    student_id INT,
    CONSTRAINT fk_student_phone
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE students_enrollment (
    student_id INT,
    course_code VARCHAR(10),
    enrollment_date DATE,
    full_grade DECIMAL(5,2),
    student_final_grade DECIMAL(5,2),
    
    PRIMARY KEY (student_id, course_code),
    
    CONSTRAINT fk_enrollment_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
        ,
        
    CONSTRAINT fk_enrollment_course
        FOREIGN KEY (course_code)
        REFERENCES courses(course_code)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE students_family_members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    birthdate DATE
);

CREATE TABLE students_family_members_relations (

    member_id INT,
    student_id INT,
    relationship VARCHAR(50),
    
    PRIMARY KEY (member_id, student_id),
    
    CONSTRAINT fk_family_member
		FOREIGN KEY (member_id)
		REFERENCES students_family_members(member_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
        
		,
 
    CONSTRAINT fk_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);