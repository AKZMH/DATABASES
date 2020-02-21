CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN 
	IF NEW.name IS NULL  AND NEW.decription IS NULL THEN 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Both name and description are NULL';
	END IF;
END//

CREATE TRIGGER validate_name_description_update BEFORE INSERT ON products
FOR EACH ROW BEGIN 
	IF NEW.name IS NULL  AND NEW.decription IS NULL THEN 
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Both name and description are NULL';
	END IF;