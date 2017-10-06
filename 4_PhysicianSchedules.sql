--Part A

CREATE OR REPLACE PROCEDURE UPDATE_Shift_Start_Add_hour (
phys_fname_arg in varchar,
phys_lname_arg in varchar
)
IS
BEGIN
	Update Schedule
	Set Shift_Start = Shift_Start - INTERVAL '1' HOUR
	Where Phys_ID in (Select Phys_ID from Physician where First_Name = phys_fname_arg
		and Last_Name = phys_lname_arg) and Shift_Start > Systimestamp; 
		--this ensures that schedule entries are only updated in the future and not in the past
END;

--execute

BEGIN
UPDATE_Shift_Start_Add_hour ('Jay', 'Morris');
END;
/


--Part B

--next two days are 9/19/17 and 9/20/17


Select a.Physician_Name
	 , a.schedule_id
	 , count(a.Visit_ID) as Num_Appointments
	 , a.num_of_poss_visit
     , case when count(a.Visit_ID) = a.num_of_poss_visit then 'BOOKED'
       when count(a.Visit_ID) != a.num_of_poss_visit then 'OPEN' 
       end as Status
from (
		Select v.schedule_id as schedule_id
	         , v.Visit_ID as Visit_ID
	         , (extract (hour from s.Shift_End - s.Shift_Start)) * 2 num_of_poss_visit
	         , phy.First_Name || ' ' || phy.LAST_NAME as Physician_Name
        from Visit v 
		left join Schedule s on s.schedule_id = v.schedule_id
		left join Physician phy on phy.Phys_ID = s.Phys_ID
		where TRUNC(s.SHIFT_START) = DATE '2017-09-19' 
		or TRUNC(s.SHIFT_START) = DATE '2017-09-20'
) a
group by a.schedule_id, a.num_of_poss_visit, a.Physician_Name;




