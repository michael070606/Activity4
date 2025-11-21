
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

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid)
        REFERENCES owners(ownerid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    doctorid INT,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    recorddate DATE,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

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

