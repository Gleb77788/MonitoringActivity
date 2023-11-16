

BEGIN;
UPDATE "Measurement"
SET ax = ax - 1.01
WHERE id_measurement = 5;
Insert into "Person" (firstname, lastname, email) values ('Gleb', 'Ten', 'gleb@gmail.com');
ROLLBACK;

SELECT * from "Measurement";