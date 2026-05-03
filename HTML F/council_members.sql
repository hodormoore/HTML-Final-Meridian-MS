DROP TABLE IF EXISTS council_members;

CREATE TABLE council_members (
	member_id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	position VARCHAR(50) DEFAULT 'Council Member',
	phone_number VARCHAR(50) DEFAULT '601-555-0000'
);

INSERT INTO council_members (first_name, last_name, position, phone_number)
VALUES ('Ben', 'Hawks', 'Security', DEFAULT),
('Diet', 'Coke', 'Founder', '601-'),
('George', 'Washington', NULL);

SELECT *
FROM council_members;