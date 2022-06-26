-- Query 2: View for Operational Manager to see all bookings grouped by courses

SELECT Seminar.Name AS "Seminar Name", COUNT(Booking.Booking_no) AS "Number of bookings"
FROM Seminar
LEFT JOIN Booking ON Booking.Seminar_id=Seminar.Seminar_id
GROUP BY Seminar.Name;