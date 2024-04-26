/*Create Teams*/
INSERT INTO team VALUES ('Waterdogs', 'Philidelphia', 'Bill Tierney', 0, 0);
INSERT INTO team VALUES ('Cannons', 'Boston', 'Brian Holman', 0, 0);
INSERT INTO team VALUES ('Whipsnakes', 'Maryland','	Jim Stagnitta', 0, 0);
INSERT INTO team VALUES ('Atlas', 'New York', 'Mike Pressler', 0, 0);
INSERT INTO team VALUES ('Redwoods', 'California', 'Nat St. Laurent', 0, 0);
INSERT INTO team VALUES ('Chaos', 'Carolina', 'Andy Towers', 0, 0);
INSERT INTO team VALUES ('Outlaws', 'Denver', 'Tim Soudan', 0, 0);
INSERT INTO team VALUES ('Archers', 'Utah', 'Chris Bates', 0, 0);


/*Create sponsor companies*/
INSERT INTO Sponsor_Company  VALUES ('Ticketmaster');
INSERT INTO Sponsor_Company  VALUES ('Gatorade');
INSERT INTO Sponsor_Company  VALUES ('Progressive');
INSERT INTO Sponsor_Company  VALUES ('Vineyard Vines');
INSERT INTO Sponsor_Company  VALUES ('adidas');
INSERT INTO Sponsor_Company  VALUES ('HEX Performance');
INSERT INTO Sponsor_Company  VALUES ('Champion');
INSERT INTO Sponsor_Company  VALUES ('Capital One');
INSERT INTO Sponsor_Company  VALUES ('Nike');
INSERT INTO Sponsor_Company  VALUES ('Coca-Cola');
INSERT INTO Sponsor_Company  VALUES ('Verizon');

/*set up sponsors between teams and companies*/
INSERT INTO Sponsors  VALUES ('Waterdogs', 'Gatorade', 3);
INSERT INTO Sponsors  VALUES ('Cannons', 'Nike', 2);
INSERT INTO Sponsors  VALUES ('Whipsnakes', 'Coca-Cola', 5);
INSERT INTO Sponsors  VALUES ('Waterdogs', 'Verizon', 4);


/* Gear Companies*/
INSERT INTO Gear_Company VALUES ('STX');
INSERT INTO Gear_Company VALUES ('Cascade');
INSERT INTO Gear_Company VALUES ('Maverick');
INSERT INTO Gear_Company VALUES ('Warrior');
INSERT INTO Gear_Company VALUES ('Brine');


/* Waterdogs Starters */
INSERT INTO player VALUES (1, 'Kieran McArdle', 'Waterdogs', 6, 'Attack', 20, 12, 52500, 'STX');
INSERT INTO player VALUES (2, 'Michael Sowers', 'Waterdogs', 22, 'Attack', 15, 14, 73000, 'Cascade');
INSERT INTO player VALUES (3, 'Ethan Walker', 'Waterdogs', 57, 'Attack', 16, 14, 50500, 'Maverick');
INSERT INTO player VALUES (4, 'Jack Hannah', 'Waterdogs', 3, 'Midfield', 12, 4, 48500, 'Warrior');
INSERT INTO player VALUES (5, 'Connor Kelly', 'Waterdogs', 40, 'Midfield', 11, 1, 47000, 'Brine');
INSERT INTO player VALUES (6, 'Jake Carraway', 'Waterdogs', 19, 'Midfield', 12, 3, 46750, 'STX');
INSERT INTO player VALUES (7, 'Ben Randall', 'Waterdogs', 44, 'Defense', 2, 0, 47500, 'Cascade');
INSERT INTO player VALUES (8, 'Eli Gobrecht', 'Waterdogs', 25, 'Defense', 2, 0, 46000, 'Warrior');
INSERT INTO player VALUES (9, 'Liam Byrnes', 'Waterdogs', 29, 'Defense', 0, 2, 52500, 'Brine');
INSERT INTO player VALUES (10, 'Matt DeLuca', 'Waterdogs', 1, 'Goalie', 0, 0, 61500, 'STX');

/* Cannons Starters */
INSERT INTO player VALUES (11, 'Marcus Holman', 'Cannons', 1, 'Attack', 30, 13, 74500, 'STX');
INSERT INTO player VALUES (12, 'Asher Nolting', 'Cannons', 32, 'Attack', 21, 20, 67000, 'Cascade');
INSERT INTO player VALUES (13, 'Matt Kavanagh', 'Cannons', 50, 'Attack', 14, 10, 58500, 'Maverick');
INSERT INTO player VALUES (14, 'Ryan Drenner', 'Cannons', 22, 'Midfield', 16, 7, 51500, 'Warrior');
INSERT INTO player VALUES (15, 'Jonathan Donville', 'Cannons', 33, 'Midfield', 12, 11, 50000, 'Brine');
INSERT INTO player VALUES (16, 'Chris Aslanian', 'Cannons', 3, 'Midfield', 13, 5, 46000, 'STX');
INSERT INTO player VALUES (17, 'Jack Kielty', 'Cannons', 40, 'Defense', 0, 0, 53500, 'Cascade');
INSERT INTO player VALUES (18, 'Max Wayne', 'Cannons', 66, 'Defense', 0, 0, 48000, 'Warrior');
INSERT INTO player VALUES (19, 'Cade van Raaphorst', 'Cannons', 77, 'Defense', 8, 0, 59500, 'Brine');
INSERT INTO player VALUES (20, 'Colin Kirst', 'Cannons', 5, 'Goalie', 0, 1, 54500, 'STX');

/* Whipsnakes Starters */
INSERT INTO player VALUES (21, 'Will Manny', 'Whipsnakes', 4, 'Attack', 15, 16, 66500, 'STX');
INSERT INTO player VALUES (22, 'Jackson Morrill', 'Whipsnakes', 3, 'Attack', 11, 15, 59500, 'Cascade');
INSERT INTO player VALUES (23, 'Matt Rambo', 'Whipsnakes', 9, 'Attack', 14, 11, 62750, 'Maverick');
INSERT INTO player VALUES (24, 'Mike Chanenchuk', 'Whipsnakes', 1, 'Midfield', 17, 7, 56500, 'Warrior');
INSERT INTO player VALUES (25, 'Tucker Dordevic', 'Whipsnakes', 2, 'Midfield', 19, 2, 53000, 'Brine');
INSERT INTO player VALUES (26, 'Brad Smith', 'Whipsnakes', 27, 'Midfield', 5, 5, 51500, 'STX');
INSERT INTO player VALUES (27, 'Bryce Young', 'Whipsnakes', 41, 'Defense', 1, 0, 48000, 'Cascade');
INSERT INTO player VALUES (28, 'Tim Miller', 'Whipsnakes', 14, 'Defense', 0, 0, 47500, 'Warrior');
INSERT INTO player VALUES (29, 'Matthew Dunn', 'Whipsnakes', 33, 'Defense', 1, 1, 49500, 'Brine');
INSERT INTO player VALUES (30, 'Kyle Bernlohr', 'Whipsnakes', 35, 'Goalie', 0, 1, 58500, 'STX');

/* Atlas Starters */
INSERT INTO player VALUES (31, 'Chris Gray', 'Atlas', 4, 'Attack', 22, 13, 70500, 'STX');
INSERT INTO player VALUES (32, 'Jeff Teat', 'Atlas', 7, 'Attack', 11, 25, 64500, 'Cascade');
INSERT INTO player VALUES (33, 'Eric Law', 'Atlas', 15, 'Attack', 22, 5, 55750, 'Maverick');
INSERT INTO player VALUES (34, 'Bryan Costabile', 'Atlas',26 , 'Midfield', 15, 5, 52000, 'Warrior');
INSERT INTO player VALUES (35, 'Xander Dickson', 'Atlas', 10, 'Midfield', 14, 6, 49000, 'Brine');
INSERT INTO player VALUES (36, 'Myles Jones', 'Atlas', 8, 'Midfield', 6, 4, 52000, 'STX');
INSERT INTO player VALUES (37, 'Gavin Adler', 'Atlas', 88, 'Defense', 1, 0, 47000, 'Cascade');
INSERT INTO player VALUES (38, 'Tucker Durkin', 'Atlas', 51, 'Defense', 0, 0, 61000, 'Warrior');
INSERT INTO player VALUES (39, 'Michael Rexrode', 'Atlas', 22, 'Defense', 2, 0, 52000, 'Brine');
INSERT INTO player VALUES (40, 'Jack Concannon', 'Atlas', 12, 'Goalie', 0, 0, 56250, 'STX');

/* Redwoods Starters */
INSERT INTO player VALUES (41, 'Ryder Garnsey', 'Redwoods', 50, 'Attack', 25, 11, 68750, 'STX');
INSERT INTO player VALUES (42, 'Rob Pannell', 'Redwoods', 3, 'Attack', 10, 8, 64500, 'Cascade');
INSERT INTO player VALUES (43, 'Wes Berg', 'Redwoods', 14, 'Attack', 21, 2, 56000, 'Maverick');
INSERT INTO player VALUES (44, 'Cole Kirst', 'Redwoods', 47, 'Midfield', 13, 5, 54500, 'Warrior');
INSERT INTO player VALUES (45, 'Jules Heningburg', 'Redwoods', 7, 'Midfield', 8, 2, 51000, 'Brine');
INSERT INTO player VALUES (46, 'Romar Dennis', 'Redwoods', 5, 'Midfield', 7, 1, 58000, 'STX');
INSERT INTO player VALUES (47, 'Garrett Epple', 'Redwoods', 52, 'Defense', 1, 0, 60500, 'Cascade');
INSERT INTO player VALUES (48, 'Eddy Glazener', 'Redwoods', 30, 'Defense', 1, 0, 48750, 'Warrior');
INSERT INTO player VALUES (49, 'Arden Cohen', 'Redwoods', 40, 'Defense', 1, 0, 49000, 'Brine');
INSERT INTO player VALUES (50, 'Jack Kelly', 'Redwoods', 94, 'Goalie', 1, 0, 51000, 'STX');

/* Chaos Starters */
INSERT INTO player VALUES (51, 'Brian Minicus', 'Chaos', 7, 'Attack', 15, 9, 57000, 'STX');
INSERT INTO player VALUES (52, 'Josh Byrne', 'Chaos', 22, 'Attack', 15, 6, 62500, 'Cascade');
INSERT INTO player VALUES (53, 'Tye Kurtz', 'Chaos', 82, 'Attack', 11, 2, 52000, 'Maverick');
INSERT INTO player VALUES (54, 'Dhane Smith', 'Chaos', 92, 'Midfield', 5, 25, 58500, 'Warrior');
INSERT INTO player VALUES (55, 'Ryan Smith', 'Chaos', 43, 'Midfield', 14, 4, 52500, 'Brine');
INSERT INTO player VALUES (56, 'Kyle Jackson', 'Chaos', 47, 'Midfield', 10, 3, 49000, 'STX');
INSERT INTO player VALUES (57, 'Will Bowen', 'Chaos', 24, 'Defense', 1, 2, 55000, 'Cascade');
INSERT INTO player VALUES (58, 'Jack Rowlett', 'Chaos', 99, 'Defense', 0, 0, 62000, 'Warrior');
INSERT INTO player VALUES (59, 'Jarrod Neumann', 'Chaos', 88, 'Defense', 1, 0, 58000, 'Brine');
INSERT INTO player VALUES (60, 'Blaze Riorden', 'Chaos', 0, 'Goalie', 0, 4, 60000, 'STX');

/* Outlaws Starters */
INSERT INTO player VALUES (61, 'Logan Wisnauskas', 'Outlaws', 12, 'Attack', 11, 7, 50500, 'STX');
INSERT INTO player VALUES (62, 'Cross Ferrara', 'Outlaws', 22, 'Attack', 12, 2, 53000, 'Cascade');
INSERT INTO player VALUES (63, 'Brendan Nichtern', 'Outlaws', 20, 'Attack', 1, 1, 48000, 'Maverick');
INSERT INTO player VALUES (64, 'Sam Handley', 'Outlaws', 26, 'Midfield', 10, 3, 49000, 'Warrior');
INSERT INTO player VALUES (65, 'Justin Anderson', 'Outlaws', 21, 'Midfield', 9, 1, 51500, 'Brine');
INSERT INTO player VALUES (66, 'Jesse King', 'Outlaws', 19, 'Midfield', 3, 5, 50000, 'STX');
INSERT INTO player VALUES (67, 'Jesse Bernhardt', 'Outlaws', 36, 'Defense', 0, 4, 63000, 'Cascade');
INSERT INTO player VALUES (68, 'JT Giles-Harris', 'Outlaws', 1, 'Defense', 0, 0, 65750, 'Warrior');
INSERT INTO player VALUES (69, 'Michael Manley', 'Outlaws', 5, 'Defense', 2, 0, 54000, 'Brine');
INSERT INTO player VALUES (70, 'Sean Sconone', 'Outlaws', 50, 'Goalie', 0, 0, 52000, 'STX');

/* Archers Starters */
INSERT INTO player VALUES (71, 'Connor Fields', 'Archers', 5, 'Attack', 28, 11, 65000, 'STX');
INSERT INTO player VALUES (72, 'Mac OKeefe', 'Archers', 7, 'Attack', 26, 5, 58500, 'Cascade');
INSERT INTO player VALUES (73, 'Matt Moore', 'Archers', 11, 'Attack', 10, 6, 51000, 'Maverick');
INSERT INTO player VALUES (74, 'Tom Schreiber', 'Archers', 26, 'Midfield', 18, 17, 49000, 'Warrior');
INSERT INTO player VALUES (75, 'Tre Leclaire', 'Archers', 44, 'Midfield', 14, 4, 50000, 'Brine');
INSERT INTO player VALUES (76, 'Grant Ament', 'Archers', 16, 'Midfield', 4, 9, 56000, 'STX');
INSERT INTO player VALUES (77, 'Graeme Hossack', 'Archers', 81, 'Defense', 0, 1, 49000, 'Cascade');
INSERT INTO player VALUES (78, 'Warren Jeffrey', 'Archers', 27, 'Defense', 0, 1, 53000, 'Warrior');
INSERT INTO player VALUES (79, 'Matt McMaon', 'Archers', 77, 'Defense', 0, 0, 50000, 'Brine');
INSERT INTO player VALUES (80, 'Brett Dobson', 'Archers', 45, 'Goalie', 0, 0, 58000, 'STX');
