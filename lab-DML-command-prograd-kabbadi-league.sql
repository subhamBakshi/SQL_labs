INSERT INTO city VALUES (1, "Jaipur"),(2, "Chennai"),(3, "Pune");
INSERT INTO referee VALUES (1, "Jack"), (2, "Mike"),(3, "Peter");    
INSERT INTO innings VALUES (1, 101), (2, 102);
INSERT INTO extra_type VALUES(1, "extra1"),(2, "extra2"),(3, "extra3");
INSERT INTO skill VALUES (10, "skill1"),(20, "skill2"),(30, "skill3");
INSERT INTO player VALUES (1, "Jaipur", "INDIA",20, 1),(2, "Chennai","SRI LANKA",30,1),(3, "Pune", "INDIA",20,2);
INSERT INTO team VALUES (1, "Warriors", "c1", 1, 1),(2, "Rhinos", "c2", 2, 2),(3, "Kings", "c3", 3, 3);
INSERT INTO venue VALUES (1, "s1", 1),(2, "S2", 2),(3, "S3", 3);
INSERT INTO event VALUES (1, 2, 1, 3, 12, 8, 45, 9, 14);
INSERT INTO extra_event VALUES (1, 1, 3, 10, 2);
INSERT INTO outcome VALUES (1, "Win", 1, 26, 1),(2, "Draw",3, 20, 2);
INSERT INTO game VALUES (1, "2020-02-11", 1, 1, 3, 1, 1,1,1,2);

UPDATE player 
SET 
    name = 'Mumbai', country = 'ARES'
WHERE
    name=  'Pune' OR country ='INDIA';
    
UPDATE player 
SET 
    name = 'Bangalore', country = 'INDIA'
WHERE
   id = 2;
   
ALTER TABLE extra_type DROP name;
    




