---PL/SQL variable declaration and print value

set serveroutput on
declare 
department Students.department%type;
roll Students.roll%type;
student_name Students.student_name%type;
hostel_name Students.hostel_name%type;
room_no Students.room_no%type;
begin
select department,roll,student_name,hostel_name,room_no INTO department, roll, student_name, hostel_name, room_no FROM Students WHERE hostel_name = 'Rokeya Hall';
  
dbms_output.put_line('DEPT_NAME: '||department|| ' roll : '||roll || ' student_name: '||student_name || 'hostel_name '||hostel_name|| 'room_no: '||room_no);
end;
/


---Insert and set default value
set serveroutput on
declare 
department Students.department%type:='MME';
roll Students.roll%type:='1904876';
student_name Students.student_name%type:='Antu';
hostel_name Students.hostel_name%type:='FHH';
room_no Students.room_no%type:=302;
year Students.year%type:='3rd';
phone_no Students.phone_no%type:='15545888';
begin
insert into Students values(roll,student_name,department,year,phone_no,hostel_name,room_no);
end;
/



--- row type
set serveroutput on
declare 
Students_row Students%rowtype;
begin
select department,student_name,room_no into Students_row.department,Students_row.student_name,Students_row.room_no from Students where student_name='Antu';
end;
/



--- cursor and row count
set serveroutput on
declare 
cursor s_cursor is select * from Students;
Students_row Students%rowtype;
begin
open s_cursor;
FETCH s_cursor INTO Students_row;
while s_cursor%found loop
dbms_output.put_line('DEPT : '||Students_row.department|| ' Student_name: '||Students_row.student_name || ' Room_no : ' ||Students_row.room_no);
dbms_output.put_line('Row count: '|| S_cursor%rowcount);
FETCH s_cursor INTO Students_row;
end loop;
close s_cursor;
end;
/



---FOR LOOP/WHILE LOOP/ARRAY with extend() function
set serveroutput on
declare 
  counter number;
  staff_name Staffs.staff_name%type;
  TYPE NAMEARRAY IS VARRAY(5) OF Staffs.staff_name%type; 
  A_NAME NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 1..5  
  loop
    select staff_name into staff_name from Staffs where staff_id=x;
    A_NAME.EXTEND();
    A_NAME(counter):=staff_name;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/



---ARRAY without extend() function
DECLARE 
   counter NUMBER := 1;
   staff_name Staffs.staff_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF Staffs.staff_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Staff 1', 'Staff 2', 'Staff 3', 'Staff 4', 'Staff 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with book names
BEGIN
   counter := 1;
   FOR x IN 1..5  
   LOOP
      SELECT staff_name INTO staff_name FROM Staffs WHERE staff_id=x;
      A_NAME(counter) := staff_name;
      counter := counter + 1;
   END LOOP;
   counter := 1;
   WHILE counter <= A_NAME.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
      counter := counter + 1;
   END LOOP;
END;
/




---if/else
DECLARE 
   counter NUMBER := 1;
   staff_name Staffs.staff_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF Staffs.staff_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Staff 1', 'Staff 2', 'Staff 3', 'Staff 4', 'Staff 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with book names
BEGIN
   counter := 1;
   FOR x IN 1..5  
   LOOP
      SELECT staff_name INTO staff_name FROM Staffs WHERE staff_id=x;
      if staff_name='MD Asif' 
        then
        dbms_output.put_line(staff_name||' is a '||'Warden');
      elsif staff_name='MD Karim'  
        then
        dbms_output.put_line(staff_name||' is a '||'Assiatant');
      else 
        dbms_output.put_line(staff_name||' is a '||'other');
        end if;
   END LOOP;
END;
/


---procedure
CREATE OR REPLACE PROCEDURE proc3(
  var1 IN NUMBER,
  var2 OUT VARCHAR2,
  var3 IN OUT NUMBER
)
AS
  t_show CHAR(30);
BEGIN
  t_show := 'From procedure: ';
  SELECT Student_name INTO var2
  FROM Students
  WHERE hostel_name IN (SELECT hostel_name FROM Students WHERE roll = var1)
    AND ROWNUM = 1; -- Add this condition to limit the result to one row

  var3 := var1 + 1;
  DBMS_OUTPUT.PUT_LINE(t_show || var2 || ' code is ' || var1 || ' In out parameter: ' || var3);
EXCEPTION
  WHEN NO_DATA_FOUND THEN -- Handle the case where no rows are returned
    var2 := NULL;
    DBMS_OUTPUT.PUT_LINE('No student found for the given roll: ' || var1);
END;
/


set serveroutput on
declare 
roll Students.roll%type:=1907026;
hostel_name Hostels.hostel_name%type;
extra number;
begin
proc3(roll,hostel_name,extra);
end;
/


---function
set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value Students.department%type;
begin
  select department into value from Students where roll=var1; 
   return value;
end;
/
set serveroutput on
declare 
value varchar(20);
begin
value:=fun(1907026);
end;
/



--- drop
drop procedure proc2;
drop function fun;




























































