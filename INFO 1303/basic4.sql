-- Query 4: Delete a seminar course, Company Dream

DELETE FROM Seminar WHERE Seminar_id='SM10';
-- Should fail, there is other table (Booking and Payment) referencing this



-- Try to see it
SELECT * FROM Seminar WHERE Seminar_id='SM10';