DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;
-- Drop tables if they already exist (to avoid conflicts)
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Walk;
DROP TABLE IF EXISTS Dog;
DROP TABLE IF EXISTS Walker;
DROP TABLE IF EXISTS DogOwner;

-- Dog Owner table
CREATE TABLE DogOwner (
    DogOwnerID VARCHAR(100) PRIMARY KEY
);

-- Dog table
CREATE TABLE Dog (
    DogID VARCHAR(100) PRIMARY KEY,
    DogOwnerID VARCHAR(100),
    FOREIGN KEY (DogOwnerID) REFERENCES DogOwner(DogOwnerID)
);

-- Walker table
CREATE TABLE Walker (
    WalkerID VARCHAR(100) PRIMARY KEY
);

-- Walk table
CREATE TABLE Walk (
    WalkID DATETIME PRIMARY KEY,
    DogID VARCHAR(100),
    WalkerID VARCHAR(100),
    FOREIGN KEY (DogID) REFERENCES Dog(DogID),
    FOREIGN KEY (WalkerID) REFERENCES Walker(WalkerID)
);

-- Payment table
CREATE TABLE Payment (
    PaymentAmount DECIMAL(10,2),
    WalkID DATETIME,
    PRIMARY KEY (WalkID),
    FOREIGN KEY (WalkID) REFERENCES Walk(WalkID)
);