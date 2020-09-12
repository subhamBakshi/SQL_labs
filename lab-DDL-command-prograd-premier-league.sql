-- (1)
CREATE TABLE skill (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- (2)
CREATE TABLE city (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- (3)
CREATE TABLE venue (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    city_id INT,
    FOREIGN KEY (city_id)
        REFERENCES city (id)
        ON DELETE SET NULL
);

-- (4)
 CREATE TABLE team(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    coach VARCHAR(100),
    home_city_id INT,
    captain INT
 );
 
 -- (5)
  CREATE TABLE player(
	id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(100),
    skill_id INT,
    team_id INT,
    FOREIGN KEY(skill_id) REFERENCES skill(id) ON DELETE SET NULL,
    FOREIGN KEY(team_id) REFERENCES team(id) ON DELETE SET NULL
 );
 
 -- (6)
 CREATE TABLE outcome(
	id INT PRIMARY KEY,
    status VARCHAR(100) NOT NULL,
    winner_team_id INT,
    wickets INT,
    runs INT,
    player_of_match INT,
    FOREIGN KEY(winner_team_id) REFERENCES team(id) ON DELETE SET NULL,
    FOREIGN KEY(player_of_match) REFERENCES player(id) ON DELETE SET NULL
 );
 
  -- (7)
   CREATE TABLE innings(
	id INT PRIMARY KEY,
    innings_number INT,
    batting_team_id INT NOT NULL,
    FOREIGN KEY(batting_team_id) REFERENCES team(id) 
   );

-- (8)
CREATE TABLE game(
	id INT PRIMARY KEY,
    game_date DATE,
    team_id_1 INT NOT NULL,
    team_id_2 INT NOT NULL,
    venue_id INT NOT NULL,
    outcome_id INT NOT NULL,
    first_innings_id INT,
    second_innings_id INT,
    FOREIGN KEY(team_id_1) REFERENCES team(id),
    FOREIGN KEY(team_id_1) REFERENCES team(id),
    FOREIGN KEY(venue_id) REFERENCES venue(id),
    FOREIGN KEY(outcome_id) REFERENCES outcome(id),
    FOREIGN KEY(first_innings_id) REFERENCES innings(id),
    FOREIGN KEY(second_innings_id) REFERENCES innings(id)
   );

-- (9)
CREATE TABLE umpire (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- (10)
CREATE TABLE umpire_type (
    id INT PRIMARY KEY,
    type VARCHAR(100)
);

-- (11)
CREATE TABLE game_umpire_type (
    id INT PRIMARY KEY,
    game_id INT not null,
    umpire_id INT not null,
    umpire_type_id INT not null,
    FOREIGN KEY(game_id) REFERENCES game(id),
    FOREIGN KEY(umpire_id) REFERENCES umpire(id),
    FOREIGN KEY(umpire_type_id) REFERENCES umpire_type(id)
);

-- (12)
CREATE TABLE wicket_type (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- (13)
CREATE TABLE delivery (
    id INT PRIMARY KEY,
    innings_id INT not null,
    overs INT,
    ball INT,
    batsman_id INT not null,
    bowler_id INT not null,
    non_striker_id INT not null,
    runs INT,
    FOREIGN KEY(innings_id) REFERENCES innings(id),
    FOREIGN KEY(batsman_id) REFERENCES player(id),
    FOREIGN KEY(bowler_id) REFERENCES player(id),
    FOREIGN KEY(non_striker_id) REFERENCES player(id)
);

-- (14)
CREATE TABLE wicket (
    id INT PRIMARY KEY,
    delivery_id INT not null,
    wicket_type_id INT not null,
    player_id INT not null,
    fielder_id INT,
    FOREIGN KEY(delivery_id) REFERENCES delivery(id),
    FOREIGN KEY(wicket_type_id) REFERENCES wicket_type(id),
    FOREIGN KEY(player_id) REFERENCES player(id),
    FOREIGN KEY(fielder_id) REFERENCES player(id)
);

-- (15)
CREATE TABLE extratype (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- (16)
CREATE TABLE extradelivery (
    id INT PRIMARY KEY,
    delivery_id INT not null,
    extra_type_id INT not null,
    runs INT,
    FOREIGN KEY(delivery_id) REFERENCES delivery(id),
    FOREIGN KEY(extra_type_id) REFERENCES extratype(id)
);

-- (17)
-- ALTER TABLE (insufficient data)


-- (18)
-- ALTER TABLE (insufficient data)

-- (19) (insufficient data)

-- (20)
ALTER TABLE outcome DROP COLUMN status;

-- (21)
DROP TABLE delivery;

-- (22)
DROP TABLE game;

-- (23) (insufficient data)

-- (24) (insufficient data)

-- (25)
DROP TABLE extratype;