-- Assignment 6 - Self-Joins
-- Corey Chu

-- Please create an organization chart for a real or imagined organization,
-- implemented in a single SQL table. Your deliverable script should:

/* I opted to use my own data for this assignment. */

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
('David Giles', NULL, 'Senior Vice President, USA/SYFY Research')
, ('Tracy Pruzan-Roy', 1, 'Vice President, USA Program & Digital Research')
, ('Loretta Ho', 2, 'Senior Director, USA Digital Research')
, ('Corey Chu', 2, 'Director, USA Program Research')
, ('Anna Aupperle', 4, 'Senior Analyst, USA Program & Digital Research')
, ('Alisha Sahay', 4, 'Intern, USA/SYFY Program & Digital Research')
, ('Ted A\'Zary', 1, 'Senior Vice President, SYFY Program & Digital Research')
, ('Neha Parikh', 7, 'Director, SYFY Program & Digital Research')
, ('Karl Schleider', 8, 'Manager, SYFY Program Research')
, ('Irene Yoo', 8, 'Analyst, SYFY Program & Digital Research')
, ('Cindy Wiegand', 1, 'Vice President, USA/SYFY Primary Research')
, ('Olivia Muller', 11, 'Director, USA/SYFY Primary Research')
, ('Joanna Champion', 12, 'Senior Manager, USA/SYFY Primary Research')
, ('Kathy Lanser', 13, 'Senior Analyst, USA/SYFY Primary Research');


-- 3. Provide a single SELECT statement that displays the information in
-- the table, showing who reports to whom.

SELECT a.id AS ID, a.Name, a.Title, b.name AS Supervisor
FROM Research a
LEFT JOIN Research b
ON a.Supervisor = b.id;