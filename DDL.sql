CREATE TABLE Hostels (
    hostel_name VARCHAR(50),
    no_of_rooms INT,
    no_of_students INT,
    provost_name VARCHAR(50),
    PRIMARY KEY(hostel_name)
);


CREATE TABLE Rooms (
    room_no INT,
    hostel_name VARCHAR(50),
    capacity INT,
    PRIMARY KEY (room_no, hostel_name),
    FOREIGN KEY (hostel_name) REFERENCES Hostels(hostel_name)
);




CREATE TABLE Staffs (
    staff_id INT PRIMARY KEY,
    staff_name VARCHAR(50),
    phone_no VARCHAR(20),
    job_title VARCHAR(50),
    hostel_name VARCHAR(50),
    FOREIGN KEY (hostel_name) REFERENCES Hostels(hostel_name)
);




CREATE TABLE Students (
    roll INT PRIMARY KEY,
    student_name VARCHAR(50),
    department VARCHAR(50),
    year VARCHAR(10),
    phone_no VARCHAR(20),
    hostel_name VARCHAR(50),
    room_no INT,
    FOREIGN KEY (hostel_name) REFERENCES Hostels(hostel_name),
    FOREIGN KEY (room_no, hostel_name) REFERENCES Rooms(room_no, hostel_name)
);
















-- add column to the table 
alter table Staffs add Age INT;



--  modify column
alter table Staffs modify Age varchar(23);

-- rename column name
alter table Staffs rename column AGE to AGEE;



-- drop column
alter table Staffs drop column AGEE;


































