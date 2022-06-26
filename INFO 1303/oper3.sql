-- Query 3: Remove all records related to Dr. Samuel

DELETE FROM (SELECT Payment.* FROM Payment, Booking, Seminar, Instructor
WHERE Instructor.Instructor_id='IN01'
AND Seminar.Instructor_id=Instructor.Instructor_id
AND Booking.Seminar_id=Seminar.Seminar_id
AND Payment.Booking_no=Booking.Booking_no
);
DELETE FROM (SELECT Booking.* FROM Booking, Seminar, Instructor
WHERE Instructor.Instructor_id='IN01'
AND Seminar.Instructor_id=Instructor.Instructor_id
AND Booking.Seminar_id=Seminar.Seminar_id
);
DELETE FROM (SELECT Seminar.* FROM Seminar, Instructor
WHERE Instructor.Instructor_id='IN01'
AND Seminar.Instructor_id=Instructor.Instructor_id
);
DELETE FROM (SELECT Instructor.* FROM Instructor
WHERE Instructor.Instructor_id='IN01'
);



-- Try to see it
SELECT * FROM Instructor WHERE Instructor_id='IN01';