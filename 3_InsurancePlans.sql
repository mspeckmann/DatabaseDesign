--Part A
--auto increments the PK in the Patient table
Create Sequence seq_patient
MinValue 1
Start with 1013
Increment by 1
Cache 10; 

--Procedure for new Patient

CREATE OR REPLACE PROCEDURE ADD_Patient (
pat_FName_arg in varchar,
pat_LName_arg in varchar,
Street_Addr_arg in varchar,
ZipCode_arg in Number)
IS 
BEGIN
	Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
	VALUES (seq_patient.nextval, pat_FName_arg, pat_LName_arg, Street_Addr_arg, ZipCode_arg);
END;

--Procedure for new Patient's insurance

CREATE OR REPLACE PROCEDURE ADD_Insurance_History (
PolicyNum_arg in Number,
planname_arg in varchar,
insurancename_arg in varchar,
pat_FName_arg in varchar,
pat_LName_arg in varchar,
activedate_arg in Date)
IS
BEGIN
	Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
	VALUES (PolicyNum_arg 
		,(Select ip.Plan_ID 
			from InsurancePlan ip 
			inner join Insurance i on i.Insurance_ID = ip.Insurance_ID
			where ip.Name = planname_arg and i.name = insurancename_arg)
		,(Select Patient_ID from Patient where FIRST_NAME = pat_fname_arg 
			and LAST_NAME = pat_lname_arg)
		,activedate_arg);
END;

--test with new patient

BEGIN
	ADD_Patient ('James','Bond','310 Lillick Drive',02141);
END;
/

BEGIN
	ADD_Insurance_History (474373, 'HMO', 'Harvard Pilgrim', 'James', 'Bond', DATE '2015-01-01');
END;
/

--Part B

Select distinct p.First_Name || ' ' || p.LAST_NAME as Patient_Name
From Patient p 
inner join InsuranceHistory ih on ih.Patient_ID = p.Patient_ID
inner join InsurancePlan ip on ip.Plan_ID = ih.Plan_ID
left join Visit v on v.Patient_ID = p.Patient_ID
where ip.name = 'Empire Plan'
and (SYSTIMESTAMP - v.visit_time <= '+730 00:00:00.000000');




