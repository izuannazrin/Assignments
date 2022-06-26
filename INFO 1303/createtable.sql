-- Table Participant
CREATE TABLE Participant
(
	Participant_id		char(5),
	fName			varchar2(50) NOT NULL,
	lName			varchar2(50),
	Email			varchar2(40),
	Telephone_no		char(20) NOT NULL,
	PRIMARY KEY (Participant_id)
);

-- Table Instructor
CREATE TABLE Instructor
(
	Instructor_id	char(5),
	Name			varchar2(100) NOT NULL,
	Telephone_no	varchar2(20) NOT NULL,
	Email		varchar2(40),
	Role			varchar2(30) NOT NULL,
	PRIMARY KEY (Instructor_id)
);

-- Table Seminar
CREATE TABLE Seminar
(
	Seminar_id	char(5),
	Name			Varchar2(50) NOT NULL,
	Description	Varchar2(200),
	fDate		Date NOT NULL,
	-- Column name Date conflicts with Oracle SQL
	Time			Date NOT NULL,
	Fee			float NOT NULL,
	Instructor_id	char(5) NOT NULL,
	PRIMARY KEY (Seminar_id),
	FOREIGN KEY (Instructor_id) REFERENCES Instructor(Instructor_id)
);

-- Table Booking
CREATE TABLE Booking
(
	Booking_no		char(5),
	Seminar_id		char(5) NOT NULL,
	Participant_id		char(5) NOT NULL,
	fDate			Date NOT NULL,
	Time				Date NOT NULL,
	PRIMARY KEY (Booking_no),
	FOREIGN KEY (Participant_id) REFERENCES Participant(Participant_id),
	FOREIGN KEY (Seminar_id) references Seminar(Seminar_id)
);

-- Table Payment
CREATE TABLE Payment
(
	Payment_id	char(5),
	Booking_no	char(5) NOT NULL,
	Date_paid		Date NOT NULL,
	Method		varchar2(10) NOT NULL,
	Amount_paid	float NOT NULL,
	PRIMARY KEY (Payment_id),
	FOREIGN  KEY (Booking_no) REFERENCES Booking(Booking_no)
);