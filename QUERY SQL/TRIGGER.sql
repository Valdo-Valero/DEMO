
DELIMITER $$
CREATE TRIGGER actualiza_actor
BEFORE UPDATE ON actor
FOR EACH ROW
BEGIN
  IF actor_id = 1 AND OLD.first_name <> 'PENELOPE'
    THEN
      SET NEW.last_name = NEW.first_name;
  END IF ;
END$$
DELIMITER ;