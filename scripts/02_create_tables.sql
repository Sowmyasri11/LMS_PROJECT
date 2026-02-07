CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    full_name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password_hash VARCHAR(255),
    role VARCHAR(50),
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE()
);


CREATE TABLE Courses (
    course_id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(255),
    description TEXT,
    category VARCHAR(100),
    level VARCHAR(50),
    created_by INT,
    created_at DATETIME DEFAULT GETDATE(),
    updated_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (created_by) REFERENCES Users(user_id)
);


CREATE TABLE Lessons (
    lesson_id INT IDENTITY(1,1) PRIMARY KEY,
    course_id INT,
    title VARCHAR(255),
    content TEXT,
    lesson_number INT,
    created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


CREATE TABLE Assessments (
    assessment_id INT IDENTITY(1,1) PRIMARY KEY,
    course_id INT,
    title VARCHAR(255),
    type VARCHAR(50),
    total_marks INT,
    created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


CREATE TABLE AssessmentSubmissions (
    submission_id INT IDENTITY(1,1) PRIMARY KEY,
    assessment_id INT,
    user_id INT,
    submitted_at DATETIME DEFAULT GETDATE(),
    obtained_marks INT,
    feedback TEXT,

    FOREIGN KEY (assessment_id) REFERENCES Assessments(assessment_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);


CREATE TABLE Enrollments (
    enrollment_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    course_id INT,
    enrollment_date DATETIME DEFAULT GETDATE(),
    status VARCHAR(50),

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


CREATE TABLE UserActivity (
    activity_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    lesson_id INT,
    activity_type VARCHAR(100),
    time_spent INT,
    created_at DATETIME DEFAULT GETDATE(),

    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (lesson_id) REFERENCES Lessons(lesson_id)
);
