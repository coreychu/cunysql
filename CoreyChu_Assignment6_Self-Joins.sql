-- Assignment 6 - Self-Joins
-- Corey Chu

-- Please create an organization chart for a real or imagined organization,
-- implemented in a single SQL table. Your deliverable script should:

/* I opted to use my own data for this assignment.*/

-- 1. Create the table. Each row should minimally include the person’s name,
-- the person’s supervisor, and the person’s job title. Using ID columns is
-- encouraged.

DROP TABLE IF EXISTS Research;
CREATE TABLE Research
(id INT AUTO_INCREMENT PRIMARY KEY NOT NULL
, Name VARCHAR(50) NOT NULL
, Supervisor VARCHAR(50) NULL
, Title VARCHAR(100) NOT NULL
);

-- 2. Populate the table with a few sample rows.
INSERT INTO Research (Name, Supervisor, Title) 
VALUES
('David G.', NULL, 'Senior Vice President')
, ('Tracy P.', 1, 'Vice President')
, ('Loretta H.', 2, 'Senior Director')
, ('Corey C.', 2, 'Director')
, ('Anna A.', 4, 'Senior Analyst')
, ('Alisha S.', 4, 'Intern')
, ('Ted A.', 1, 'Senior Vice President')
, ('Neha P.', 7, 'Director')
, ('Karl S.', 8, 'Manager')
, ('Irene Y.', 8, 'Analyst')
, ('Cindy W.', 1, 'Vice President')
, ('Olivia M.', 11, 'Director')
, ('Joanna C.', 12, 'Senior Manager')
, ('Kathy L.', 13, 'Senior Analyst');


-- 3. Provide a single SELECT statement that displays the information in
-- the table, showing who reports to whom.

SELECT a.id AS ID, a.Name, a.Title, b.name AS Supervisor
FROM Research a
LEFT JOIN Research b
ON a.Supervisor = b.id;