-- Query 2: Add new seminar course, Speedrunning Business by Sheriff (IN08)

INSERT INTO Seminar (Seminar_id, Name, Description, fDate, Time, Fee, Instructor_id) VALUES
('SM11', 'Speedrunning Business',
	'Know how to cope in a fast-paced business environment',
	to_date('15-10-2022', 'DD-MM-YYYY'),
	to_date('5:00 PM', 'HH:MI AM'), 1290.00, 'IN08');
    


-- Try to see it
SELECT * FROM Seminar WHERE Seminar_id='SM11';