-- Create tests tables to demonstrate constraints

-- tissue box tables
CREATE TABLE 
	tissue_boxes
(
	tissue_box_id SERIAL PRIMARY KEY,
	tissue_box_name VARCHAR(100),
	tissue_box_capacity INTEGER
)

-- tissues table, each tissue will link back to tissue_boxes table using tissue_box_id as a constraint (FK)
CREATE TABLE
	tissues
(
	tissue_id SERIAL PRIMARY KEY,
	tissue_box_id INTEGER,
	tissue_ply INTEGER,
	tissue_length INTEGER,
	tissue_width INTEGER,
	
	FOREIGN KEY (tissue_box_id) REFERENCES tissue_boxes (tissue_box_id)
)

INSERT INTO 
	tissue_boxes (tissue_box_name, tissue_box_capacity)
VALUES
	('COS', 200),
	('COS', 300),
	('KLEENEX', 220),
	('COLES', 200)
	
INSERT INTO
	tissues (tissue_box_id, tissue_ply, tissue_length, tissue_width)
VALUES
	(1,3,120,140),
	(1,3,120,140),
	(2,3,120,140),
	(2,3,120,140),
	(2,3,120,140),
	(3,2,120,140),
	(3,2,120,140),
	(3,2,120,140),
	(4,3,140,150)
	
-- Returns an error because tissue_box_id 5 is not present in tissue_boxes table as a primary key
INSERT INTO
	tissues (tissue_box_id, tissue_ply, tissue_length, tissue_width)
VALUES
	(5,3,120,140)
	
