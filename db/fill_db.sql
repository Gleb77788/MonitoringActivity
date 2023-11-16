-- Insert into "Person" (firstname, lastname, email) values ('James', 'Bell', 'james12@gmail.com');
-- Insert into "Person" (firstname, lastname, email) values ('Charles', 'Harris', 'charles_harris@gmail.com');
-- Insert into "Person" (firstname, lastname, email) values ('Mary', 'Thornton', 'mary_th98@gmail.com');

-- select * from "Person";

-- Insert into "Phone" (number_phone, status_phone, fk_phone_person) values (3800896572, 'active', '1');
-- Insert into "Phone" (number_phone, status_phone, fk_phone_person) values (3809897972, 'active', '2');
-- Insert into "Phone" (number_phone, status_phone, fk_phone_person) values (3800893490, 'inactive', '1');
-- Insert into "Phone" (number_phone, status_phone, fk_phone_person) values (3800896567, 'inactive', '3');
-- Insert into "Phone" (number_phone, status_phone, fk_phone_person) values (3800896578, 'inactive', '2');

--select * from "Phone";

--Insert into "Session" (time_start, time_end, fk_session_phone) values (3800896572, 'active', '1');

--Insert into "Measurement" (ax, ay, az, fk_measurement_session) values (0.0473, -9.5678, 0.0973, '1');
--Insert into "Measurement" (ax, ay, az, fk_measurement_session) values (0.0345, -9.8978, 0.0973, '2');
--Insert into "Measurement" (ax, ay, az, fk_measurement_session) values (10.0473, -5.5678, 1.7334, '3');


--select * from "Measurement";

--Insert into "Activity_types" (name_activity) values ('running');
--Insert into "Activity_types" (name_activity) values ('walk');
--Insert into "Activity_types" (name_activity) values ('stand');


--DELETE FROM "Activity_types"
--WHERE id_activity_types=2;

--select * from "Activity_types";

--Insert into "Session" (time_start, time_end, fk_session_phone, fk_session_activity) values ('2023-11-06 09:05:35', '2023-11-06 09:10:35', '6', '1');
--Insert into "Session" (time_start, time_end, fk_session_phone, fk_session_activity) values ('2023-11-06 11:05:35', '2023-11-06 11:10:35', '7', '3');
--Insert into "Session" (time_start, time_end, fk_session_phone, fk_session_activity) values ('2023-10-06 12:05:35', '2023-10-06 12:10:35', '10', '4');

--select * from "Session";


