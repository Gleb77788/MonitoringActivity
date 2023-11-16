CREATE TABLE public."Person" (
	id_person bigint NOT NULL primary key,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
	email character varying(100) NOT NULL
);


ALTER TABLE public."Person" OWNER TO postgres;



ALTER TABLE public."Person" ALTER COLUMN id_person ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Person_id_person_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE public."Phone" (
    id_phone bigint NOT NULL primary key,
    number_phone integer NOT NULL,
    status_phone character varying(100) NOT NULL,
    fk_phone_person bigint REFERENCES "Person"(id_person)
);


ALTER TABLE public."Phone" OWNER TO postgres;



ALTER TABLE public."Phone" ALTER COLUMN id_phone ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Phone_id_phone_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

CREATE TABLE public."Activity_types" (
    id_activity_types bigint NOT NULL primary key,
    name_activity character varying(50) NOT NULL
);


ALTER TABLE public."Activity_types" OWNER TO postgres;


ALTER TABLE public."Activity_types" ALTER COLUMN id_activity_types ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Activity_types_id_activity_types_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);



CREATE TABLE public."Session" (
    id_session bigint NOT NULL primary key,
    time_start timestamp without time zone NOT NULL,
    time_end timestamp without time zone NOT NULL,
	fk_session_phone bigint REFERENCES "Phone"(id_phone),
	fk_session_activity bigint REFERENCES "Activity_types"(id_activity_types)
);


ALTER TABLE public."Session" OWNER TO postgres;


ALTER TABLE public."Session" ALTER COLUMN id_session ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Session_id_session_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);




CREATE TABLE public."Measurement" (
    id_measurement bigint NOT NULL,
    ax real NOT NULL,
    ay real NOT NULL,
    az real NOT NULL,
	fk_measurement_session bigint REFERENCES "Session"(id_session)
);


ALTER TABLE public."Measurement" OWNER TO postgres;



ALTER TABLE public."Measurement" ALTER COLUMN id_measurement ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Measurement_id_measurement_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);

--Drop table "Measurement", "Session";