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

INSERT INTO animals (animal_id, name, species, breed, date_of_birth, gender, color)
VALUES
    (1, 'Fido', 'Dog', 'Golden Retriever', '2018-03-15', 'Male', 'Golden'),
    (2, 'Whiskers', 'Cat', 'Siamese', '2019-07-20', 'Female', 'Cream'),
    (3, 'Rocky', 'Dog', 'German Shepherd', '2017-05-10', 'Male', 'Black and Tan'),
    (4, 'Fluffy', 'Cat', 'Persian', '2020-01-30', 'Male', 'White'),
    (5, 'Luna', 'Dog', 'Labrador Retriever', '2019-11-25', 'Female', 'Yellow'),
   (6, 'Mochi', 'Cat', 'Maine Coon', '2018-09-12', 'Male', 'Brown Tabby'),
    (7, 'Bella', 'Dog', 'Poodle', '2020-04-05', 'Female', 'White'),
    (8, 'Simba', 'Cat', 'Bengal', '2018-06-18', 'Male', 'Spotted Rosetted'),
    (9, 'Max', 'Dog', 'Dachshund', '2020-07-14', 'Male', 'Black and Tan'),
    (10, 'Cleo', 'Cat', 'Ragdoll', '2019-12-22', 'Female');


INSERT INTO owners (owner_id, ofirst_name, olast_name, address, phone, email)
VALUES
    (1, 'Juan', 'Dela Cruz', '123 Main St, Manila', '123-456-7890', 'juan@example.com'),
    (2, 'Maria', 'Santos', '456 Elm St, Quezon City', '987-654-3210', 'maria@example.com'),
    (3, 'Antonio', 'Gonzales', '789 Oak St, Cebu', '555-123-4567', 'antonio@example.com'),
    (4, 'Elena', 'Rodriguez', '345 Pine St, Davao', '777-888-9999', 'elena@example.com'),
    (5, 'Ricardo Lim', '987 Cedar St, Makati', '222-333-4444', 'ricardo@example.com'),
    (6, 'Isabel', 'Reyes', '111 Acacia St, Pasig', '999-000-1111', 'isabel@example.com'),
    (7, 'Luis', 'Torres', '555 Maple St, Mandaluyong', '123-555-7777', 'luis@example.com'),
    (8, 'Carmen', 'Fernandez', '222 Birch St, Taguig', '333-222-1111', 'carmen@example.com'),
    (9, 'Pedro', 'Santillan', '888 Spruce St, Bacolod', '888-777-6666', 'pedro@example.com'),
    (10, 'Sofia', 'Villanueva', '777 Walnut St, lollo', '111-999-3333', 'sofia@example.com');

INSERT INTO appointments (appoint_id, animal_id, appoint_date, reason)
VALUES
    (1, 1, '2023-01-05', 'Annual check-up'),
    (2, 2, '2023-01-10', 'Vaccination'),
    (3, 3, '2023-02-02', 'Injury assessment'),
    (4, 4, '2023-02-15', 'Dental cleaning'),
    (5, 5, '2023-03-05', 'Skin condition'),
    (6, 6, '2023-03-10', 'Check for fleas'),
    (7, 2, '2023-04-12', 'Vaccination'),
    (8, 8, '2023-04-18', 'Spaying/neutering'),
    (9, 9, '2023-05-02', 'Allergy treatment'),
    (10, 10, '2023-05-20', 'Eye infection');
