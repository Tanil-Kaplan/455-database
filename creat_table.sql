CREATE DATABASE SunderlandCruiseDB;

USE SunderlandCruiseDB;

CREATE TABLE Passenger (
    PassengerID VARCHAR(10) PRIMARY KEY,
    PassengerName VARCHAR(100),
    Cabin VARCHAR(10)
);

CREATE TABLE Cruise (
    CruiseNo VARCHAR(10) PRIMARY KEY,
    CruiseName VARCHAR(100)
);

CREATE TABLE ExcursionLeader (
    ExcursionLeaderID VARCHAR(10) PRIMARY KEY,
    ExcursionLeaderName VARCHAR(100)
);

CREATE TABLE Excursion (
    ExcursionNo VARCHAR(10) PRIMARY KEY,
    Port VARCHAR(100),
    Excursion VARCHAR(100),
    PricePerExcursion DECIMAL(10, 2),
    ExcursionLeaderID VARCHAR(10),
    FOREIGN KEY (ExcursionLeaderID) REFERENCES ExcursionLeader(ExcursionLeaderID)
);

CREATE TABLE Booking (
    OrderID VARCHAR(10),
    PassengerID VARCHAR(10),
    CruiseNo VARCHAR(10),
    ExcursionNo VARCHAR(10),
    Qty INT,
    TotalCost DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ExcursionNo),
    FOREIGN KEY (PassengerID) REFERENCES Passenger(PassengerID),
    FOREIGN KEY (CruiseNo) REFERENCES Cruise(CruiseNo),
    FOREIGN KEY (ExcursionNo) REFERENCES Excursion(ExcursionNo)
);

-- Insert sample data
INSERT INTO Passenger (PassengerID, PassengerName, Cabin) VALUES
('P001', 'Weber', '2345'),
('P005', 'Elshaw', '3777'),
('P003', 'Brown', '8124');
