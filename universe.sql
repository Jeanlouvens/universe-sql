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
-- Name: gal_stars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gal_stars (
    gal_stars_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20)
);


ALTER TABLE public.gal_stars OWNER TO freecodecamp;

--
-- Name: gal_stars_gal_stars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gal_stars_gal_stars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gal_stars_gal_stars_id_seq OWNER TO freecodecamp;

--
-- Name: gal_stars_gal_stars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gal_stars_gal_stars_id_seq OWNED BY public.gal_stars.gal_stars_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    description text,
    galaxy_types character varying(20),
    age_in_millions_of_years integer NOT NULL
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
    name character varying(20),
    planet_id integer NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL
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
    name character varying(20),
    star_id integer NOT NULL,
    has_life boolean,
    distance_from_earth numeric NOT NULL
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
    name character varying(20),
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric NOT NULL
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
-- Name: gal_stars gal_stars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_stars ALTER COLUMN gal_stars_id SET DEFAULT nextval('public.gal_stars_gal_stars_id_seq'::regclass);


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
-- Data for Name: gal_stars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gal_stars VALUES (1, 1, 1, 'V Lactee sirius');
INSERT INTO public.gal_stars VALUES (2, 2, 2, 'Naine Grand chien');
INSERT INTO public.gal_stars VALUES (3, 3, 3, 'SagDEG Canopus');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie Lactee', 'Celle de la terre', 'SBbc', 1);
INSERT INTO public.galaxy VALUES (2, 'Galaxie naine', 'Satellite de la voie lactee', 'Irr', 2);
INSERT INTO public.galaxy VALUES (3, 'Segue 1', 'Satellite de la Voie lactee', 'dSph', 3);
INSERT INTO public.galaxy VALUES (4, 'SagDEG', 'Accretion partielle de la voie lactee', 'dSph/E7', 2);
INSERT INTO public.galaxy VALUES (5, 'Segue 2', 'Satellite de la voie lactee', 'dSph', 1);
INSERT INTO public.galaxy VALUES (6, 'Wilman1', 'Satelite de la voie lactee', 'dSph', 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Delmos', 4, 30, 400);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 20, 300);
INSERT INTO public.moon VALUES (3, 'Moon', 3, 20, 226047);
INSERT INTO public.moon VALUES (4, 'Adrastea', 5, 50, 600);
INSERT INTO public.moon VALUES (5, 'Altne', 5, 60, 700);
INSERT INTO public.moon VALUES (6, 'Amalthea', 5, 70, 800);
INSERT INTO public.moon VALUES (7, 'Ananke', 5, 80, 9000);
INSERT INTO public.moon VALUES (8, 'Aoede', 5, 90, 5000);
INSERT INTO public.moon VALUES (9, 'Arche', 5, 20, 3000);
INSERT INTO public.moon VALUES (10, 'Autonoe', 5, 10, 4000);
INSERT INTO public.moon VALUES (11, 'Carme', 5, 25, 4000);
INSERT INTO public.moon VALUES (12, 'Bestia', 7, 50, 5000);
INSERT INTO public.moon VALUES (13, 'Puck', 10, 30, 6000);
INSERT INTO public.moon VALUES (14, 'Despina', 6, 50, 9000);
INSERT INTO public.moon VALUES (15, 'Charon', 8, 30, 800);
INSERT INTO public.moon VALUES (16, 'Dla', 1, 15, 1000);
INSERT INTO public.moon VALUES (17, 'Elrene', 2, 50, 7000);
INSERT INTO public.moon VALUES (18, 'Elara', 9, 40, 5000);
INSERT INTO public.moon VALUES (19, 'Ersa', 11, 50, 6500);
INSERT INTO public.moon VALUES (20, 'Europa', 12, 65, 7500);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercure', 1, false, 500);
INSERT INTO public.planet VALUES (2, 'Venus', 2, false, 300);
INSERT INTO public.planet VALUES (3, 'Terre', 3, true, 400);
INSERT INTO public.planet VALUES (4, 'Mars', 4, true, 200);
INSERT INTO public.planet VALUES (5, 'Jupyther', 5, false, 100);
INSERT INTO public.planet VALUES (6, 'Nepturne', 6, false, 100);
INSERT INTO public.planet VALUES (7, 'Saturne', 1, false, 500);
INSERT INTO public.planet VALUES (8, 'Pluton', 2, false, 500);
INSERT INTO public.planet VALUES (9, 'X', 3, false, 300);
INSERT INTO public.planet VALUES (10, 'Uranus', 4, false, 200);
INSERT INTO public.planet VALUES (11, 'Ceres', 5, false, 100);
INSERT INTO public.planet VALUES (12, ' Eris', 6, false, 300);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sirius', 1, true, 300);
INSERT INTO public.star VALUES (2, 'Grand chien', 2, false, 200);
INSERT INTO public.star VALUES (3, 'Canopus', 3, false, 500);
INSERT INTO public.star VALUES (4, 'Arcturus', 4, false, 400);
INSERT INTO public.star VALUES (5, 'Alpha Centauri A', 5, true, 200);
INSERT INTO public.star VALUES (6, 'Vega', 6, false, 500);


--
-- Name: gal_stars_gal_stars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gal_stars_gal_stars_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: gal_stars gal_stars_gal_stars_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_stars
    ADD CONSTRAINT gal_stars_gal_stars_id_key UNIQUE (gal_stars_id);


--
-- Name: gal_stars gal_stars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_stars
    ADD CONSTRAINT gal_stars_pkey PRIMARY KEY (gal_stars_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: gal_stars gal_stars_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_stars
    ADD CONSTRAINT gal_stars_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: gal_stars gal_stars_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gal_stars
    ADD CONSTRAINT gal_stars_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

