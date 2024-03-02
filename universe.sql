--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance_from_earth integer NOT NULL,
    of_universe_no text,
    junk_number character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: junk; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.junk (
    junk_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.junk OWNER TO freecodecamp;

--
-- Name: junk_junk_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.junk_junk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.junk_junk_id_seq OWNER TO freecodecamp;

--
-- Name: junk_junk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.junk_junk_id_seq OWNED BY public.junk.junk_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance_from_earth integer NOT NULL,
    planet_id integer,
    junk_number character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance_from_earth integer NOT NULL,
    still_alive boolean,
    star_id integer,
    junk_number character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age integer NOT NULL,
    distance_from_earth integer NOT NULL,
    brightness_level numeric,
    still_alive boolean,
    galaxy_id integer,
    junk_number character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: junk junk_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junk ALTER COLUMN junk_id SET DEFAULT nextval('public.junk_junk_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'M64', 15555, 145345, 'one', NULL);
INSERT INTO public.galaxy VALUES (2, 'M81/82', 25345, 43523445, 'one', NULL);
INSERT INTO public.galaxy VALUES (3, 'UGC 03087', 3254234, 342423, 'one', NULL);
INSERT INTO public.galaxy VALUES (4, 'Burbidge Chain', 2342424, 234224, 'one', NULL);
INSERT INTO public.galaxy VALUES (5, 'Antennae Galaxies', 23423564, 7567453, 'one', NULL);
INSERT INTO public.galaxy VALUES (6, 'Backward Galaxy', 5434234, 456754545, 'one', NULL);


--
-- Data for Name: junk; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.junk VALUES (1, 'HELLOW', NULL);
INSERT INTO public.junk VALUES (2, 'RAM', NULL);
INSERT INTO public.junk VALUES (3, 'SAFD', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 254345, 3434, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4535345, 56345, 3, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 324234, 3453, 2, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 34535, 32424, 3, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 234324, 34534, 3, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', 235343, 43534, 3, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 234234, 234234, 3, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 32423, 234234, 9, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 32423, 3244, 9, NULL);
INSERT INTO public.moon VALUES (10, 'Mimas', 234234, 234234, 9, NULL);
INSERT INTO public.moon VALUES (11, 'Tethys', 23424, 234234, 9, NULL);
INSERT INTO public.moon VALUES (12, 'Dione', 4234, 3243242, 9, NULL);
INSERT INTO public.moon VALUES (13, 'Rhea', 234234, 234234, 9, NULL);
INSERT INTO public.moon VALUES (14, 'Iapetus', 234234, 234234, 9, NULL);
INSERT INTO public.moon VALUES (15, 'Miranda', 324234, 324234, 7, NULL);
INSERT INTO public.moon VALUES (16, 'Ariel', 234324, 234234, 9, NULL);
INSERT INTO public.moon VALUES (17, 'Umbriel', 234234, 234234, 9, NULL);
INSERT INTO public.moon VALUES (18, 'Titania', 23543453, 23432, 9, NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 234234, 435345, 7, NULL);
INSERT INTO public.moon VALUES (20, 'Triton', 234234, 234234, 9, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 345345, 0, true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'mars', 324234, 435322, true, 1, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', 234234, 324534, true, 1, NULL);
INSERT INTO public.planet VALUES (4, 'mercury', 324534, 3453, true, 1, NULL);
INSERT INTO public.planet VALUES (5, 'venus', 2432534, 435345, true, 1, NULL);
INSERT INTO public.planet VALUES (6, 'neptune', 23455, 345345, true, 1, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', 235434, 34534, true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'k2355', 324234, 345345, false, 4, NULL);
INSERT INTO public.planet VALUES (9, 'saturn', 234234, 3245345, true, 1, NULL);
INSERT INTO public.planet VALUES (10, 'k9532', 234, 23423423, true, 5, NULL);
INSERT INTO public.planet VALUES (11, 'KF234', 2434, 5345354, false, 6, NULL);
INSERT INTO public.planet VALUES (12, 'k63f9', 23424, 43564435, false, 3, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 234234, 5345345, 90, true, 2, NULL);
INSERT INTO public.star VALUES (2, 'Canopus', 346546, 567345, 96, true, 1, NULL);
INSERT INTO public.star VALUES (3, 'Arcturus', 354355, 544356, 80, false, 1, NULL);
INSERT INTO public.star VALUES (4, 'Vega', 45645, 43523, 50, true, 5, NULL);
INSERT INTO public.star VALUES (5, 'Rigel', 234, 345, 24, false, 6, NULL);
INSERT INTO public.star VALUES (6, 'Capella', 234234, 435, 60, false, 4, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: junk_junk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.junk_junk_id_seq', 3, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, true);


--
-- Name: galaxy galaxy_junk_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_junk_number_key UNIQUE (junk_number);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: junk junk_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junk
    ADD CONSTRAINT junk_name_key UNIQUE (name);


--
-- Name: junk junk_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.junk
    ADD CONSTRAINT junk_pkey PRIMARY KEY (junk_id);


--
-- Name: moon moon_junk_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_junk_number_key UNIQUE (junk_number);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_junk_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_junk_number_key UNIQUE (junk_number);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_junk_number_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_junk_number_key UNIQUE (junk_number);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

