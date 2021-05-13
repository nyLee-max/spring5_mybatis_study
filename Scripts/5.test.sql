select * from addresses;
select * from course_enrollment;
select * from courses;
select * from students;
select * from tutors;
select * from user_pics;

delete from user_pics where id=1;
desc user_pics;

select stud_id, name, email, dob, phone
  from students
 where stud_id = 1;

delete 
  from courses 
 where course_id = 6;

select stud_id, name, email, dob
	 , substring(phone, 1, 3) as f 
	 , substring(phone, 5, 3) as m 
	 , substring(phone, 9, 4) as l 
 from students
where stud_id = 1;
	
insert into students(stud_id, name, email, phone, dob)
values (3, '홍길동3', 'lee@test.co.kr', '010-1234-1234', '1990-2-28');

delete from students where stud_id = 4;

update students
   set name=""
   
select stud_id, name, email, phone, dob, a.addr_id, street, city, state, zip, country
  from students s 
  join addresses a
    on s.addr_id=a.addr_id 
 where stud_id=1;
 
/*1:N*/
select t.tutor_id
     , t.name as tutor_name
     , email
     , c.course_id
     , c.name
     , description
     , start_date
     , end_date
  from tutors t join courses c on t.tutor_id=c.tutor_id
 where t.tutor_id=1;
 
delete from students where gender < 2;

select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where course_id in (1,2);


select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where name like '%Java%';

select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where start_date >= '2013-02-01';


select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where end_date <= '2013-07-01';
 
select course_id, name, description, start_date, end_date, tutor_id
  from courses
 where start_date >= '2013-02-01' and end_date <= '2013-07-01';