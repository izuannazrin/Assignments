-- Query 1: Add new participant, Leigh Ma

INSERT INTO Participant (Participant_id, fName, lName, Email, Telephone_no) VALUES
('P011', 'Leigh', 'Ma', 'ma.leigh@live.com', '+60194435534');



-- Try to see it
SELECT * FROM Participant WHERE Participant_id='P011';