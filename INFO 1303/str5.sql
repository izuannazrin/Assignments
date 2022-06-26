-- Query 5: Determine whether participants prefer Online or Cash transactions, by counting how many use either of them.

SELECT Payment.Method AS "Payment Method", COUNT(DISTINCT Participant.Participant_id) AS "Number of participant"
FROM Payment
INNER JOIN Booking ON Booking.Booking_no=Payment.Booking_no
INNER JOIN Participant ON Participant.Participant_id=Booking.Participant_id
GROUP BY Payment.Method;