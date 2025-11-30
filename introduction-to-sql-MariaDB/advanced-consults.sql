SELECT * FROM users us
INNER JOIN reservation rs ON us.id = rs.id_user

SELECT * FROM destinations ds
INNER JOIN reservation rs ON ds.id = rs.id_user

SELECT * FROM users us
INNER JOIN reservation rs ON us.id = rs.id_user
INNER JOIN destinations ds ON rs.id_destination = ds.id

INSERT INTO destinations (name, description)
VALUES
('Cairo', 'Capital of Egypt, next to the Gize Pyramides')

INSERT INTO users (name, email, birthdate, street, number, city, state) 
VALUES 
('NoReserves', 'nores@example.com', '1990-11-01', 'Broad street', '112', 'Columbus', 'Ohio')

SELECT * FROM users us
LEFT JOIN reservation rs ON us.id = rs.id_user

SELECT * FROM reservation rs
RIGHT JOIN destinations ds ON ds.id = rs.id_destination

SELECT COUNT(DISTINCT us.id) AS total_users FROM users us
INNER JOIN reservation rs ON  us.id = rs.id_user

SELECT name, (SELECT COUNT (*) FROM reservation WHERE id_user = users.id) AS total_reservations FROM users

SELECT MAX(TIMESTAMPDIFF(year, birthdate, CURRENT_DATE())) AS maior_idade FROM users

SELECT id_destination, COUNT(*) FROM reservation
GROUP BY id_destination

SELECT id_destination, COUNT(*) AS res_amt FROM reservation
GROUP BY id_destination
ORDER BY res_amt

-- Indexes

CREATE INDEX idx_name ON users (name)

EXPLAIN
    SELECT * FROM users WHERE name = 'Jane Doe'

