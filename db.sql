PGDMP      5            
    {            accelerometer    16.0    16.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    accelerometer    DATABASE     �   CREATE DATABASE accelerometer WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE accelerometer;
                postgres    false            �            1259    16426    Activity_types    TABLE     �   CREATE TABLE public."Activity_types" (
    id_activity_types bigint NOT NULL,
    name_activity character varying(50) NOT NULL
);
 $   DROP TABLE public."Activity_types";
       public         heap    postgres    false            �            1259    16435 $   Activity_types_id_activity_types_seq    SEQUENCE     �   ALTER TABLE public."Activity_types" ALTER COLUMN id_activity_types ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Activity_types_id_activity_types_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16421    Measurement    TABLE     �   CREATE TABLE public."Measurement" (
    id_measurement bigint NOT NULL,
    ax real NOT NULL,
    ay real NOT NULL,
    az real NOT NULL
);
 !   DROP TABLE public."Measurement";
       public         heap    postgres    false            �            1259    16462    Measurement_id_measurement_seq    SEQUENCE     �   ALTER TABLE public."Measurement" ALTER COLUMN id_measurement ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Measurement_id_measurement_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16398    Person    TABLE     �   CREATE TABLE public."Person" (
    email character varying(100) NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    id_person bigint NOT NULL
);
    DROP TABLE public."Person";
       public         heap    postgres    false            �            1259    16408    Person_id_person_seq    SEQUENCE     �   ALTER TABLE public."Person" ALTER COLUMN id_person ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Person_id_person_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16403    Phone    TABLE     �   CREATE TABLE public."Phone" (
    number_phone integer NOT NULL,
    status_phone character varying(100) NOT NULL,
    id_phone bigint NOT NULL
);
    DROP TABLE public."Phone";
       public         heap    postgres    false            �            1259    16461    Phone_id_phone_seq    SEQUENCE     �   ALTER TABLE public."Phone" ALTER COLUMN id_phone ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Phone_id_phone_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16416    Session    TABLE     �   CREATE TABLE public."Session" (
    id_session bigint NOT NULL,
    time_start timestamp without time zone NOT NULL,
    time_end timestamp without time zone NOT NULL
);
    DROP TABLE public."Session";
       public         heap    postgres    false            �            1259    16460    Session_id_session_seq    SEQUENCE     �   ALTER TABLE public."Session" ALTER COLUMN id_session ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Session_id_session_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �          0    16426    Activity_types 
   TABLE DATA           L   COPY public."Activity_types" (id_activity_types, name_activity) FROM stdin;
    public          postgres    false    220   '        �          0    16421    Measurement 
   TABLE DATA           C   COPY public."Measurement" (id_measurement, ax, ay, az) FROM stdin;
    public          postgres    false    219   D        �          0    16398    Person 
   TABLE DATA           I   COPY public."Person" (email, firstname, lastname, id_person) FROM stdin;
    public          postgres    false    215   a        �          0    16403    Phone 
   TABLE DATA           G   COPY public."Phone" (number_phone, status_phone, id_phone) FROM stdin;
    public          postgres    false    216   ~        �          0    16416    Session 
   TABLE DATA           E   COPY public."Session" (id_session, time_start, time_end) FROM stdin;
    public          postgres    false    218   �        �           0    0 $   Activity_types_id_activity_types_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public."Activity_types_id_activity_types_seq"', 1, false);
          public          postgres    false    221            �           0    0    Measurement_id_measurement_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public."Measurement_id_measurement_seq"', 1, false);
          public          postgres    false    224            �           0    0    Person_id_person_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Person_id_person_seq"', 1, false);
          public          postgres    false    217            �           0    0    Phone_id_phone_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Phone_id_phone_seq"', 1, false);
          public          postgres    false    223            �           0    0    Session_id_session_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."Session_id_session_seq"', 1, false);
          public          postgres    false    222            '           2606    16432 "   Activity_types Activity_types_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public."Activity_types"
    ADD CONSTRAINT "Activity_types_pkey" PRIMARY KEY (id_activity_types);
 P   ALTER TABLE ONLY public."Activity_types" DROP CONSTRAINT "Activity_types_pkey";
       public            postgres    false    220            %           2606    16425    Measurement Measurement_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."Measurement"
    ADD CONSTRAINT "Measurement_pkey" PRIMARY KEY (id_measurement);
 J   ALTER TABLE ONLY public."Measurement" DROP CONSTRAINT "Measurement_pkey";
       public            postgres    false    219                       2606    16415    Person Person_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public."Person"
    ADD CONSTRAINT "Person_pkey" PRIMARY KEY (id_person);
 @   ALTER TABLE ONLY public."Person" DROP CONSTRAINT "Person_pkey";
       public            postgres    false    215            !           2606    16434    Phone Phone_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public."Phone"
    ADD CONSTRAINT "Phone_pkey" PRIMARY KEY (id_phone);
 >   ALTER TABLE ONLY public."Phone" DROP CONSTRAINT "Phone_pkey";
       public            postgres    false    216            #           2606    16420    Session Session_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."Session"
    ADD CONSTRAINT "Session_pkey" PRIMARY KEY (id_session);
 B   ALTER TABLE ONLY public."Session" DROP CONSTRAINT "Session_pkey";
       public            postgres    false    218            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     