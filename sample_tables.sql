/*
Test run experiment
*/

CREATE TABLE members (
    member_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (member_id)
);

CREATE TABLE committees (
    committee_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    PRIMARY KEY (committee_id)
);


INSERT INTO members(name)
VALUES("Garnett"),("Kevin"),("Cruise"),("Tom");

INSERT INTO committees(name)
VALUES("Reyes"),("Tom"),("Anthony"),("Mike");
