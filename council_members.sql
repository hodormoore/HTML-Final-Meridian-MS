/*   Drops any tables in case there's one created   */

DROP TABLE IF EXISTS council_members;
DROP TABLE IF EXISTS districts;

/*   Creates a table for districts in the city   */

CREATE TABLE districts (
	district_id INTEGER PRIMARY KEY AUTOINCREMENT,
	district_name VARCHAR(50) NOT NULL UNIQUE,
	population INTEGER
);

/*   Creates a table for city council members   */

CREATE TABLE council_members (
	member_id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	position VARCHAR(50) DEFAULT 'Council Member',
	district_id INTEGER,
	FOREIGN KEY (district_id) REFERENCES districts(district_id)
);

/*   Inserts data into districts table   */

INSERT INTO districts (district_name, population) 
VALUES ('Arkham', 400),
('Gotham', 600),
('Basement', 1000),
('Cloud', 25),
('Rooftop', 40000);

/*   Inserts data into council members table   */

INSERT INTO council_members (first_name, last_name, position, district_id)
VALUES('Diet', 'Coke', 'Founder', 3),
('Ben', 'Hawks', 'Chief of Police', 3),
('Bat', 'Man', NULL, 1),
('Dale', 'Sr.', 'Him', 4),
('The', 'Joker', 'Baby', 1),
('Johnny', 'Sins', 'First Responder', 3),
('Chris', 'Chan', NULL, 2),
('Nova', 'Online', 'Proprietor', 2),
('Doug', 'Dimmadome', 'Hat Connoisseur', 5),
('Lightning', 'McQueen', 'Ka-Chow', 4),
('Chris', 'Angel', 'Mind-Freak', 3),
('Mike', 'Jones', 'Who', 5);

/*   Runs query to pull data from council members table   */

SELECT council_members.first_name, 
council_members.last_name,
council_members.position,
districts.district_name
FROM council_members

/*   Pulls data from districts table to fullfill data in council members table   */

JOIN districts ON council_members.district_id = districts.district_id