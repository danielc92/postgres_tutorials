-- querying VARCHAR with greater than operator and CAST as FLOAT8

CREATE TABLE test
(
	number1 VARCHAR(50),
	number2 VARCHAR(40),
	number3 VARCHAR(24)
)

INSERT INTO test
VALUES
('34','312','40'),
('123','312','1234')

SELECT 
	* 
FROM 
	test
WHERE
	CAST(number1 AS FLOAT8) > 40

-- create table account for testing
CREATE table account
(
	row_id serial PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	age INTEGER,
	some_date DATE
)

-- create some test data
INSERT INTO 
	account (first_name, last_name, age, some_date)
VALUES
	('jack', 'jones', 32, '1992-04-20'),
	('sam', 'smith', 12, '2015-02-1'),
	('jess', 'robins', 72, '1993-04-10'),
	('harry', 'hemsworth', 34, '1995-12-20')

-- SELECT INTO, creating subset tables from existing tables

SELECT
	row_id,
	first_name,
	last_name,
	age
INTO TABLE 
	account_subset1
FROM 
	account
WHERE
	row_id >= 3

-- Verify account_subset1

SELECT * FROM account_subset1

--Renaming tables and databases

ALTER TABLE
	account_subset1
RENAME TO
	account_subset_one
	
-- Adding new column
ALTER TABLE
	account
ADD COLUMN
	credit_card_no INTEGER
	
ALTER TABLE
	account
ADD COLUMN
	country VARCHAR(255)

-- Updating values in new colunmns
UPDATE 
	account
SET 
	credit_card_no = -9999
WHERE
	row_id >0
	
UPDATE	
	account
SET
	country = 'Australia'
WHERE
	row_id > 0
	
-- Shorter method

UPDATE
	account
SET 
	country = 'New Zealand'

-- Verify Changes
SELECT * FROM account

-- Removing old column
ALTER TABLE
	account
DROP COLUMN
	age
	
-- Verify Changes
SELECT * FROM account


SELECT 
	*
INTO
	account_clone
FROM
	account

-- TRUNCATE deletes contents of table, not the table itself
TRUNCATE TABLE
	account
	
-- Verify all contents deleted
SELECT * FROM account

-- Created subset of actor table with last names starting with a-f
SELECT 
	*
INTO
	actor_last_name_ABCDEF
FROM
	actor
WHERE
	TRIM(LOWER(last_name)) LIKE 'a%' OR 
	TRIM(LOWER(last_name)) LIKE 'b%' OR
	TRIM(LOWER(last_name)) LIKE 'c%' OR
	TRIM(LOWER(last_name)) LIKE 'd%' OR
	TRIM(LOWER(last_name)) LIKE 'e%' OR
	TRIM(LOWER(last_name)) LIKE 'f%'
	
SELECT
	*
FROM
	actor_last_name_ABCDEF
