

---Part A:
---Situation: When a doctor decides to work on his/her day off (new schedule entry), check the waitlist 
---table on who should be called for an appointment first. Make sure that their back up appointment is a date 
---after the doctor's new shift date.

--auto increments the PK in the Patient table
Create Sequence seq_schedule
MinValue 1
Start with 10015
Increment by 1
Cache 10; 

--need to run this in order to print statement in Script Output below --> dbms_output
SET serveroutput on size 30000;

CREATE OR REPLACE PROCEDURE ADD_Schedule (
phy_lname_arg IN VARCHAR,
phy_fname_arg IN VARCHAR,
shift_start_arg in TIMESTAMP,
shift_end_arg in TIMESTAMP
)
IS

BEGIN
	INSERT INTO Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
	VALUES (seq_schedule.nextval
			,(Select Phys_ID from Physician where Last_Name = phy_lname_arg
				and First_Name = phy_fname_arg)
			,shift_start_arg
			,shift_end_arg
		   );

END;

--This trigger will check from the waitlist who might want to make an earlier appointment with the
--doctor's new schedule addition.
CREATE OR REPLACE TRIGGER check_waitlist_trg
BEFORE INSERT ON Schedule
Referencing new as new
FOR EACH ROW
declare
Patient_Name patient.First_Name%type;
PHYSID physician.phys_id%type;
VisitTime visit.visit_time%type;
cursor c_waitlistcheck IS
	Select pat.First_Name || ' ' || pat.Last_Name, s.phys_id, v.visit_time
	From WAITLIST w 
	left join Visit v on v.VISIT_ID = w.VISIT_ID
	left join Schedule s on s.SCHEDULE_ID = v.SCHEDULE_ID
	left join Patient pat on pat.PATIENT_ID = w.PATIENT_ID
	where s.PHYS_ID = :NEW.phys_id
	and v.visit_time > :NEW.Shift_Start;
BEGIN
    Open c_waitlistcheck;
    Fetch c_waitlistcheck into Patient_Name, PhysID, VisitTime;
    IF PHYSID = :NEW.phys_id and VisitTime > :NEW.shift_start then 
    DBMS_OUTPUT.PUT_LINE ('Check waitlist for the following Patients:');
    DBMS_OUTPUT.PUT_LINE (Patient_Name);
    Else
    DBMS_OUTPUT.PUT_LINE ('The waitlist does not need to be checked.');
    --fetch c_waitlistcheck into my_value;
    End if;  
END;

--The trigger will alert to contact any patients who have an appointment after 6/9/17 with Dr. Morris
BEGIN
    Add_Schedule ('Morris', 'Jay', TIMESTAMP '2017-06-09 08:00:00',TIMESTAMP '2017-06-09 15:00:00');
END;
/

--The trigger will alert that there isn't a need to check the waitlist as this doctor either doesn't have
--a waitlist or their appointments are before the new schedule entry.
BEGIN
    Add_Schedule ('Jones', 'Kathlin', TIMESTAMP '2017-07-09 08:00:00',TIMESTAMP '2017-07-09 15:00:00');
END;
/

---Part B: The hospital has received the budget to hire a new doctor but are unsure which specialty is in the 
---highest demand. Find the specialty with the most appointments and divide it by the  number of staffed doctors 
--in that specialty to assess appointment to specialty doctor ratio and decided what type of doctor should be hired.


Select a.SpecialtyName
	,  a.Num_Of_Visits
	,  b.Num_Of_Docs
	,  a.Num_of_Visits/b.Num_of_Docs as Ratio
From (
	Select sp.NAME as SpecialtyName
     , count (v.visit_id) as Num_Of_Visits
     From Physician p
	 left join Specialty sp on sp.SPEC_ID = p.SPEC_ID
	 left join Schedule s on s.PHYS_ID = p.PHYS_ID
	 left join Visit v on v.SCHEDULE_ID = s.SCHEDULE_ID
	 group by sp.SPEC_ID, sp.NAME) a
Inner Join (
	Select sp.NAME as SpecialtyName
     , count (p.PHYS_ID) as Num_Of_Docs
From Physician p
left join Specialty sp on sp.SPEC_ID = p.SPEC_ID
group by sp.SPEC_ID, sp.NAME
) b
ON b.SpecialtyName = a.SpecialtyName;

--The results show that Gynaecology has the most appointments with only one doctor on staff, meaning that the hospital can make
--and education decision to hire another Gynecologist. 







