INSERT INTO users (id, name, email, address, birthdate) VALUES (1, 'Test Example', 'test@example.com', 'Brooklyn, New York', '1992-11-23')

INSERT INTO destinations (id, name, description) VALUES (1, 'Copacabana', 'Rio de Janeiro beach')
INSERT INTO destinations (id, name, description) VALUES (2, 'Leblon', 'Most expensive Rio de Janeiro beach')
INSERT INTO destinations (id, name, description) VALUES (3, 'Niteroi', 'City next to Rio de Janeiro')

INSERT INTO reservation (id, id_user, id_destination, date, status) VALUES (1, 1, 2, '2026-01-25', 'pendente')

SELECT * FROM users;
SELECT * FROM destinations;
SELECT * FROM destinations
WHERE id = 1 OR name LIKE '%Leb%';
SELECT * FROM reservation;

UPDATE destinations
SET name = 'Cabo Frio'
WHERE id = 3;

DELETE FROM destinations
WHERE id = 3;

