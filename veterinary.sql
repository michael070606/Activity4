
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


INSERT INTO owners (ownerid, name, contact, address) VALUES
(1, 'John Doe', '123-456-7890', '123 Elm St'),
(2, 'Jane Smith', '234-567-8901', '456 Oak St'),
(3, 'Alice Johnson', '345-678-9012', '789 Pine St'),
(4, 'Bob Brown', '456-789-0123', '321 Maple St'),
(5, 'Charlie Davis', '567-890-1234', '654 Cedar St'),
(6, 'Diana Evans', '678-901-2345', '987 Birch St'),
(7, 'Frank Green', '789-012-3456', '159 Walnut St'),
(8, 'Grace Hall', '890-123-4567', '753 Spruce St'),
(9, 'Henry King', '901-234-5678', '852 Chestnut St'),
(10, 'Ivy Lee', '012-345-6789', '951 Poplar St');

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

