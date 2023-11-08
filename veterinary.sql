create database veterinary;

CREATE TABLE owners (
    owner_id INT PRIMARY KEY,
    ofirst_name VARCHAR(50),
    olast_name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animal_id INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    owner_id INT,
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id)
);

CREATE TABLE appointments (
    appoint_id INT PRIMARY KEY,
    animal_id INT,
    appoint_date DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animal_id) REFERENCES animals(animal_id)
);

CREATE TABLE doctors (
    doctor_id INT PRIMARY KEY,
    dfirst_name VARCHAR(50),
    dlast_name VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    appoint_id INT,
    total_amount NUMERIC(10, 2),
    payment_date TIME,
    FOREIGN KEY (appoint_id) REFERENCES appointments(appoint_id)
);

CREATE TABLE medicalrecords (
    record_id INT PRIMARY KEY,
    animal_id INT,
    record_date TIMESTAMP,
    doctor_id INT,
    diagnosis TEXT,
    prescription TEXT,
    notes TEXT,
    FOREIGN KEY (animal_id) REFERENCES animals(animal_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);
