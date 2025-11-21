CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);


CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointmentdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);
CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    name VARCHAR(50),
    specialty VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(50)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    doctorid INT,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    recorddate DATE,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctogit add veterinary.sqlrid)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount DECIMAL(10,2),
    paymenttime TIME
);

INSERT INTO appointments (appointmentid, animalid, doctorid, appointmentdate, reason) VALUES
(1, 1, 1, '2025-12-01', 'Vaccination'),
(2, 2, 2, '2025-12-02', 'Checkup'),
(3, 3, 1, '2025-12-03', 'Surgery follow-up'),
(4, 4, 3, '2025-12-04', 'Dental cleaning'),
(5, 5, 2, '2025-12-05', 'Annual checkup'),
(6, 6, 3, '2025-12-06', 'Vaccination'),
(7, 7, 1, '2025-12-07', 'Skin treatment'),
(8, 8, 2, '2025-12-08', 'Nail trimming'),
(9, 9, 3, '2025-12-09', 'Checkup'),
(10, 10, 1, '2025-12-10', 'Weight management');


INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Buddy', 'Dog', 'Labrador', '2018-05-10', 'Male', 'Yellow', 1),
(2, 'Mittens', 'Cat', 'Siamese', '2019-03-22', 'Female', 'Cream', 2),
(3, 'Charlie', 'Dog', 'Beagle', '2017-11-30', 'Male', 'Brown', 3),
(4, 'Daisy', 'Rabbit', 'Netherland Dwarf', '2020-01-15', 'Female', 'White', 4),
(5, 'Max', 'Dog', 'German Shepherd', '2016-07-18', 'Male', 'Black/Tan', 5),
(6, 'Luna', 'Cat', 'Maine Coon', '2018-09-09', 'Female', 'Gray', 6),
(7, 'Rocky', 'Dog', 'Bulldog', '2019-02-02', 'Male', 'Fawn', 7),
(8, 'Coco', 'Parrot', 'Macaw', '2015-12-25', 'Female', 'Blue/Red', 8),
(9, 'Bella', 'Dog', 'Poodle', '2017-06-06', 'Female', 'White', 9),
(10, 'Oscar', 'Cat', 'Persian', '2020-08-08', 'Male', 'White/Gray', 10);


INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes-Gonzales', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
    (1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
    (2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
    (3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
    (4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
    (5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
    (6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
    (7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
    (8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
    (9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
    (10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

DELETE FROM appointments
WHERE animalid = (SELECT animalid FROM animals WHERE name = 'Simba');

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE dfirstname = 'Sofia';

SELECT DISTINCT species
FROM animals;


SELECT COUNT(*) AS total_appointments
FROM appointments a
JOIN animals an ON a.animalid = an.animalid
JOIN owners o ON an.ownerid = o.ownerid
WHERE o.name = 'Maria';

SELECT SUM(totalamount) AS total_sales
FROM invoices;

SELECT an.name
FROM animals an
JOIN appointments a ON an.animalid = a.animalid
GROUP BY an.name
ORDER BY COUNT(a.appointid) DESC
LIMIT 1;




