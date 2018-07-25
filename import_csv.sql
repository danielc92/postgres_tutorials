-- create new table

CREATE TABLE
	sample_import_table
(
	sepal_length FLOAT8,
	sepal_width FLOAT8,
	petal_length FLOAT8,
	petal_width FLOAT8,
	species VARCHAR(255)
)

-- TRUNCATE sample_import_table

TRUNCATE 
	sample_import_table

-- import csv file to newly created table
-- note: appends to existing table, does not TRUNCATE table before hand

COPY 
	sample_import_table
FROM
	'/users/danielcorcoran/desktop/iris.csv'
DELIMITER
	','
CSV HEADER

-- test select from newly created table
SELECT
	* 
FROM
	sample_import_table