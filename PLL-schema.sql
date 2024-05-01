DROP TABLE TEAM Cascade Constraints;

DROP TABLE PLAYER Cascade Constraints;

DROP TABLE SPONSORS;

DROP TABLE GEAR_COMPANY;

DROP TABLE SPONSOR_COMPANY;


CREATE TABLE Team (
    name varchar2(40) ,
    City VARCHAR2(40),
    Head_Coach VARCHAR2(40),
    Wins number,
    Losses number,
    PRIMARY KEY (name)
);


CREATE TABLE Sponsor_Company (
    Name VARCHAR2(40),
    PRIMARY KEY (name)
);


CREATE TABLE Sponsors (
    Team_Name VARCHAR2(40),
    Sponsor_Name VARCHAR2(40),
    years_on_deal number,
    PRIMARY KEY (Team_Name, Sponsor_Name),
    FOREIGN KEY (Team_Name) REFERENCES Team(Name)
);



CREATE TABLE Gear_Company (
    Name VARCHAR(40),
    PRIMARY KEY (name)
);




CREATE TABLE Player (
    Player_ID number,
    Name VARCHAR2(40),
    Team_Name VARCHAR2(40) ,
    Jersey_number number,
    Position VARCHAR2(40),
    Goals number,
    Assists number,
    Salary decimal(10, 2),
    Gear_Name VARCHAR2(40),
    PRIMARY KEY (Player_ID),
    FOREIGN KEY (Team_Name) REFERENCES Team(Name),
    FOREIGN KEY (Gear_Name) REFERENCES GEAR_COMPANY(Name)
);


CREATE TABLE GAMES(
    home_team VARCHAR2(40),
    away_team VARCHAR2(40),
    winner number ,
    FOREIGN KEY (home_team) REFERENCES Team(Name),
    FOREIGN KEY (away_team) REFERENCES Team(Name)
);


ALTER TABLE PLAYER
    Add Constraint salary_min Check ( salary >= 25000 );

CREATE OR REPLACE TRIGGER check_player_count
BEFORE INSERT OR UPDATE ON Player
FOR EACH ROW
DECLARE
    team_player_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO team_player_count
    FROM Player
    WHERE Team_Name = :NEW.Team_Name;

    IF team_player_count >= 10 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Cannot add more than 10 players to a team.');
    END IF;
END;
/


CREATE OR REPLACE TRIGGER check_unique_jersey_number
BEFORE INSERT OR UPDATE ON Player
FOR EACH ROW
DECLARE
    jersey_count NUMBER;
BEGIN
    -- Count the occurrences of the jersey number for the team
    SELECT COUNT(*)
    INTO jersey_count
    FROM Player
    WHERE Team_Name = :NEW.Team_Name
    AND Jersey_number = :NEW.Jersey_number;

    -- If jersey_count is greater than 0, raise an error
    IF jersey_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Jersey number must be unique within the team.');
    END IF;
END;
/

CREATE OR REPLACE PROCEDURE play_game(
    home_team VARCHAR2,
    away_team VARCHAR2,
    winner number
)IS
BEGIN
    INSERT INTO GAMES VALUES (home_team, away_team, winner);

    if(winner = 1) THEN
        UPDATE Team t
        SET t.wins = t.wins + 1
        WHERE t.name = home_team;
        UPDATE team t
        SET t.losses = t.losses +1
        WHERE t.name = away_team;
    ELSIF (winner = 0) THEN
        UPDATE Team t
        SET t.wins = t.wins +1
        WHERE t.name = away_team;
        UPDATE team t
        SET t.losses = t.losses +1
        WHERE t.name = home_team;
    END IF;
    
END;
/





