-- Create tables
CREATE TABLE Team (
    Name VARCHAR(100) PRIMARY KEY,
    City VARCHAR(100),
    Head_Coach VARCHAR(100),
    Wins INT,
    Losses INT
);

CREATE TABLE Player (
    Player_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Team_Name VARCHAR(100) FOREIGN KEY REFERENCES Team(Name),
    Number INT,
    Position VARCHAR(50),
    Goals INT,
    Assists INT,
    Salary DECIMAL(10, 2),
    Gear_Name VARCHAR(100)
);

CREATE TABLE Sponsors (
    Team_Name VARCHAR(100) FOREIGN KEY REFERENCES Team(Name),
    Sponsor_Name VARCHAR(100),
    PRIMARY KEY (Team_Name, Sponsor_Name)
);

CREATE TABLE Gear_Company (
    Name VARCHAR(100) PRIMARY KEY,
    Years_on_Deal INT
);

CREATE TABLE Sponsor_Company (
    Name VARCHAR(100) PRIMARY KEY,
    Years_on_Deal INT
);

-- Constraints
-- Each player plays for 1 team
ALTER TABLE Player ADD CONSTRAINT fk_player_team FOREIGN KEY (Team_Name) REFERENCES Team(Name);

-- Each team can have a max of 11 players
ALTER TABLE Team ADD CONSTRAINT team_player_count CHECK (
    (SELECT COUNT(*) FROM Player WHERE Team_Name = Name) <= 11
);

-- A player can have multiple sponsorships
-- This is allowed by the schema design

-- Each team has a salary cap of $735,000
ALTER TABLE Team ADD CONSTRAINT team_salary_cap CHECK (
    (SELECT SUM(Salary) FROM Player WHERE Team_Name = Name) <= 735000
);

-- Minimum salary for a player is $25,000
ALTER TABLE Player ADD CONSTRAINT player_min_salary CHECK (Salary >= 25000);

-- Each team can only have 1 of each number
ALTER TABLE Player ADD CONSTRAINT unique_number_per_team UNIQUE (Team_Name, Number);
