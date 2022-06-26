-- Query 2: List all participant names attending a seminar course, The Scholar’s Conference

SELECT CONCAT(Participant.fName, CONCAT(' ', Participant.lName)) AS name
FROM Participant
INNER JOIN Booking ON Booking.Participant_id=Participant.Participant_id
INNER JOIN Seminar ON Booking.Seminar_id=Seminar.Seminar_id
WHERE Seminar.Seminar_id='SM05';