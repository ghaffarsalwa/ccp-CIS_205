-- mirrioring table
CREATE TABLE doctor (

DID CHAR(8),
Vname VARCHAR(50) NOT NULL,
Vphone VARCHAR(12) NOT NULL,
CONSTRAINT Veterinarian_PK PRIMARY KEY(DID)

);

/* SELECT * from Veterinarian 
Limit 2; 

CREATE table doctor as select * from Veterinarian; */
INSERT INTO doctor (DID,Vname,Vphone)
VALUES ('1398','Anna Smath','79267198736');

insert into doctor
  (select * 
    from Veterinarian
   limit 2);
   
   
-- 1 UNION

SELECT * from Veterinarian
UNION ALL 
SELECT * from doctor;


-- 2 (intersection)

SELECT Veterinarian.Vname, Veterinarian.Vphone 
FROM Veterinarian
INNER JOIN doctor
ON Veterinarian.Vphone = doctor.Vphone; 


-- 3 difference

SELECT DISTINCT Veterinarian.Vname, VID
FROM Veterinarian
WHERE (Veterinarian.Vname, VID) NOT IN 
(SELECT doctor.Vname, VID from doctor);



SELECT DISTINCT doctor.Vname, DID 
FROM doctor
WHERE (doctor.Vname, DID) NOT IN 
(SELECT Veterinarian.Vname, VID from Veterinarian);


 -- 4 multiquery
 
SELECT Veterinarian.Vname, Pet.type
FROM Veterinarian
JOIN Pet
ON Veterinarian.VID = Pet.VID_FK
WHERE Pet.type = "Dog";

SELECT Pet.type, Veterinarian.Vphone
FROM Veterinarian
JOIN Pet
ON Veterinarian.VID = Pet.VID_FK
WHERE PID = "17645";


-- 5 ALTER

ALTER TABLE Veterinarian
ADD VAddress CHAR(50); 

ALTER TABLE Veterinarian
ADD VZip CHAR(6); 


-- 6 UPDATE

UPDATE Veterinarian SET Vname = "Sokso Damitro"
WHERE VID = "1234";

UPDATE Veterinarian SET VPhone = "14168791679"
WHERE VID = "1234";

Update Veterinarian SET VAddress = "231 Knorr St."
WHERE VID = "1234";

Update Veterinarian SET VZip = "19115"
WHERE VID = "1234";

Update Veterinarian SET VAddress = "231 County Ave."
WHERE VID = "1393";

Update Veterinarian SET VZip = "19125"
WHERE VID = "1393";



-- 7 DELETE

 DELETE FROM Pet
 WHERE Type = "Dog" ;
 
 DELETE FROM Veterinarian
 WHERE VZip = "19125";
 
 -- 8 Aggreating

SELECT COUNT(*)
FROM Veterinarian;

SELECT COUNT(VID)
FROM Veterinarian
WHERE VID LIKE "A%"; 

 
 -- 9 HAVING AND GROUP BY

SELECT COUNT(Vname), VID
FROM Veterinarian
GROUP BY Vname;


SELECT COUNT(VID), Vphone
FROM Veterinarian
HAVING COUNT(VID) > 3;
 
 
 -- 10 Sort Queries
 
 SELECT *
 FROM Veterinarian
 ORDER BY Vname DESC; 
 
 SELECT *
 FROM Veterinarian
 ORDER BY Vname ASC; 
 