ALTER TABLE users
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id)

ALTER TABLE destinations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id)

ALTER TABLE reservation
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id)

ALTER TABLE reservation
ADD CONSTRAINT fk_reserve_user
FOREIGN KEY (id_user) REFERENCES users (id)

ALTER TABLE reservation
ADD CONSTRAINT fk_reserve_destination
FOREIGN KEY (id_destination) REFERENCES destinations (id)

# Select to visualize the FKs
SELECT
    kcu.constraint_name,
    kcu.table_name AS referencing_table,
    kcu.column_name AS referencing_column,
    kcu.referenced_table_name AS referenced_table,
    kcu.referenced_column_name AS referenced_column
FROM
    information_schema.KEY_COLUMN_USAGE AS kcu
WHERE
    kcu.referenced_table_name IS NOT NULL
    AND kcu.table_schema = 'travel_agency_db'
ORDER BY
    referencing_table, constraint_name;

ALTER TABLE reservation DROP CONSTRAINT fk_reserve_user

ALTER TABLE reservation DROP CONSTRAINT fk_reserve_destination

ALTER TABLE reservation
ADD CONSTRAINT fk_reserve_user
FOREIGN KEY (id_user) REFERENCES users (id)
ON DELETE CASCADE

ALTER TABLE reservation
ADD CONSTRAINT fk_reserve_destination
FOREIGN KEY (id_destination) REFERENCES destinations (id)
ON DELETE CASCADE

-- Populating the db

INSERT INTO users (name, email, birthdate, street, number, city, state) 
VALUES 
('Jhon Doe', 'jhondoe@example.com', '2004-12-20', 'Lombard street', '74', 'San Francisco', 'California'),
('Jane Doe', 'janedoe@example.com', '2001-02-14', 'Bourbon street', '1359', 'New Orleans', 'Louisiana'),
('Jane Doe', 'janedoe2@example.com', '2005-08-02', 'Marilla street', '568', 'Dallas', 'Texas')

INSERT INTO destinations (name, description) VALUES ('Dubai', 'Big city in the middle east')

INSERT INTO reservation (id_user, id_destination, date, status) 
VALUES 
(1,1,'2026-03-20', 'pending'), 
(2,1,'2026-11-15', 'confirmed'),
(3,3,'2026-12-10', 'canceled'),
(2,2,'2026-07-24', 'confirmed')

SELECT * FROM destinations

SELECT * FROM reservation

SELECT * FROM users

UPDATE reservation
SET status = 'pending'
WHERE id = 1;