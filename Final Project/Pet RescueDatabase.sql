DROP DATABASE PetRescue;
Create Database PetRescue;
Use PetRescue;

DROP TABLE if exists Rescuer;
DROP TABLE if exists Donating_Company;
DROP TABLE if exists Veterinarian;
DROP TABLE if exists Pet;
DROP TABLE if exists doctor;




Create Table Rescuer(
Rnum CHAR(8),
Rname VARCHAR(50) NOT NULL,
Rphone VARCHAR(12) NOT NULL,
CONSTRAINT Rescuer_PK PRIMARY KEY(Rnum)
);

	
Create Table Donating_Company
(
CID CHAR(8),
Cname VARCHAR(50) NOT NULL,
Cphone VARCHAR(12) NOT NULL,
Clocation VARCHAR(50) NOT NULL,
CONSTRAINT Donating_Company_PK PRIMARY KEY(CID)
);

Create Table Veterinarian(
VID CHAR(8),
Vname VARCHAR(50) NOT NULL,
Vphone VARCHAR(12) NOT NULL,
CONSTRAINT Veterinarian_PK PRIMARY KEY(VID)
);

Create Table Pet(
PID CHAR(8),
Type VARCHAR(10) NOT NULL,
Rnum_FK VARCHAR(8) NOT NULL,
CID_FK VARCHAR(8) NOT NULL,
VID_FK VARCHAR(8) NOT NULL,
CONSTRAINT Pet_PK PRIMARY KEY(PID),
CONSTRAINT Pet_FK1 FOREIGN KEY(Rnum_FK) REFERENCES Rescuer(Rnum),
CONSTRAINT Pet_FK2 FOREIGN KEY(CID_FK) REFERENCES Donating_Company(CID),
CONSTRAINT Pet_FK3 FOREIGN KEY(VID_FK) REFERENCES Veterinarian(VID)
);

