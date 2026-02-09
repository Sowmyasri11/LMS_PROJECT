
-- Insert sample data into Users table

INSERT INTO Users (full_name, email, password_hash, role)
VALUES
('Sowmya Sri', 'sowmya.sri@gmail.com', 'hash_001', 'student'),
('Deva Kumar', 'deva.kumar@gmail.com', 'hash_002', 'admin'),
('Sujii Dasari', 'sujii.dasari@gmail.com', 'hash_003', 'student'),
('Arjun Reddy', 'arjun.reddy@gmail.com', 'hash_004', 'instructor'),
('Priya Sharma', 'priya.sharma@gmail.com', 'hash_005', 'student'),
('Rahul Mehta', 'rahul.mehta@gmail.com', 'hash_006', 'instructor'),
('Kavya Varma', 'kavya.varma@gmail.com', 'hash_007', 'student'),
('Vikram Singh', 'vikram.singh@gmail.com', 'hash_008', 'admin');

-- Insert sample data into Courses table

INSERT INTO Courses (title, description, category, level, created_by)
VALUES
('Python Basics', 'Introduction to Python programming.', 'Programming', 'Beginner', 4),
('Advanced Python', 'Deep dive into Python advanced topics.', 'Programming', 'Advanced', 6),
('Web Development Fundamentals', 'Basics of HTML, CSS, and JS.', 'Web Development', 'Beginner', 4),
('Data Structures in Java', 'Understanding data structures using Java.', 'Programming', 'Intermediate', 6),
('Machine Learning Intro', 'Basic ML concepts and algorithms.', 'AI/ML', 'Beginner', 4),
('Database Management Systems', 'SQL fundamentals and queries.', 'Database', 'Beginner', 6),
('Cloud Computing Essentials', 'Intro to cloud technologies.', 'Cloud', 'Beginner', 4),
('UI/UX Design Principles', 'Foundations of UI/UX design.', 'Design', 'Intermediate', 6);


-- Insert sample data into Lessons table
INSERT INTO Lessons (course_id, title, content, lesson_number)
VALUES
(1, 'Introduction to Python', 'Python history, installation, basics.', 1),
(1, 'Variables & Data Types', 'Understanding variables in Python.', 2),
(2, 'Decorators in Python', 'Advanced decorator usage.', 1),
(3, 'HTML Basics', 'Structure of web pages.', 1),
(4, 'Arrays in Java', 'Java array handling.', 1),
(5, 'Supervised Learning', 'Introduction to supervised ML.', 1),
(6, 'Writing SQL Queries', 'Basic CRUD operations.', 1),
(7, 'Cloud Models', 'IaaS, PaaS, SaaS explained.', 1);




-- Insert sample data into Assesments table

INSERT INTO Assessments (course_id, title, type, total_marks)
VALUES
(1, 'Python Basics Quiz', 'Quiz', 20),
(2, 'Advanced Python Coding Test', 'Coding', 50),
(3, 'HTML/CSS Mini Test', 'Quiz', 15),
(4, 'Java DS Assignment', 'Assignment', 40),
(5, 'ML Concepts Test', 'Quiz', 30),
(6, 'SQL Query Test', 'Coding', 25),
(7, 'Cloud Models MCQ', 'Quiz', 20),
(8, 'UI/UX Design Case Study', 'Assignment', 50);


-- Insert sample data into AssessmentSubmissions table
INSERT INTO AssessmentSubmissions (assessment_id, user_id, obtained_marks, feedback)
VALUES
(1, 1, 18, 'Good understanding of basics.'),
(2, 3, 42, 'Strong coding abilities.'),
(3, 5, 12, 'Needs improvement in CSS.'),
(4, 7, 35, 'Well written assignment.'),
(5, 1, 28, 'Excellent conceptual clarity.'),
(6, 3, 21, 'Great SQL knowledge.'),
(7, 5, 19, 'Good performance.'),
(8, 7, 47, 'Outstanding UI/UX insights.');


-- Insert sample data into Enrollments table

INSERT INTO Enrollments (user_id, course_id, status)
VALUES
(1, 1, 'active'),
(3, 1, 'active'),
(5, 3, 'completed'),
(7, 4, 'active'),
(1, 5, 'active'),
(3, 6, 'completed'),
(5, 7, 'active'),
(7, 8, 'active');


-- Insert sample data into UserActivity table
INSERT INTO UserActivity (user_id, lesson_id, activity_type, time_spent)
VALUES
(1, 1, 'lesson_view', 15),
(3, 2, 'lesson_view', 20),
(5, 3, 'quiz_attempt', 12),
(7, 4, 'lesson_view', 18),
(1, 5, 'video_watch', 25),
(3, 6, 'lesson_view', 30),
(5, 7, 'lesson_view', 22),
(7, 8, 'quiz_attempt', 16);



