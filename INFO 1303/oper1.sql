-- Query 1: List all instructors that have organised any seminar

SELECT Instructor.Name FROM Instructor
INNER JOIN Seminar ON Seminar.Instructor_id=Instructor.Instructor_id
GROUP BY Instructor.Name;