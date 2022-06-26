-- Query 1: View for participant named Ahmed Kader to see seminars they have attended

SELECT Seminar.Name AS "Seminar Name", Seminar.Description AS "Description", Seminar.fDate AS "Date", TO_CHAR(Seminar.Time, 'HH:MI AM') AS "Time"
FROM Participant
INNER JOIN Booking ON Booking.Participant_id=Participant.Participant_id
INNER JOIN Seminar ON Seminar.Seminar_id=Booking.Seminar_id
WHERE Participant.fName = 'Ahmed' AND Participant.lName = 'Kader'
ORDER BY Seminar.fDate ASC;