--PART A

--Constraint when Visit is already booked

ALTER TABLE Visit
ADD CONSTRAINT Visit_Already_Booked UNIQUE(Schedule_ID, Visit_Time);

--auto increments the PK in the WaitingList table
Create Sequence seq_waitlist
MinValue 1
Start with 6
Increment by 1
Cache 10; 


--procedure to add to waitlist

CREATE OR REPLACE PROCEDURE ADD_Waitlist (
pat_lname_arg IN VARCHAR,
pat_fname_arg IN VARCHAR,
visit_time_arg IN TIMESTAMP
)
IS
BEGIN
	INSERT INTO WaitList (WL_ID, Patient_ID, Visit_ID) 
	values (seq_waitlist.nextval
		, (Select Patient_ID from Patient where FIRST_NAME = pat_fname_arg and LAST_NAME = pat_lname_arg)
		, (Select Visit_ID from Visit V 
			where Patient_ID in (Select Patient_ID from Patient where FIRST_NAME = pat_fname_arg 
			and LAST_NAME = pat_lname_arg) and Visit_Time = visit_time_arg));
END;

--Examples of adding to appointment and waitlist

--see 1_Appointments.sql for procedure
BEGIN 
	ADD_APPOINTMENT ('Tellez','Jairo','Stiller','Sarah'
		, TIMESTAMP '2017-06-06 08:00:00', TIMESTAMP '2017-06-06 15:30:00');
END;
/

BEGIN 
	ADD_Waitlist ('Stiller','Sarah',TIMESTAMP '2017-06-06 15:30:00');
END;
/

--Part B

Select p.FIRST_NAME || ' ' || p.LAST_NAME as Patient_Name
,rank() OVER (partition by ph.phys_id order by wl.wl_id) as wl_rank
From WaitList wl
left join Patient p on p.patient_id = wl.Patient_ID
left join Visit v on v.visit_id = wl.visit_id
left join schedule s on s.Schedule_ID = v.Schedule_ID
left join physician ph on ph.phys_ID = s.phys_ID
where ph.first_name = 'Jay' and ph.last_name = 'Morris'
and ROWNUM <= 3;




