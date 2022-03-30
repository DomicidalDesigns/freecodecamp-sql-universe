--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    distance numeric(11,2) NOT NULL,
    number_identified integer NOT NULL,
    size integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    distance numeric(11,2) NOT NULL,
    number_identified integer NOT NULL,
    size integer,
    planet_id integer,
    description text,
    in_solar_system boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    distance numeric(11,2) NOT NULL,
    number_identified integer NOT NULL,
    size integer,
    star_id integer,
    description text,
    in_solar_system boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    distance numeric(11,2) NOT NULL,
    number_identified integer NOT NULL,
    size integer,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: ufo; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ufo (
    ufo_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    distance numeric(11,2) NOT NULL,
    number_unidentified integer NOT NULL,
    size integer,
    planet_id integer,
    description text
);


ALTER TABLE public.ufo OWNER TO freecodecamp;

--
-- Name: ufo_ufo_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.ufo_ufo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ufo_ufo_id_seq OWNER TO freecodecamp;

--
-- Name: ufo_ufo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.ufo_ufo_id_seq OWNED BY public.ufo.ufo_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: ufo ufo_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo ALTER COLUMN ufo_id SET DEFAULT nextval('public.ufo_ufo_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'MILKY WAY', 'SPIRAL', 2000000.00, 1, 30, 'The milky way galaxy. It looks like a road made of milk.');
INSERT INTO public.galaxy VALUES (2, 'ANDROMEDA', 'SPIRAL', 2537000.00, 2, 67, 'The second closest galaxy to Earth. BioWare created a Mass Effect game about colonizing this galaxy.');
INSERT INTO public.galaxy VALUES (3, 'PH-81', 'ELLIPTICAL', 90000000.00, 45, 10, '');
INSERT INTO public.galaxy VALUES (4, 'YL-27', 'IRREGULAR', 1000000.00, 867, 30, '');
INSERT INTO public.galaxy VALUES (5, 'ARA ORION', 'ELLIPTICAL', 3400000.00, 32, 30, '');
INSERT INTO public.galaxy VALUES (6, 'HYPERION', 'IRREGULAR', 200000.00, 69, 30, 'Borderlands?');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'MOON', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (2, 'MOON2', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (3, 'MOON3', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (4, 'MOON4', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (5, 'MOON5', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (6, 'MOON6', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (7, 'MOON7', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (8, 'MOON8', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (9, 'MOON9', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (10, 'MOON10', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (11, 'MOON11', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (12, 'MOON12', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (13, 'MOON13', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (14, 'MOON14', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (15, 'MOON15', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (16, 'MOON16', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (17, 'MOON17', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (18, 'MOON18', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (19, 'MOON19', 'LUNA', 1.00, 1, 1, 1, '', true);
INSERT INTO public.moon VALUES (20, 'MOON20', 'LUNA', 1.00, 1, 1, 1, '', true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'EARTH', 'G2V', 92.82, 1, 30, 1, 'The Sun.', true);
INSERT INTO public.planet VALUES (2, 'MERCURY', 'B8IVpMnHg', 2537000.00, 1, 67, 1, 'A star in Andromeda.', true);
INSERT INTO public.planet VALUES (3, 'VENUS', 'G1R', 90000000.00, 45, 10, 1, '', true);
INSERT INTO public.planet VALUES (4, 'MARS', 'A4T', 1000000.00, 867, 30, 1, '', true);
INSERT INTO public.planet VALUES (5, 'JUPITER', 'TT5', 3400000.00, 32, 30, 1, '', true);
INSERT INTO public.planet VALUES (6, 'SATURN', 'G56', 200000.00, 69, 30, 1, '', true);
INSERT INTO public.planet VALUES (7, 'URANUS', 'G56', 200000.00, 69, 30, 1, '', true);
INSERT INTO public.planet VALUES (8, 'NEPTUNE', 'G56', 200000.00, 69, 30, 1, '', true);
INSERT INTO public.planet VALUES (9, 'PLUTO', 'G56', 200000.00, 69, 30, 1, '', true);
INSERT INTO public.planet VALUES (10, 'Proxima Centauri b', 'G56', 200000.00, 69, 30, 2, '', false);
INSERT INTO public.planet VALUES (11, 'Epsilon Eridani b', 'G56', 200000.00, 69, 30, 2, '', false);
INSERT INTO public.planet VALUES (12, 'GJ 887 b', 'G56', 200000.00, 69, 30, 2, '', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'SUN', 'G2V', 92.82, 1, 30, 1, 'The Sun.');
INSERT INTO public.star VALUES (2, 'ALPHERATZ', 'B8IVpMnHg', 2537000.00, 1, 67, 2, 'A star in Andromeda.');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'G1R', 90000000.00, 45, 10, 1, '');
INSERT INTO public.star VALUES (4, 'KW Sagittarii', 'A4T', 1000000.00, 867, 30, 1, '');
INSERT INTO public.star VALUES (5, 'VV Cephei A', 'TT5', 3400000.00, 32, 30, 1, '');
INSERT INTO public.star VALUES (6, 'Mu Cephei', 'G56', 200000.00, 69, 30, 1, '');


--
-- Data for Name: ufo; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ufo VALUES (1, 'UFO', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (2, 'UFO2', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (3, 'UFO3', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (4, 'UFO4', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (5, 'UFO5', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (6, 'UFO6', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (7, 'UFO7', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (8, 'UFO8', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (9, 'UFO9', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (10, 'UFO10', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (11, 'UFO11', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (12, 'UFO12', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (13, 'UFO13', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (14, 'UFO14', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (15, 'UFO15', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (16, 'UFO16', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (17, 'UFO17', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (18, 'UFO18', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (19, 'UFO19', 'LUNA', 1.00, 1, 1, 1, '');
INSERT INTO public.ufo VALUES (20, 'UFO20', 'LUNA', 1.00, 1, 1, 1, '');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: ufo_ufo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.ufo_ufo_id_seq', 20, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: ufo ufo_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_name_key UNIQUE (name);


--
-- Name: ufo ufo_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_pkey PRIMARY KEY (ufo_id);


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
-- Name: ufo ufo_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ufo
    ADD CONSTRAINT ufo_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

