---students
INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1907026, 'Omar Bin Sariffuzzaman', 'Computer Science', '3rd', '1234567890', 'AEH', 410);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1901010, 'AL Mamun', 'Electrical Engineering', '3rd', '9876543210', 'BSMRH', 201);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1907027, 'Sadia Islam', 'Mechanical Engineering', '3rd', '5555555555', 'Rokeya Hall', 1008);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1903056, 'Mushfiq Rahman', 'Chemichal Engineering', '3rd', '1112223334', 'LSH', 102);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1900655, 'Suvojit', 'Mechanical Engineering', '3rd', '5556667778', 'AEH', 410);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1902455, 'Abdullah Ahsun', 'Civil Engineering', '3rd', '9998887776', 'AEH', 407);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1901575, 'Ayon Mukherjee', 'Textile Engineering', '3rd', '4443332221', 'FHH', 302);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1913358, 'Sharira Shuvo', 'Computer Science', '3rd', '7778889990', 'KJAH', 201);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1902545, 'Muhstain Ahmed', 'Leather Engineering', '3rd', '6665554443', 'RHH', 301);

INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1905688, 'Towfiq Tonmoy', 'Mechanical Engineering', '3rd', '2223334445', 'FHH', 410);










---hostels
INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('AEH', 80, 300, 'Ariful Islam');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('FHH', 40, 150, 'Somnath Sommadar');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('BSMRH', 100, 600, 'Almagir Hossen');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('Rokeya Hall', 95, 700, 'Rokeya Islam');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('LSH', 45, 170, 'Lalon Shah');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('RHH', 25, 100, 'MR Rashid');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('KJAH', 60, 120, 'Jahan Ali');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('JMH', 40, 160, 'Jashim Uddin');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('SFKH', 55, 210, 'Sufiya Kamal');

INSERT INTO Hostels (hostel_name, no_of_rooms, no_of_students, provost_name)
VALUES ('JGH', 30, 120, 'Joggo Nath');













---rooms

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('AEH', 410, 4);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('AEH', 407, 5);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('FHH', 302 , 6);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('FHH', 410 , 5);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('BSMRH', 201, 4);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('BSMRH', 302, 4);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('Rokeya Hall', 1008, 4);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('RHH', 301, 5);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('LSH', 102, 4);

INSERT INTO Rooms (hostel_name, room_no, capacity)
VALUES ('KJAH', 201, 6);
















---Staff
INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (1, 'MD Asif', '1234567890', 'Warden', 'AEH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (2, 'MD Karim', '9876543210', 'Assistant Warden', 'FHH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (3, 'MD Rahim', '5555555555', 'Caretaker', 'BSMRH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (4, 'Dev Shah', '1112223334', 'Security Officer', 'Rokeya Hall');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (5, 'Apu Das', '5556667778', 'Maintenance Supervisor', 'LSH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (6, 'pallob Khan', '9998887776', 'Housekeeping Supervisor', 'RHH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (7, 'Ayan Islam', '4443332221', 'Warden', 'KJAH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (8, 'Ahsun Islam', '7778889990', 'Assistant Warden', 'JMH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (9, 'Al Mamun', '6665554443', 'Caretaker', 'SFKH');

INSERT INTO Staffs (staff_id, staff_name, phone_no, job_title, hostel_name)
VALUES (10, 'Jibon Shah', '2223334445', 'Security Officer', 'JGH');




















-- select operation

select * from Students where Hostel_name='AEH';


--update row
update Students set room_no=407 where roll=1907026;

--add row then delete
INSERT INTO Students (roll, student_name, department, year, phone_no, hostel_name, room_no)
VALUES (1902575, 'Omar', 'Computer Science', '3rd', '1234567890', 'AEH', 410);
--delete
delete from Students where roll=1902575;


---union
select Hostel_name from Hostels where Hostel_name like 'S%' union select hostel_name from Hostels where hostel_name like '%H%';


-- with clause
with max_no_of_student(val) as (select max(no_of_students) from Hostels)
select * from Hostels,max_no_of_student where Hostels.no_of_students=max_no_of_student.val;


--aggregate function
--count row
select count(*) from Students;

-- give name 
select count(Department) as number_of_dept from Students;

-- distinct
select count(distinct Department) as number_of_dept from Students;


-- average and summation
select avg(no_of_students) from Hostels;
select sum(no_of_students) from Hostels;

--maximum and minimum
select max(capacity) from rooms;
select min(no_of_students) from Hostels;



-- group by
select hostel_name,avg(no_of_students) from Hostels group by hostel_name;


--- having
select hostel_name,avg(no_of_students) from Hostels group by hostel_name having avg(no_of_students)>300;


--nested subquery



---Set membership
select * from Students where hostel_name='AEH' and roll in (select roll from Students where department like '%Computer Science%');


--- some and all
select * from Hostels where no_of_rooms > some(select no_of_rooms from Hostels where no_of_rooms>45);
select * from Hostels where no_of_rooms> all(select no_of_rooms from Hostels where no_of_rooms>=50);


--- exists
select * from Hostels where no_of_rooms>=60 and exists(select * from Students where Department like '%Mechanical Engineering%');


--- string
-- first
select *from Students where department like 'C%';
-- ending
select *from Students where department like '%g';

-- contains 'om'
select *from Students where department like '%o%m%';


-- any string of three characters
SELECT * FROM Hostels WHERE hostel_name LIKE '___';


-- three four or five
SELECT * FROM Hostels WHERE hostel_name LIKE '___' or hostel_name LIKE '____' or hostel_name LIKE '_____';


--- natural join
select * from Students natural join Hostels where hostel_name='AEH';
select * from Students natural join Hostels;


select student_name,provost_name from Students join Hostels using(hostel_name);
select student_name,provost_name from Students join Hostels on Students.hostel_name=Hostels.hostel_name;



--- outer
select student_name,provost_name from Students left outer join Hostels using(hostel_name);
select student_name,provost_name from Students right outer join Hostels using(hostel_name);
select student_name,provost_name from Students full outer join Hostels using(hostel_name);
select student_name,provost_name from Students left outer join Hostels on Students.hostel_name=Hostels.hostel_name;




---view
create view Staff_details as select phone_no,staff_name from Staffs;



create view ROLL_HOSTEL_PROVOST as select roll from Students where hostel_name=(select hostel_name from Hostels where hostel_name='AEH');















