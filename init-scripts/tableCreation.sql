CREATE TABLE quiz (
                      quiz_id INT PRIMARY KEY,
                      title VARCHAR(255),
                      description TEXT,
                      created_at DATETIME,
    -- Add additional metadata columns as needed
    -- For example:
                      metadata1 VARCHAR(50),
                      metadata2 INT,
                      metadata3 TEXT
);

CREATE TABLE question (
                          question_id INT PRIMARY KEY,
                          quiz_id INT,
                          question_text TEXT,
                          option_a VARCHAR(255),
                          option_b VARCHAR(255),
                          option_c VARCHAR(255),
                          option_d VARCHAR(255),
                          correct_option CHAR(1),
                          FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id)
);

-- Inserting a Quiz with ID 1
INSERT INTO quiz (quiz_id, title, description, created_at)
VALUES (1, 'Sample Quiz 1', 'This is the description of Sample Quiz 1.', '2024-01-22 12:00:00');

-- Inserting a Quiz with ID 2
INSERT INTO quiz (quiz_id, title, description, created_at)
VALUES (2, 'Sample Quiz 2', 'Description for Sample Quiz 2.', '2024-01-22 13:30:00');

-- Inserting a Quiz with ID 3 and additional metadata
INSERT INTO quiz (quiz_id, title, description, created_at, metadata1, metadata2)
VALUES (3, 'Sample Quiz 3', 'Description for Sample Quiz 3.', '2024-01-22 15:45:00', 'Extra Metadata 1', 42);

-- You can add more INSERT statements as needed for other quizzes

-- Inserting a Question for Quiz ID 1
INSERT INTO question (question_id, quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES (1, 1, 'What is the capital of France?', 'Paris', 'Berlin', 'London', 'Madrid', 'A');

-- Inserting a Question for Quiz ID 1
INSERT INTO question (question_id, quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES (2, 1, 'Which planet is known as the Red Planet?', 'Mars', 'Venus', 'Jupiter', 'Saturn', 'A');

-- Inserting a Question for Quiz ID 2
INSERT INTO question (question_id, quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES (3, 2, 'What is the capital of Japan?', 'Beijing', 'Seoul', 'Tokyo', 'Bangkok', 'C');

-- Inserting a Question for Quiz ID 3
INSERT INTO question (question_id, quiz_id, question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES (4, 3, 'Which programming language is known for its flexibility and ease of use?', 'C++', 'Java', 'Python', 'Ruby', 'C');

-- You can add more INSERT statements as needed for other questions
