CREATE TABLE city(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE referee(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE innings(
	id INT PRIMARY KEY,
    innings_number INT
);

CREATE TABLE extra_type(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE skill(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE team(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    coach VARCHAR(50),
    home_city INT NOT NULL,
    captain INT,
    FOREIGN KEY(home_city) REFERENCES city(id)
);

CREATE TABLE player(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    country VARCHAR(50),
    skill_id INT NOT NULL,
    team_id INT NOT NULL,
    FOREIGN KEY(skill_id) REFERENCES skill(id),
    FOREIGN KEY(team_id) REFERENCES team(id)
);

CREATE TABLE venue(
	id INT PRIMARY KEY,
    stadium_name VARCHAR(50),
    city_id INT NOT NULL,
    FOREIGN KEY(city_id) REFERENCES city(id)
);

CREATE TABLE event(
	id INT PRIMARY KEY,
    innings_id INT NOT NULL,
    raider_id INT NOT NULL,
    event_no INT,
    raid_point INT,
    defending_point INT,
    clock_in_seconds INT,
    team_one_score INT,
    team_two_score INT,
    FOREIGN KEY(innings_id) REFERENCES innings(id),
    FOREIGN KEY(raider_id) REFERENCES player(id)
);

CREATE TABLE extra_event(
	id INT PRIMARY KEY,
    event_id INT NOT NULL,
    extra_type_id INT NOT NULL,
    points INT,
   scoring_team_id INT NOT NULL,
    FOREIGN KEY(event_id) REFERENCES event(id),
    FOREIGN KEY(extra_type_id) REFERENCES extra_type(id)
);

CREATE TABLE outcome(
	id INT PRIMARY KEY,
    status VARCHAR(100),
    winner_team_id INT,
    score INT,
    player_of_match INT,
    FOREIGN KEY(winner_team_id) REFERENCES team(id),
    FOREIGN KEY(player_of_match) REFERENCES player(id)
);

CREATE TABLE game(
	id INT PRIMARY KEY,
    game_date DATE,
    team_id_1 INT NOT NULL,
    team_id_2 INT NOT NULL,
    venue_id INT NOT NULL,
    outcome_id INT NOT NULL,
    referee_id_1 INT NOT NULL,
    referee_id_2 INT NOT NULL,
    first_innings_id INT NOT NULL,
    second_innings_id INT NOT NULL,
    FOREIGN KEY(team_id_1) REFERENCES team(id),
    FOREIGN KEY(team_id_1) REFERENCES team(id),
    FOREIGN KEY(venue_id) REFERENCES venue(id),
    FOREIGN KEY(outcome_id) REFERENCES outcome(id),
    FOREIGN KEY(referee_id_1) REFERENCES referee(id),
    FOREIGN KEY(referee_id_2) REFERENCES referee(id),
    FOREIGN KEY(first_innings_id) REFERENCES innings(id),
    FOREIGN KEY(second_innings_id) REFERENCES innings(id)
);

DROP TABLE city;
DROP TABLE innings;
DROP TABLE skill;
DROP TABLE extra_type;


