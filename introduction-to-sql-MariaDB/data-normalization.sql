ALTER TABLE users
ADD street VARCHAR(100),
ADD number VARCHAR(10),
ADD city VARCHAR(50),
ADD state VARCHAR(20);

UPDATE users
SET address = 'Washington street, 39, New york'
WHERE address LIKE '%39%';

UPDATE users
SET street = SUBSTRING_INDEX(SUBSTRING_INDEX (address, ',', 1), ',', -1),
    number = SUBSTRING_INDEX(SUBSTRING_INDEX (address, ',', 2), ',', -1),
    city = SUBSTRING_INDEX(SUBSTRING_INDEX (address, ',', 3), ',', -1),
    state= SUBSTRING_INDEX (address, ',', -1);
ALTER TABLE users
DROP COLUMN address;
