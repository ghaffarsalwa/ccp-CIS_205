DROP DATABASE PetRescue;
Create Database PetRescue;
Use PetRescue;

/* DROP TABLE if exists Rescuer;
DROP TABLE if exists Donating_Company;
DROP TABLE if exists Veterinarian;
DROP TABLE if exists Pet;
DROP TABLE if exists doctor; */




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






INSERT INTO Rescuer (Rnum, Rname, Rphone)
VALUES ('123456','Anna Smith','79267145151');

INSERT INTO Rescuer (Rnum, Rname, Rphone)
VALUES ('110022','Kelly Donald','14126871189');

INSERT INTO Rescuer (Rnum, Rname, Rphone)
VALUES ('213356','John Torres','14237979902');

INSERT INTO Rescuer (Rnum, Rname, Rphone)
VALUES ('778899','Emily McGregor','14349088615');

INSERT INTO Rescuer (Rnum, Rname, Rphone)
VALUES ('889245','Linda Kim','14460197328');

INSERT INTO Rescuer (Rnum, Rname, Rphone)
VALUES ('991265','Maria Liberman','12679474712');


INSERT INTO Donating_Company (CID, Cname, Cphone, Clocation)
VALUES ('14789855','PhillyPet','12150956387','Philadelphia');

INSERT INTO Donating_Company (CID, Cname, Cphone, Clocation)
VALUES ('14912311','PetManha','13475264224','New York');

INSERT INTO Donating_Company (CID, Cname, Cphone, Clocation)
VALUES ('15034767','PetStoreN','15512561259','New Jersey');

INSERT INTO Donating_Company (CID, Cname, Cphone, Clocation)
VALUES ('15157223','PetCare','14075624567','Florida');

INSERT INTO Donating_Company (CID, Cname, Cphone, Clocation)
VALUES ('15279679','PetMom','12484561278','Michigan');

INSERT INTO Donating_Company (CID, Cname, Cphone, Clocation)
VALUES ('15891959','DadPet','13107534915','California');


INSERT INTO Veterinarian (VID, Vname, Vphone)
VALUES ('1234','Alex Lee','13105424679');

INSERT INTO Veterinarian (VID, Vname, Vphone)
VALUES ('1393','Catherine Sauchuk','13475681975');

INSERT INTO Veterinarian (VID, Vname, Vphone)
VALUES ('1552','Andy Sokso','14075167853');

INSERT INTO Veterinarian (VID, Vname, Vphone)
VALUES ('1711','Oliver Jones','15512437984');

INSERT INTO Veterinarian (VID, Vname, Vphone)
VALUES ('1870','Agathe Loy','12154673467');

INSERT INTO Veterinarian (VID, Vname, Vphone)
VALUES ('2665','Emma Jackson','12671234578');


INSERT INTO Pet (PID, Type, Rnum_FK, CID_FK, VID_FK)
VALUES ('17488','Cat','123456','14789855','1234');

INSERT INTO Pet (PID, Type, Rnum_FK, CID_FK, VID_FK)
VALUES ('17645','Dog','110022','14912311','1393');

INSERT INTO Pet (PID, Type, Rnum_FK, CID_FK, VID_FK)
VALUES ('17802','Cat','213356','15034767','1552');

INSERT INTO Pet (PID, Type, Rnum_FK, CID_FK, VID_FK)
VALUES ('17959','Dog','778899','15157223','1711');

INSERT INTO Pet (PID, Type, Rnum_FK, CID_FK, VID_FK)
VALUES ('18116','Dog','889245','15279679','1870');

INSERT INTO Pet (PID, Type, Rnum_FK, CID_FK, VID_FK)
VALUES ('18273','Cat','991265','15891959','2665');


