-- Query 3: Change B010 booking date to 21th October

UPDATE Booking
SET fDate=to_date('21-10-2022', 'DD-MM-YYYY')
WHERE Booking_no='B010';



-- Try to see it
SELECT * FROM Booking WHERE Booking_no='B010';