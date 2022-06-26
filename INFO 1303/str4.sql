-- Query 4: List all instructors sorted by their roles

SELECT Name AS "Instructor Name", Role AS "Role"
FROM Instructor
ORDER BY Role;