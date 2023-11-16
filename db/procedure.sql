CREATE PROCEDURE new_user(character varying, character varying, character varying)
LANGUAGE 'plpgsql'
AS $$
BEGIN

Insert into "Person" (firstname, lastname, email) values ($1, $2, $3);

END;
$$;


CALL new_user('Fill', 'Canady', 'filli@gmail.com');

SELECT * from "Person";