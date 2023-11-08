create database veterinary;

CREATE TABLE owners (
    owner_id INT PRIMARY KEY,
    ofirst_name VARCHAR(50),
    olast_name VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);
