-- export to csv, using comma dilimeter, with headers

COPY
	(SELECT * FROM sample_import_table)
TO
	'/users/danielcorcoran/desktop/iris_export_comma.csv'
DELIMITER
	','
CSV HEADER

-- export to csv, using comma dilimeter, without headers

COPY
	(SELECT * FROM sample_import_table)
TO
	'/users/danielcorcoran/desktop/iris_export_comma_nh.csv'
DELIMITER
	','

-- export to csv, using pipeline dilimeter, with headers

COPY
	(SELECT * FROM sample_import_table)
TO
	'/users/danielcorcoran/desktop/iris_export_pipeline.csv'
DELIMITER
	'|'
CSV HEADER