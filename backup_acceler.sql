--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

-- Started on 2023-12-14 13:16:05

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 16435)
-- Name: Activity_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Activity_types" (
    id_activity_types bigint NOT NULL,
    name_activity character varying(50) NOT NULL
);


ALTER TABLE public."Activity_types" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16434)
-- Name: Activity_types_id_activity_types_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Activity_types" ALTER COLUMN id_activity_types ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Activity_types_id_activity_types_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 227 (class 1259 OID 16490)
-- Name: Company; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Company" (
    id_company bigint NOT NULL,
    "Name" text NOT NULL
);


ALTER TABLE public."Company" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16489)
-- Name: Company_id_company_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Company" ALTER COLUMN id_company ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Company_id_company_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16474)
-- Name: Measurement; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Measurement" (
    id_measurement bigint NOT NULL,
    ax real NOT NULL,
    ay real NOT NULL,
    az real NOT NULL,
    fk_measurement_session bigint
);


ALTER TABLE public."Measurement" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16473)
-- Name: Measurement_id_measurement_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Measurement" ALTER COLUMN id_measurement ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Measurement_id_measurement_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 219 (class 1259 OID 16441)
-- Name: Person; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Person" (
    id_person bigint NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    email character varying(100) NOT NULL,
    login character varying(50) NOT NULL,
    password character varying(50) NOT NULL
);


ALTER TABLE public."Person" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16440)
-- Name: Person_id_person_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Person" ALTER COLUMN id_person ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Person_id_person_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16447)
-- Name: Phone; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Phone" (
    id_phone bigint NOT NULL,
    number_phone bigint NOT NULL,
    status_phone character varying(100) NOT NULL,
    fk_phone_person bigint
);


ALTER TABLE public."Phone" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16446)
-- Name: Phone_id_phone_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Phone" ALTER COLUMN id_phone ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Phone_id_phone_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16458)
-- Name: Session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Session" (
    id_session bigint NOT NULL,
    time_start timestamp without time zone NOT NULL,
    time_end timestamp without time zone NOT NULL,
    fk_session_phone bigint,
    fk_session_activity bigint
);


ALTER TABLE public."Session" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16457)
-- Name: Session_id_session_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public."Session" ALTER COLUMN id_session ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Session_id_session_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16429)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- TOC entry 4816 (class 0 OID 16435)
-- Dependencies: 217
-- Data for Name: Activity_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Activity_types" (id_activity_types, name_activity) FROM stdin;
\.


--
-- TOC entry 4826 (class 0 OID 16490)
-- Dependencies: 227
-- Data for Name: Company; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Company" (id_company, "Name") FROM stdin;
\.


--
-- TOC entry 4824 (class 0 OID 16474)
-- Dependencies: 225
-- Data for Name: Measurement; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Measurement" (id_measurement, ax, ay, az, fk_measurement_session) FROM stdin;
\.


--
-- TOC entry 4818 (class 0 OID 16441)
-- Dependencies: 219
-- Data for Name: Person; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Person" (id_person, firstname, lastname, email, login, password) FROM stdin;
5	Gleb	Shishkin	gleb12@gmail.com	Gleb_android	qwe123
1	James	Bell	james12@gmail.com	James_user	123
2	Charles	Harris	charles_harris@gmail.com	Charles_gamer	456
4	Mary	Thornton	mary_th98@gmail.com	MaryJain	789
\.


--
-- TOC entry 4820 (class 0 OID 16447)
-- Dependencies: 221
-- Data for Name: Phone; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Phone" (id_phone, number_phone, status_phone, fk_phone_person) FROM stdin;
\.


--
-- TOC entry 4822 (class 0 OID 16458)
-- Dependencies: 223
-- Data for Name: Session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Session" (id_session, time_start, time_end, fk_session_phone, fk_session_activity) FROM stdin;
\.


--
-- TOC entry 4814 (class 0 OID 16429)
-- Dependencies: 215
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
20231124130233_InitialCreate	7.0.13
20231124135936_AddTableCompany	7.0.13
\.


--
-- TOC entry 4832 (class 0 OID 0)
-- Dependencies: 216
-- Name: Activity_types_id_activity_types_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Activity_types_id_activity_types_seq"', 1, false);


--
-- TOC entry 4833 (class 0 OID 0)
-- Dependencies: 226
-- Name: Company_id_company_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Company_id_company_seq"', 1, false);


--
-- TOC entry 4834 (class 0 OID 0)
-- Dependencies: 224
-- Name: Measurement_id_measurement_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Measurement_id_measurement_seq"', 1, false);


--
-- TOC entry 4835 (class 0 OID 0)
-- Dependencies: 218
-- Name: Person_id_person_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Person_id_person_seq"', 5, true);


--
-- TOC entry 4836 (class 0 OID 0)
-- Dependencies: 220
-- Name: Phone_id_phone_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Phone_id_phone_seq"', 1, false);


--
-- TOC entry 4837 (class 0 OID 0)
-- Dependencies: 222
-- Name: Session_id_session_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Session_id_session_seq"', 1, false);


--
-- TOC entry 4651 (class 2606 OID 16439)
-- Name: Activity_types Activity_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Activity_types"
    ADD CONSTRAINT "Activity_types_pkey" PRIMARY KEY (id_activity_types);


--
-- TOC entry 4666 (class 2606 OID 16496)
-- Name: Company Company_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Company"
    ADD CONSTRAINT "Company_pkey" PRIMARY KEY (id_company);


--
-- TOC entry 4648 (class 2606 OID 16433)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 4654 (class 2606 OID 16445)
-- Name: Person Person_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Person"
    ADD CONSTRAINT "Person_pkey" PRIMARY KEY (id_person);


--
-- TOC entry 4658 (class 2606 OID 16451)
-- Name: Phone Phone_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Phone"
    ADD CONSTRAINT "Phone_pkey" PRIMARY KEY (id_phone);


--
-- TOC entry 4662 (class 2606 OID 16462)
-- Name: Session Session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_pkey" PRIMARY KEY (id_session);


--
-- TOC entry 4649 (class 1259 OID 16482)
-- Name: Activity_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Activity_id_key" ON public."Activity_types" USING btree (id_activity_types);


--
-- TOC entry 4664 (class 1259 OID 16497)
-- Name: Company_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Company_id_key" ON public."Company" USING btree (id_company);


--
-- TOC entry 4663 (class 1259 OID 16483)
-- Name: IX_Measurement_fk_measurement_session; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Measurement_fk_measurement_session" ON public."Measurement" USING btree (fk_measurement_session);


--
-- TOC entry 4655 (class 1259 OID 16485)
-- Name: IX_Phone_fk_phone_person; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Phone_fk_phone_person" ON public."Phone" USING btree (fk_phone_person);


--
-- TOC entry 4659 (class 1259 OID 16487)
-- Name: IX_Session_fk_session_activity; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Session_fk_session_activity" ON public."Session" USING btree (fk_session_activity);


--
-- TOC entry 4660 (class 1259 OID 16488)
-- Name: IX_Session_fk_session_phone; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "IX_Session_fk_session_phone" ON public."Session" USING btree (fk_session_phone);


--
-- TOC entry 4652 (class 1259 OID 16484)
-- Name: Person_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Person_id_key" ON public."Person" USING btree (id_person);


--
-- TOC entry 4656 (class 1259 OID 16486)
-- Name: Phone_id_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX "Phone_id_key" ON public."Phone" USING btree (id_phone);


--
-- TOC entry 4670 (class 2606 OID 16477)
-- Name: Measurement Measurement_fk_measurement_session_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Measurement"
    ADD CONSTRAINT "Measurement_fk_measurement_session_fkey" FOREIGN KEY (fk_measurement_session) REFERENCES public."Session"(id_session);


--
-- TOC entry 4667 (class 2606 OID 16452)
-- Name: Phone Phone_fk_phone_person_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Phone"
    ADD CONSTRAINT "Phone_fk_phone_person_fkey" FOREIGN KEY (fk_phone_person) REFERENCES public."Person"(id_person);


--
-- TOC entry 4668 (class 2606 OID 16463)
-- Name: Session Session_fk_session_activity_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_fk_session_activity_fkey" FOREIGN KEY (fk_session_activity) REFERENCES public."Activity_types"(id_activity_types);


--
-- TOC entry 4669 (class 2606 OID 16468)
-- Name: Session Session_fk_session_phone_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_fk_session_phone_fkey" FOREIGN KEY (fk_session_phone) REFERENCES public."Phone"(id_phone);


-- Completed on 2023-12-14 13:16:06

--
-- PostgreSQL database dump complete
--

