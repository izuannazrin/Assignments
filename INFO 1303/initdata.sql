-- Clear any records in database (if there is any)
DELETE FROM Payment;
DELETE FROM Booking;
DELETE FROM Seminar;
DELETE FROM Instructor;
DELETE FROM Participant;


-- Test records

INSERT INTO Participant VALUES ('P001', 'Ismael', 'Barry', 'Ismael001@gmail.com', '+60182783838');
INSERT INTO Participant VALUES ('P002', 'Musa', 'Kouroma', 'Musa099@gmail.com', '+60182789444');
INSERT INTO Participant VALUES ('P003', 'Arif', 'Muhammad', 'Arifqlfy@gmail.com', '+60182477833');
INSERT INTO Participant VALUES ('P004', 'Mahanat', 'Saleh', 'Mahan457@gmail.com', '+60138872734');
INSERT INTO Participant VALUES ('P005', 'Muhammad', 'Ceesay', 'Muhammad211@gmail.com', '+60188377322');
INSERT INTO Participant VALUES ('P006', 'Shafiu', 'Sadry', 'Shafiullah@gmail.com', '+60189933244');
INSERT INTO Participant VALUES ('P007', 'Ashraf', 'Syaqawy', 'Ashraf123@gmail.com', '+60188326224');
INSERT INTO Participant VALUES ('P008', 'Ahmed', 'Kader', 'Ahmed008@gmail.com', '+60182783273');
INSERT INTO Participant VALUES ('P009', 'Fatima', 'Muhammed', 'Fatima001@gmail.com', '+60183339322');
INSERT INTO Participant VALUES ('P010', 'Binta', 'Jallow', 'Binta8983@gmail.com', '+60188383774');

INSERT INTO Instructor VALUES ('IN01', 'Dr. Samuel', '+60182783855', 'Samuel320@gmail.com', 'Skills Instructor');
INSERT INTO Instructor VALUES ('IN02', 'Mohammed', '+60184888933', 'Mohammed002@gmail.com', 'Adjunct Instructor');
INSERT INTO Instructor VALUES ('IN03', 'Dawud', '+60183337838', 'Dawud345@gmail.com', 'Online Course Instructor');
INSERT INTO Instructor VALUES ('IN04', 'Issa', '+60187038340', 'Issa8978@gmail.com', 'Online Course Instructor');
INSERT INTO Instructor VALUES ('IN05', 'Amin', '+60183394844', 'Amin337@gmail.com', 'Language Instructor');
INSERT INTO Instructor VALUES ('IN06', 'Zainab', '+60184747740', 'Zainab937@gmail.com', 'Seminar Instructor');
INSERT INTO Instructor VALUES ('IN07', 'Fatima', '+60184748841', 'Fatima@gmail.com', 'Seminar Instructor');
INSERT INTO Instructor VALUES ('IN08', 'Sheriff', '+60183884938', 'Sherifftraveller@gmail.com', 'Seminar Instructor');

INSERT INTO Seminar VALUES ('SM01', 'The Expert Conference', 'Experts sharing ideas', TO_DATE('20-06-2022', 'DD-MM-YYYY'), TO_DATE('9:00 AM', 'HH:MI AM'), 15.00, 'IN06');
INSERT INTO Seminar VALUES ('SM02', 'Diversity Conferences', 'Encouraging diversification within organizations', TO_DATE('21-06-2022', 'DD-MM-YYYY'), TO_DATE('3:00 PM', 'HH:MI AM'), 12.00, 'IN03');
INSERT INTO Seminar VALUES ('SM03', 'Leadership Levels', 'Improving on better leadership skills', TO_DATE('05-07-2022', 'DD-MM-YYYY'), TO_DATE('10:00 AM', 'HH:MI AM'), 40.00, 'IN07');
INSERT INTO Seminar VALUES ('SM04', 'Better Business', 'Creating innovative and disruptive business plans', TO_DATE('09-07-2022', 'DD-MM-YYYY'), TO_DATE('10:00 AM', 'HH:MI AM'), 19.00, 'IN01');
INSERT INTO Seminar VALUES ('SM05', 'The Scholar’s Conference', 'Inspirational speeches from great scholars', TO_DATE('01-08-2022', 'DD-MM-YYYY'), TO_DATE('5:00 PM', 'HH:MI AM'), 32.50, 'IN08');
INSERT INTO Seminar VALUES ('SM06', 'Business In Focus', 'Creating business minded youths within communities', TO_DATE('15-08-2022', 'DD-MM-YYYY'), TO_DATE('6:00 PM', 'HH:MI AM'), 25.50, 'IN01');
INSERT INTO Seminar VALUES ('SM07', 'Smart Sensors', 'Developing smart sensors that can meet the needs of modern generation programs', TO_DATE('08-09-2022', 'DD-MM-YYYY'), TO_DATE('6:00 PM', 'HH:MI AM'), 35.50, 'IN02');
INSERT INTO Seminar VALUES ('SM08', 'Java Ring', 'Discussing the Importance and evolution of java', TO_DATE('19-09-2022', 'DD-MM-YYYY'), TO_DATE('10:00 AM', 'HH:MI AM'), 29.00, 'IN02');
INSERT INTO Seminar VALUES ('SM09', 'Achieving The Vision', 'Setting and achieving visionary business goals', TO_DATE('21-09-2022', 'DD-MM-YYYY'), TO_DATE('10:00 AM', 'HH:MI AM'), 18.00, 'IN01');
INSERT INTO Seminar VALUES ('SM10', 'Company Dream', 'Developing Innovative business ideas and startups', TO_DATE('15-10-2022', 'DD-MM-YYYY'), TO_DATE('5:00 PM', 'HH:MI AM'), 10.00, 'IN01');

INSERT INTO Booking VALUES ('B001', 'SM01', 'P003', TO_DATE('13-06-2022', 'DD-MM-YYYY'), TO_DATE('5:36 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B002', 'SM02', 'P010', TO_DATE('14-06-2022', 'DD-MM-YYYY'), TO_DATE('7:53 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B003', 'SM02', 'P001', TO_DATE('15-06-2022', 'DD-MM-YYYY'), TO_DATE('9:02 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B004', 'SM01', 'P008', TO_DATE('15-06-2022', 'DD-MM-YYYY'), TO_DATE('9:50 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B005', 'SM01', 'P006', TO_DATE('15-06-2022', 'DD-MM-YYYY'), TO_DATE('4:36 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B006', 'SM01', 'P002', TO_DATE('16-06-2022', 'DD-MM-YYYY'), TO_DATE('11:22 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B007', 'SM01', 'P010', TO_DATE('17-06-2022', 'DD-MM-YYYY'), TO_DATE('11:40 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B008', 'SM02', 'P008', TO_DATE('17-06-2022', 'DD-MM-YYYY'), TO_DATE('1:55 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B009', 'SM01', 'P001', TO_DATE('18-06-2022', 'DD-MM-YYYY'), TO_DATE('9:23 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B010', 'SM02', 'P009', TO_DATE('20-06-2022', 'DD-MM-YYYY'), TO_DATE('3:29 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B011', 'SM02', 'P002', TO_DATE('20-06-2022', 'DD-MM-YYYY'), TO_DATE('11:05 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B012', 'SM03', 'P008', TO_DATE('28-06-2022', 'DD-MM-YYYY'), TO_DATE('9:21 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B013', 'SM03', 'P001', TO_DATE('02-07-2022', 'DD-MM-YYYY'), TO_DATE('12:02 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B014', 'SM04', 'P006', TO_DATE('02-07-2022', 'DD-MM-YYYY'), TO_DATE('12:19 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B015', 'SM03', 'P007', TO_DATE('02-07-2022', 'DD-MM-YYYY'), TO_DATE('5:16 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B016', 'SM03', 'P006', TO_DATE('03-07-2022', 'DD-MM-YYYY'), TO_DATE('10:12 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B017', 'SM03', 'P002', TO_DATE('04-07-2022', 'DD-MM-YYYY'), TO_DATE('5:16 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B018', 'SM03', 'P005', TO_DATE('04-07-2022', 'DD-MM-YYYY'), TO_DATE('11:01 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B019', 'SM04', 'P007', TO_DATE('05-07-2022', 'DD-MM-YYYY'), TO_DATE('11:23 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B020', 'SM04', 'P008', TO_DATE('06-07-2022', 'DD-MM-YYYY'), TO_DATE('2:00 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B021', 'SM04', 'P004', TO_DATE('06-07-2022', 'DD-MM-YYYY'), TO_DATE('10:39 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B022', 'SM04', 'P002', TO_DATE('07-07-2022', 'DD-MM-YYYY'), TO_DATE('4:45 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B023', 'SM04', 'P005', TO_DATE('08-07-2022', 'DD-MM-YYYY'), TO_DATE('1:14 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B024', 'SM04', 'P003', TO_DATE('08-07-2022', 'DD-MM-YYYY'), TO_DATE('10:14 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B025', 'SM05', 'P005', TO_DATE('27-07-2022', 'DD-MM-YYYY'), TO_DATE('3:15 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B026', 'SM05', 'P010', TO_DATE('27-07-2022', 'DD-MM-YYYY'), TO_DATE('5:24 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B027', 'SM05', 'P001', TO_DATE('27-07-2022', 'DD-MM-YYYY'), TO_DATE('8:12 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B028', 'SM05', 'P002', TO_DATE('27-07-2022', 'DD-MM-YYYY'), TO_DATE('11:42 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B029', 'SM05', 'P004', TO_DATE('29-07-2022', 'DD-MM-YYYY'), TO_DATE('1:48 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B030', 'SM05', 'P008', TO_DATE('30-07-2022', 'DD-MM-YYYY'), TO_DATE('4:56 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B031', 'SM06', 'P010', TO_DATE('10-08-2022', 'DD-MM-YYYY'), TO_DATE('12:48 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B032', 'SM06', 'P009', TO_DATE('11-08-2022', 'DD-MM-YYYY'), TO_DATE('2:41 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B033', 'SM06', 'P004', TO_DATE('12-08-2022', 'DD-MM-YYYY'), TO_DATE('6:43 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B034', 'SM06', 'P003', TO_DATE('14-08-2022', 'DD-MM-YYYY'), TO_DATE('4:20 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B035', 'SM07', 'P008', TO_DATE('01-09-2022', 'DD-MM-YYYY'), TO_DATE('7:25 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B036', 'SM07', 'P006', TO_DATE('02-09-2022', 'DD-MM-YYYY'), TO_DATE('2:32 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B037', 'SM07', 'P004', TO_DATE('04-09-2022', 'DD-MM-YYYY'), TO_DATE('3:44 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B038', 'SM07', 'P001', TO_DATE('06-09-2022', 'DD-MM-YYYY'), TO_DATE('7:41 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B039', 'SM07', 'P003', TO_DATE('06-09-2022', 'DD-MM-YYYY'), TO_DATE('10:29 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B040', 'SM07', 'P002', TO_DATE('07-09-2022', 'DD-MM-YYYY'), TO_DATE('11:57 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B041', 'SM07', 'P007', TO_DATE('07-09-2022', 'DD-MM-YYYY'), TO_DATE('6:36 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B042', 'SM08', 'P003', TO_DATE('12-09-2022', 'DD-MM-YYYY'), TO_DATE('5:43 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B043', 'SM08', 'P002', TO_DATE('14-09-2022', 'DD-MM-YYYY'), TO_DATE('8:55 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B044', 'SM09', 'P010', TO_DATE('15-09-2022', 'DD-MM-YYYY'), TO_DATE('1:44 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B045', 'SM09', 'P003', TO_DATE('15-09-2022', 'DD-MM-YYYY'), TO_DATE('7:57 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B046', 'SM08', 'P009', TO_DATE('16-09-2022', 'DD-MM-YYYY'), TO_DATE('9:35 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B047', 'SM08', 'P006', TO_DATE('16-09-2022', 'DD-MM-YYYY'), TO_DATE('8:19 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B048', 'SM09', 'P007', TO_DATE('17-09-2022', 'DD-MM-YYYY'), TO_DATE('8:57 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B049', 'SM08', 'P008', TO_DATE('18-09-2022', 'DD-MM-YYYY'), TO_DATE('10:27 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B050', 'SM09', 'P005', TO_DATE('18-09-2022', 'DD-MM-YYYY'), TO_DATE('10:50 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B051', 'SM08', 'P005', TO_DATE('18-09-2022', 'DD-MM-YYYY'), TO_DATE('4:19 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B052', 'SM09', 'P001', TO_DATE('20-09-2022', 'DD-MM-YYYY'), TO_DATE('12:02 PM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B053', 'SM10', 'P002', TO_DATE('13-10-2022', 'DD-MM-YYYY'), TO_DATE('10:47 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B054', 'SM10', 'P003', TO_DATE('13-10-2022', 'DD-MM-YYYY'), TO_DATE('10:55 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B055', 'SM10', 'P005', TO_DATE('13-10-2022', 'DD-MM-YYYY'), TO_DATE('11:34 AM', 'HH:MI AM'));
INSERT INTO Booking VALUES ('B056', 'SM10', 'P001', TO_DATE('15-10-2022', 'DD-MM-YYYY'), TO_DATE('2:23 PM', 'HH:MI AM'));

INSERT INTO Payment VALUES ('PM001', 'B001', TO_DATE('13-06-2022', 'DD-MM-YYYY'), 'Cash', 7.50);
INSERT INTO Payment VALUES ('PM002', 'B002', TO_DATE('14-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM003', 'B002', TO_DATE('14-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM004', 'B003', TO_DATE('15-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM005', 'B003', TO_DATE('15-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM006', 'B004', TO_DATE('15-06-2022', 'DD-MM-YYYY'), 'Cash', 15.00);
INSERT INTO Payment VALUES ('PM007', 'B005', TO_DATE('15-06-2022', 'DD-MM-YYYY'), 'Cash', 15.00);
INSERT INTO Payment VALUES ('PM008', 'B007', TO_DATE('17-06-2022', 'DD-MM-YYYY'), 'Online', 15.00);
INSERT INTO Payment VALUES ('PM009', 'B008', TO_DATE('17-06-2022', 'DD-MM-YYYY'), 'Cash', 6.00);
INSERT INTO Payment VALUES ('PM010', 'B008', TO_DATE('17-06-2022', 'DD-MM-YYYY'), 'Cash', 6.00);
INSERT INTO Payment VALUES ('PM011', 'B009', TO_DATE('18-06-2022', 'DD-MM-YYYY'), 'Online', 15.00);
INSERT INTO Payment VALUES ('PM012', 'B010', TO_DATE('20-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM013', 'B010', TO_DATE('20-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM014', 'B011', TO_DATE('20-06-2022', 'DD-MM-YYYY'), 'Online', 6.00);
INSERT INTO Payment VALUES ('PM015', 'B014', TO_DATE('02-07-2022', 'DD-MM-YYYY'), 'Cash', 19.00);
INSERT INTO Payment VALUES ('PM016', 'B016', TO_DATE('03-07-2022', 'DD-MM-YYYY'), 'Cash', 40.00);
INSERT INTO Payment VALUES ('PM017', 'B017', TO_DATE('04-07-2022', 'DD-MM-YYYY'), 'Online', 20.00);
INSERT INTO Payment VALUES ('PM018', 'B019', TO_DATE('05-07-2022', 'DD-MM-YYYY'), 'Online', 19.00);
INSERT INTO Payment VALUES ('PM019', 'B020', TO_DATE('06-07-2022', 'DD-MM-YYYY'), 'Online', 19.00);
INSERT INTO Payment VALUES ('PM020', 'B021', TO_DATE('06-07-2022', 'DD-MM-YYYY'), 'Online', 19.00);
INSERT INTO Payment VALUES ('PM021', 'B022', TO_DATE('07-07-2022', 'DD-MM-YYYY'), 'Online', 9.50);
INSERT INTO Payment VALUES ('PM022', 'B024', TO_DATE('08-07-2022', 'DD-MM-YYYY'), 'Cash', 19.00);
INSERT INTO Payment VALUES ('PM023', 'B025', TO_DATE('27-07-2022', 'DD-MM-YYYY'), 'Cash', 32.50);
INSERT INTO Payment VALUES ('PM024', 'B026', TO_DATE('27-07-2022', 'DD-MM-YYYY'), 'Online', 16.25);
INSERT INTO Payment VALUES ('PM025', 'B026', TO_DATE('27-07-2022', 'DD-MM-YYYY'), 'Online', 16.25);
INSERT INTO Payment VALUES ('PM026', 'B027', TO_DATE('27-07-2022', 'DD-MM-YYYY'), 'Cash', 16.25);
INSERT INTO Payment VALUES ('PM027', 'B029', TO_DATE('29-07-2022', 'DD-MM-YYYY'), 'Cash', 32.50);
INSERT INTO Payment VALUES ('PM028', 'B032', TO_DATE('11-08-2022', 'DD-MM-YYYY'), 'Cash', 12.75);
INSERT INTO Payment VALUES ('PM029', 'B033', TO_DATE('12-08-2022', 'DD-MM-YYYY'), 'Online', 12.75);
INSERT INTO Payment VALUES ('PM030', 'B033', TO_DATE('12-08-2022', 'DD-MM-YYYY'), 'Online', 12.75);
INSERT INTO Payment VALUES ('PM031', 'B035', TO_DATE('01-09-2022', 'DD-MM-YYYY'), 'Cash', 17.75);
INSERT INTO Payment VALUES ('PM032', 'B036', TO_DATE('02-09-2022', 'DD-MM-YYYY'), 'Online', 35.50);
INSERT INTO Payment VALUES ('PM033', 'B037', TO_DATE('04-09-2022', 'DD-MM-YYYY'), 'Cash', 17.75);
INSERT INTO Payment VALUES ('PM034', 'B037', TO_DATE('04-09-2022', 'DD-MM-YYYY'), 'Cash', 17.75);
INSERT INTO Payment VALUES ('PM035', 'B040', TO_DATE('07-09-2022', 'DD-MM-YYYY'), 'Online', 35.50);
INSERT INTO Payment VALUES ('PM036', 'B041', TO_DATE('07-09-2022', 'DD-MM-YYYY'), 'Cash', 17.75);
INSERT INTO Payment VALUES ('PM037', 'B042', TO_DATE('12-09-2022', 'DD-MM-YYYY'), 'Cash', 14.50);
INSERT INTO Payment VALUES ('PM038', 'B043', TO_DATE('14-09-2022', 'DD-MM-YYYY'), 'Cash', 14.50);
INSERT INTO Payment VALUES ('PM039', 'B043', TO_DATE('14-09-2022', 'DD-MM-YYYY'), 'Cash', 14.50);
INSERT INTO Payment VALUES ('PM040', 'B044', TO_DATE('15-09-2022', 'DD-MM-YYYY'), 'Online', 18.00);
INSERT INTO Payment VALUES ('PM041', 'B045', TO_DATE('15-09-2022', 'DD-MM-YYYY'), 'Cash', 9.00);
INSERT INTO Payment VALUES ('PM042', 'B046', TO_DATE('16-09-2022', 'DD-MM-YYYY'), 'Online', 14.50);
INSERT INTO Payment VALUES ('PM043', 'B046', TO_DATE('16-09-2022', 'DD-MM-YYYY'), 'Online', 14.50);
INSERT INTO Payment VALUES ('PM044', 'B047', TO_DATE('16-09-2022', 'DD-MM-YYYY'), 'Cash', 29.00);
INSERT INTO Payment VALUES ('PM045', 'B048', TO_DATE('17-09-2022', 'DD-MM-YYYY'), 'Cash', 18.00);
INSERT INTO Payment VALUES ('PM046', 'B051', TO_DATE('18-09-2022', 'DD-MM-YYYY'), 'Cash', 14.50);
INSERT INTO Payment VALUES ('PM047', 'B052', TO_DATE('20-09-2022', 'DD-MM-YYYY'), 'Cash', 18.00);
INSERT INTO Payment VALUES ('PM048', 'B056', TO_DATE('15-10-2022', 'DD-MM-YYYY'), 'Cash', 10.00);


COMMIT;