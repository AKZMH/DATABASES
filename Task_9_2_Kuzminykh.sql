SELECT 
	p.name,
	c.name
FROM 
	products AS p
JOIN
	catalogs AS c 
ON 
	p.catalog_id = c.id;

CREATE OR REPLACE VIEW products_catalogs AS 
SELECT
	p.name AS product,
	c.name AS cataalog
FROM 
	products AS p 
JOIN
	catalogs AS c 
ON 
	p.catalog_id = c.id;