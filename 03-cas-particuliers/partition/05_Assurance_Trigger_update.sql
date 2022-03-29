USE assurances;

DROP TRIGGER IF EXISTS before_update_clients;

DELIMITER $$

CREATE TRIGGER before_update_clients 
BEFORE UPDATE ON clients 
FOR EACH ROW 
BEGIN 
	DECLARE isOk TINYINT DEFAULT 0;
    
    IF (OLD.ets_id <> new.ets_id)
    THEN
			IF (new.ets_id > 0)
			THEN 
				IF OLD.particulier_id IS NULL
				THEN
					SET isOk = 1;
				END IF;
			END IF;
    
	IF isOk = 0
    THEN
		SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Erreur de mise à jour';
	END IF;
END IF;

END$$

DELIMITER ;

UPDATE clients SET ets_id = 11 WHERE client_id = 3;
