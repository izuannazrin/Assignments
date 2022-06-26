-- Query 3: View for Top Management to see all instructors number of courses and gross revenue they have made

SELECT Instructor.Name AS "Instructor Name", COUNT(DISTINCT Seminar.Seminar_id) AS "Number of seminar courses", SUM(Payment.Amount_paid) AS "Gross revenue"
FROM Instructor
LEFT JOIN Seminar ON Seminar.Instructor_id=Instructor.Instructor_id
LEFT JOIN Booking ON Booking.Seminar_id=Seminar.Seminar_id
LEFT JOIN Payment ON Payment.Booking_no=Booking.Booking_no
GROUP BY Instructor.Name;