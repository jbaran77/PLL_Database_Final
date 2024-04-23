-- Create tables

CREATE TABLE Team (
    Name VARCHAR2(100) PRIMARY KEY,
    City VARCHAR2(100),
    Head_Coach VARCHAR2(100),
    Wins number,
    Losses number
);

CREATE TABLE Player (
    Player_ID number PRIMARY KEY,
    Name VARCHAR2(100),
    Team_Name VARCHAR2(100) ,
    Jersey_number number,
    Position VARCHAR2(50),
    Goals number,
    Assists number,
    Salary decimal(10, 2),
    Gear_Name VARCHAR2(100),
    FOREIGN KEY (Team_Name) REFERENCES Team(Name)
);

CREATE TABLE Sponsors (
    Team_Name VARCHAR2(100),
    Sponsor_Name VARCHAR2(100),
    PRIMARY KEY (Team_Name, Sponsor_Name),
    FOREIGN KEY (Team_Name) REFERENCES Team(Name)
);

CREATE TABLE Gear_Company (
    Name VARCHAR(100) PRIMARY KEY,
    Years_on_Deal number
);

CREATE TABLE Sponsor_Company (
    Name VARCHAR2(100) PRIMARY KEY,
    Years_on_Deal number
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
