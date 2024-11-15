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
    name character varying(20) NOT NULL,
    has_life boolean,
    description text,
    star_id integer,
    age_in_millions_of_years numeric
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric,
    planet_id integer,
    age_in_millions_of_years numeric
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    star_id integer
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
-- Name: reachable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.reachable (
    reachable_id integer NOT NULL,
    by_austronout boolean,
    by_rocket boolean,
    by_telescope boolean,
    name character varying(20) NOT NULL
);


ALTER TABLE public.reachable OWNER TO freecodecamp;

--
-- Name: reachable_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.reachable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reachable_id_seq OWNER TO freecodecamp;

--
-- Name: reachable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.reachable_id_seq OWNED BY public.reachable.reachable_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    distance_from_earth integer,
    description text,
    age_in_millions_of_years numeric
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: reachable reachable_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reachable ALTER COLUMN reachable_id SET DEFAULT nextval('public.reachable_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'whirlpool', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'sombrero', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'magellanic', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'triangulum', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'andromeda', NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'seleneis', NULL, 4, NULL);
INSERT INTO public.moon VALUES (2, 'lunara', NULL, 4, NULL);
INSERT INTO public.moon VALUES (3, 'thalassa', NULL, 2, NULL);
INSERT INTO public.moon VALUES (4, 'elysium', NULL, 3, NULL);
INSERT INTO public.moon VALUES (5, 'astraea', NULL, 1, NULL);
INSERT INTO public.moon VALUES (6, 'florae', NULL, 1, NULL);
INSERT INTO public.moon VALUES (7, 'nivalis', NULL, 5, NULL);
INSERT INTO public.moon VALUES (8, 'celestria', NULL, 6, NULL);
INSERT INTO public.moon VALUES (9, 'terranova', NULL, 5, NULL);
INSERT INTO public.moon VALUES (10, 'aquiluna', NULL, 5, NULL);
INSERT INTO public.moon VALUES (11, 'cyros', NULL, 6, NULL);
INSERT INTO public.moon VALUES (12, 'astrolis', NULL, 4, NULL);
INSERT INTO public.moon VALUES (13, 'geotherma', NULL, 3, NULL);
INSERT INTO public.moon VALUES (14, 'spectraxis', NULL, 3, NULL);
INSERT INTO public.moon VALUES (15, 'kaimana', NULL, 3, NULL);
INSERT INTO public.moon VALUES (16, 'yinhe', NULL, 1, NULL);
INSERT INTO public.moon VALUES (17, 'jotunheim', NULL, 1, NULL);
INSERT INTO public.moon VALUES (18, 'feyluna', NULL, 2, NULL);
INSERT INTO public.moon VALUES (19, 'draconis', NULL, 2, NULL);
INSERT INTO public.moon VALUES (20, 'eldoria', NULL, 2, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'lumanira', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'nyxoria', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'heliosia', NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (4, 'terraverda', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'oceanara', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (6, 'gravitonix', NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'energaea', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'kaleekai', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'stellaris', NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'crystallos', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'velocitas', NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (12, 'nova terra', NULL, NULL, NULL, 4);


--
-- Data for Name: reachable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.reachable VALUES (1, true, true, true, 'landed');
INSERT INTO public.reachable VALUES (2, false, true, true, 'robot');
INSERT INTO public.reachable VALUES (3, false, false, true, 'observation');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'altair', 1, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'orion', 3, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'cepheus', 4, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'scorpius', 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'taurus', 6, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'andromeda', 5, NULL, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: reachable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.reachable_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


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
-- Name: reachable reachable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reachable
    ADD CONSTRAINT reachable_pkey PRIMARY KEY (reachable_id);


--
-- Name: reachable reachable_reachable_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.reachable
    ADD CONSTRAINT reachable_reachable_id_key UNIQUE (reachable_id);


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

