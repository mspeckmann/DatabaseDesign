--PART A
--auto increments the PK in the Visit table
Create Sequence seq_visit
MinValue 1
Start with 1000013
Increment by 1
Cache 10; 


--check schedule of Doctor
Select s.SCHEDULE_ID
,s.PHYS_ID
,p.FIRST_NAME
,p.LAST_NAME
,s.SHIFT_START
,s.SHIFT_END 
from Schedule s 
inner join Physician p on p.PHYS_ID = s.PHYS_ID
where (p.LAST_NAME = 'Jones' and p.FIRST_NAME = 'Kathlin') 
or (p.LAST_NAME = 'Marr' and p.FIRST_NAME = 'Scottie');

--procedure to generate appointment

CREATE OR REPLACE PROCEDURE ADD_APPOINTMENT(
phy_lname_arg IN VARCHAR,
phy_fname_arg IN VARCHAR,
pat_lname_arg IN VARCHAR,
pat_fname_arg IN VARCHAR,
shift_start_arg IN TIMESTAMP,
visit_time_arg IN TIMESTAMP
)
IS
BEGIN
	Insert into Visit
	(Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
	VALUES (seq_visit.nextval 
		,(Select Schedule_ID from Schedule where Shift_Start = shift_start_arg
			and Phys_ID = (Select Phys_ID from Physician where FIRST_NAME = phy_fname_arg and LAST_NAME = phy_lname_arg))
		,(Select Patient_ID from Patient where FIRST_NAME = pat_fname_arg and LAST_NAME = pat_lname_arg)
		, visit_time_arg);
END;


--booking appointment with procedure

BEGIN 
	ADD_APPOINTMENT ('Jones','Kathlin','Smith','Mel'
		, TIMESTAMP '2017-06-02 08:00:00', TIMESTAMP '2017-06-02 14:00:00');
END;
/

BEGIN 
	ADD_APPOINTMENT ('Marr','Scottie','Smith','Mel'
		, TIMESTAMP '2017-06-04 07:00:00', TIMESTAMP '2017-06-04 14:30:00');
END;
/


--PART B

Select distinct p.FIRST_NAME || ' ' || p.LAST_NAME as Physician_Name
From Physician p 
inner join Building b on b.build_num = p.build_num
inner join Schedule s on s.Phys_ID = p.Phys_ID
inner join visit v on v.schedule_id = s.schedule_id
inner join Patient pa on pa.patient_id = v.Patient_ID
where b.name = 'Agnes' or b.name = 'Palladuis'
and (pa.FIRST_NAME = 'Mel' and pa.LAST_NAME = 'Smith');



