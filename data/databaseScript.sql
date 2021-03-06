CREATE TABLE Users (
	fName VARCHAR(30) NOT NULL,
    lName VARCHAR(30) NOT NULL,
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    passwrd VARCHAR(50) NOT NULL,  
    email VARCHAR(30) NOT NULL
);

CREATE TABLE Trips (
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    tripName VARCHAR(50) NOT NULL,
    startDate DATE NOT NULL,
    endDate DATE NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Checklists (
    checklistName VARCHAR(50) NOT NULL,
    checklistDescription VARCHAR(200) NOT NULL,
    checklistType VARCHAR(20) NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE Items (
    itemName VARCHAR(50) NOT NULL,
    quantity INT NOT NULL,
    notes VARCHAR(200) NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE UserHasTrips (
    username VARCHAR(50) NOT NULL,
    tripId INT NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE UserHasChecklists (
    username VARCHAR(50) NOT NULL,
    checklistId INT NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE TripUsesChecklists (
    tripId INT NOT NULL,
    checklistId INT NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE ChecklistHasItems (
    checklistId INT NOT NULL,
    itemId INT NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT
);

CREATE TABLE TripHasItems (
    tripId INT NOT NULL,
    itemId INT NOT NULL,
    checked INT NOT NULL,
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT    
)