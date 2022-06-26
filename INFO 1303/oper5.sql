-- Query 5: List participants who made booking outside office hours (9.00am - 5.00pm)

SELECT Participant.fName || ' ' || Participant.lName AS name, Seminar.Name AS seminarname, Booking.fDate, TO_CHAR(Booking.Time, 'HH:MI AM') AS time
FROM Participant
INNER JOIN Booking ON Booking.Participant_id=Participant.Participant_id
INNER JOIN Seminar ON Seminar.Seminar_id=Booking.Seminar_id
WHERE Booking.Time <= TO_DATE('9:00 AM', 'HH:MI AM')
OR Booking.Time >= TO_DATE('5:00 PM', 'HH:MI AM');