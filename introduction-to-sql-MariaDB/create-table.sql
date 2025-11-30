CREATE TABLE users (
    id INT,
    name VARCHAR (255) NOT NULL COMMENT 'name of the users',
    email VARCHAR(100) NOT NULL UNIQUE COMMENT 'email of the users',
    address VARCHAR(50) NOT NULL COMMENT 'address of th eusers',
    birthdate DATE NOT NULL COMMENT 'date of birth of the users'
)

CREATE TABLE destinations (
    id INT,
    name VARCHAR(255) NOT NULL UNIQUE COMMENT 'name of the destinations',
    description VARCHAR(255) NOT NULL COMMENT 'description of the destinations'
)

CREATE TABLE reservation (
    id INT,
    id_user INT COMMENT 'reference to the user that owns this reserve',
    id_destination INT COMMENT 'reference to the destination of the reserve',
    date DATE COMMENT 'reservation date',
    status VARCHAR(255) DEFAULT 'pending' COMMENT 'the reserve current status (confirmed, pending, canceled, etc.)'
)