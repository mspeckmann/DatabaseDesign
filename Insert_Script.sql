--Specialty
Insert into Specialty (Spec_ID, Name)
VALUES (100, 'General Practice');
Insert into Specialty (Spec_ID, Name)
VALUES (200, 'Oncology');
Insert into Specialty (Spec_ID, Name)
VALUES (300, 'Radiology');
Insert into Specialty (Spec_ID, Name)
VALUES (400, 'Pulmonology');
Insert into Specialty (Spec_ID, Name)
VALUES (500, 'Infectious Disease');
Insert into Specialty (Spec_ID, Name)
VALUES (600, 'Immunology');
Insert into Specialty (Spec_ID, Name)
VALUES (700, 'Rheumatology');
Insert into Specialty (Spec_ID, Name)
VALUES (800, 'Gynaecology');
Insert into Specialty (Spec_ID, Name)
VALUES (900, 'Pediatrics');

--Building

Insert into Building (Build_Num, Name)
VALUES (101,'Agnes');
Insert into Building (Build_Num, Name)
VALUES (202,'Palladuis');
Insert into Building (Build_Num, Name)
VALUES (303,'Archimedes');
Insert into Building (Build_Num, Name)
VALUES (404,'Vermeer');
Insert into Building (Build_Num, Name)
VALUES (505,'Euclid');

--Physician

Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5002, 100, 'Kathlin','Jones', 101);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5003, 200, 'Scottie','Marr', 202);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5004, 800, 'Jairo','Tellez', 303);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5005, 500, 'Jay','Morris', 404);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5006, 100, 'Sarah','Gardner', 505);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5007, 300, 'Kate','Puri', 101);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5008, 600, 'Kat','Divera', 202);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5009, 900, 'Charles','Doucot', 303);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5010, 700, 'Harry','Potter', 404);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5011, 600, 'Hermione','Granger', 505);
Insert into Physician (Phys_ID, Spec_ID, First_Name, Last_Name, Build_Num)
VALUES (5012, 200, 'Jane','Austin', 101);


--Schedule

Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (9999, 5002, TIMESTAMP '2014-06-02 08:00:00', TIMESTAMP '2014-06-02 20:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10000, 5002, TIMESTAMP '2017-06-02 08:00:00', TIMESTAMP '2017-06-02 20:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10001, 5003, TIMESTAMP '2017-06-04 07:00:00', TIMESTAMP '2017-06-04 19:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10002, 5004, TIMESTAMP '2017-06-05 06:00:00', TIMESTAMP '2017-06-05 18:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10003, 5004, TIMESTAMP '2017-06-06 08:00:00', TIMESTAMP '2017-06-06 22:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10005, 5005, TIMESTAMP '2017-06-10 08:00:00', TIMESTAMP '2017-06-10 22:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10006, 5006, TIMESTAMP '2017-06-12 08:00:00', TIMESTAMP '2017-06-12 17:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10007, 5006, TIMESTAMP '2017-06-13 07:00:00', TIMESTAMP '2017-06-13 17:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10008, 5007, TIMESTAMP '2017-06-17 08:00:00', TIMESTAMP '2017-06-17 17:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10009, 5007, TIMESTAMP '2017-06-18 07:00:00', TIMESTAMP '2017-06-18 15:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10010, 5008, TIMESTAMP '2017-06-19 08:00:00', TIMESTAMP '2017-06-19 17:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10011, 5008, TIMESTAMP '2017-06-19 09:00:00', TIMESTAMP '2017-06-19 17:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10012, 5005, TIMESTAMP '2017-09-19 09:00:00', TIMESTAMP '2017-09-19 10:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10013, 5005, TIMESTAMP '2017-09-21 09:00:00', TIMESTAMP '2017-09-21 17:00:00');
Insert into Schedule (Schedule_ID, Phys_ID, Shift_Start, Shift_End)
VALUES (10014, 5004, TIMESTAMP '2017-09-20 09:00:00', TIMESTAMP '2017-09-20 10:00:00');


--Location

Insert into Location (ZipCode, City, State)
VALUES (01011, 'Chester', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01060, 'Northampton', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01081, 'Wales', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01254, 'Richmond', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01580, 'Westborough', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01701, 'Framingham', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01805, 'Burlington', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (01813, 'Woburn', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (02111, 'Boston', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (02110, 'Boston', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (02141, 'Cambridge', 'MA');
Insert into Location (ZipCode, City, State)
VALUES (02143, 'Somerville', 'MA');


--Patient 

Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1000, 'Mel','Smith','366 Acton Street',02143);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1001, 'John','Carlton','17 Houston Avenue',02110);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1002, 'Raj','Sutar','1200 Penn Street',01580);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1003, 'Carl','Hernandez','1 A Street',01701);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1004, 'Jen','Lee','9001 Pleasant Avenue',01081);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1005, 'Huck','Pope','3232 Millbury Way',01011);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1006, 'Olivia','Starz','1789 Charles Street',01060);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1007, 'Harper','Nguyen','809 Banbury Court',01805);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1008, 'Jason','Tellez','112 Ashbury Way',02141);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1009, 'Ben','Brader','11 Harson Avenue',01580);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1010, 'Aaron','Mokowitz','1080 2nd Street',02143);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1011, 'Sarah','Stiller','209 Bombay Court',02110);
Insert into Patient (Patient_ID, First_Name, Last_Name, Street_Addr, ZipCode)
VALUES (1012, 'Carlos','Porter','667 Justice Street',01060);


--Visit
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (999998, 9999, 1000, TIMESTAMP '2014-06-02 15:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (999999, 10005, 1008, TIMESTAMP '2017-06-10 12:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000000, 10000, 1000, TIMESTAMP '2017-06-02 15:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000001, 10001, 1001, TIMESTAMP '2017-06-04 12:30:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000002, 10001, 1002, TIMESTAMP '2017-06-04 13:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000003, 10002, 1003, TIMESTAMP '2017-06-05 10:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000004, 10002, 1003, TIMESTAMP '2017-06-05 10:30:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000005, 10003, 1005, TIMESTAMP '2017-06-06 14:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000006, 10003, 1006, TIMESTAMP '2017-06-06 15:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000007, 10005, 1007, TIMESTAMP '2017-06-10 11:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000008, 10005, 1008, TIMESTAMP '2017-06-10 11:30:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000009, 10006, 1009, TIMESTAMP '2017-06-12 9:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000010, 10006, 1010, TIMESTAMP '2017-06-12 10:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000011, 10006, 1011, TIMESTAMP '2017-06-12 15:30:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (1000012, 9999, 1012, TIMESTAMP '2014-06-02 14:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (999994, 10012, 1002, TIMESTAMP '2017-09-19 9:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (999995, 10012, 1003, TIMESTAMP '2017-09-19 9:30:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (999996, 10014, 1005, TIMESTAMP '2017-09-20 9:00:00');
Insert into Visit (Visit_ID, Schedule_ID, Patient_ID, Visit_Time)
VALUES (999997, 10014, 1006, TIMESTAMP '2017-09-20 9:30:00');

--WaitList

Insert into WaitList (WL_ID, Patient_ID, Visit_ID)
VALUES (1, 1000, 1000000);
Insert into WaitList (WL_ID, Patient_ID, Visit_ID)
VALUES (2, 1003, 1000004);
Insert into WaitList (WL_ID, Patient_ID, Visit_ID)
VALUES (3, 1007, 1000007);
Insert into WaitList (WL_ID, Patient_ID, Visit_ID)
VALUES (4, 1008, 1000008);
Insert into WaitList (WL_ID, Patient_ID, Visit_ID)
VALUES (5, 1008, 999999);


--Insurance 

Insert into Insurance (Insurance_ID, Name)
VALUES (60, 'Blue Cross Blue Shield');
Insert into Insurance (Insurance_ID, Name)
VALUES (61, 'Tufts');
Insert into Insurance (Insurance_ID, Name)
VALUES (62, 'Harvard Pilgrim');
Insert into Insurance (Insurance_ID, Name)
VALUES (63, 'Aetna');

--Insurance Plan

Insert into InsurancePlan (Plan_ID, Insurance_ID, Name)
VALUES (700, 60, 'Empire Plan');
Insert into InsurancePlan (Plan_ID, Insurance_ID, Name)
VALUES (701, 60, 'Platinum Plan');
Insert into InsurancePlan (Plan_ID, Insurance_ID, Name)
VALUES (702, 61, 'PPO');
Insert into InsurancePlan (Plan_ID, Insurance_ID, Name)
VALUES (704, 62, 'HMO');
Insert into InsurancePlan (Plan_ID, Insurance_ID, Name)
VALUES (705, 63, 'Senior Plan');

--Insurance History

Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (109830, 700, 1000, DATE '2016-01-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (473946, 701, 1001, DATE '2015-05-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (473934, 702, 1002, DATE '2015-12-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (102794, 700, 1003, DATE '2014-03-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (294637, 704, 1004, DATE '2017-01-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (988364, 705, 1005, DATE '2015-08-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (338492, 700, 1006, DATE '2016-02-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (678394, 700, 1007, DATE '2013-04-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (849336, 701, 1008, DATE '2016-11-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (555946, 702, 1009, DATE '2016-02-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (483936, 700, 1010, DATE '2015-02-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (930033, 704, 1011, DATE '2014-02-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (773392, 705, 1012, DATE '2012-02-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (790578, 701, 1012, DATE '2014-05-01');
Insert into InsuranceHistory (PolicyNum, Plan_ID, Patient_ID, ActiveDate)
VALUES (978654, 705, 1007, DATE '2017-01-01');

