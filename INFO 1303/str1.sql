-- Query 1: List all participants that have yet made any payment, either attended or not attended a seminar

SELECT fName || ' ' || lName AS name FROM Participant
LEFT JOIN Booking ON Booking.Participant_id=Participant.Participant_id
LEFT JOIN Payment ON Payment.Booking_no=Booking.Booking_no
WHERE Payment.Booking_no IS NULL;