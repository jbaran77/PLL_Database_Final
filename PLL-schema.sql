/*
DROP TABLE TEAM Cascade Constraints;

DROP TABLE PLAYER Cascade Constraints;

DROP TABLE SPONSORS;

DROP TABLE GEAR_COMPANY;

DROP TABLE SPONSOR_COMPANY;
*/

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
    Years_on_Deal number,
    PRIMARY KEY (name)
);


CREATE TABLE Sponsors (
    Team_Name VARCHAR2(40),
    Sponsor_Name VARCHAR2(40),
    PRIMARY KEY (Team_Name, Sponsor_Name),
    FOREIGN KEY (Team_Name) REFERENCES Team(Name)
);



CREATE TABLE Gear_Company (
    Name VARCHAR(40),
    Years_on_Deal number,
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
    FOREIGN KEY (Team_Name) REFERENCES Team(Name),
    FOREIGN KEY (Gear_Name) REFERENCES GEAR_COMPANY(Name)
);



ALTER TABLE PLAYER
    Add Constraint salary_min Check ( salary >= 25000 );


CREATE OR REPLACE TRIGGER check_salary_cap
BEFORE INSERT OR UPDATE ON Player
FOR EACH ROW
DECLARE
    check_salary_cap NUMBER;
BEGIN
    SELECT SUM(p.salary)
    INTO check_salary_cap
    FROM PLAYER p, Team t
    WHERE p.Team_name = t.name;

    IF check_salary_cap >= 735000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Team cannot go over salary cap.');
    END IF;
END;
/


CREATE OR REPLACE TRIGGER check_player_count
BEFORE INSERT OR UPDATE ON PLAYER
FOR EACH ROW
DECLARE
    v_player_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_player_count
    FROM PLAYER p, Team t
    WHERE p.Team_name = t.name;

    IF v_player_count >= 10 THEN
        RAISE_APPLICATION_ERROR(-20002, 'A team cannot have more than 10 players.');
    END IF;
END;
/





