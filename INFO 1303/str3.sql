-- Query 3: List participants who made a booking that costs more than RM20.00. Sort the list in descending order.

SELECT fName || ' ' || lName AS name, Seminar.Fee FROM Participant
INNER JOIN Booking ON Booking.Participant_id=Participant.Participant_id
INNER JOIN Seminar ON Seminar.Seminar_id=Booking.Seminar_id
WHERE Seminar.Fee > 20.00
ORDER BY Seminar.Fee DESC;