Create Table Building (
Build_Num Number PRIMARY KEY,
Name varchar(75),
Street_Addr varchar(115)
);

Create Table Specialty (
Spec_ID Number PRIMARY KEY,
Name varchar(75)
);

Create Table Physician (
Phys_ID Number PRIMARY KEY,
Spec_ID Number,
First_Name varchar(35),
Last_Name varchar(35),
Build_Num Number,
FOREIGN KEY (Spec_ID) REFERENCES Specialty,
FOREIGN KEY (Build_Num) REFERENCES Building
);

Create Table Schedule (
Schedule_ID Number PRIMARY KEY,
Phys_ID Number,
Shift_Start Timestamp(0),
Shift_End Timestamp(0),
FOREIGN KEY (Phys_ID) REFERENCES Physician
);

Create Table Location (
ZipCode Number PRIMARY KEY,
City VARCHAR(35),
State VARCHAR(15)
);

Create Table Patient (
Patient_ID Number PRIMARY KEY,
First_Name varchar(35),
Last_Name varchar(35),
Street_Addr varchar(115),
ZipCode Number,
FOREIGN KEY (ZipCode) REFERENCES Location
);

Create Table Visit (
Visit_ID Number PRIMARY KEY,
Schedule_ID Number,
Patient_ID Number,
Visit_Time Timestamp(0),
FOREIGN KEY (Schedule_ID) REFERENCES Schedule,
FOREIGN KEY (Patient_ID) REFERENCES Patient
);

Create Table WaitList (
WL_ID Number PRIMARY KEY,
Patient_ID Number,
Visit_ID Number,
FOREIGN KEY (Patient_ID) REFERENCES Patient,
FOREIGN KEY (Visit_ID) REFERENCES Visit
);

Create Table Insurance (
Insurance_ID Number PRIMARY KEY,
Name VARCHAR(75)
);

Create Table InsurancePlan (
Plan_ID Number PRIMARY KEY,
Insurance_ID Number,
Name VARCHAR(75),
FOREIGN KEY (Insurance_ID) REFERENCES Insurance
);

Create Table InsuranceHistory (
PolicyNum Number PRIMARY KEY,
Plan_ID Number,
Patient_ID Number,
ActiveDate Date,
FOREIGN KEY (Plan_ID) REFERENCES InsurancePlan,
FOREIGN KEY (Patient_ID) REFERENCES Patient
);

