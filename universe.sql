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
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    galaxy_type character varying(30),
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
    name character varying(30) NOT NULL,
    type character varying(30) NOT NULL,
    description text,
    planet_id integer
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
    name character varying(30) NOT NULL,
    is_spherical boolean,
    distance_from_earth numeric(4,1) NOT NULL,
    description text,
    has_life boolean,
    star_id integer
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(30),
    is_alive boolean,
    description text
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth numeric(10,1),
    description text,
    galaxy_id integer
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Spiral', 'Our home galaxy, containing billions of stars, including the Sun.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Spiral', 'The closest spiral galaxy to the Milky Way and expected to merge with it in the future.');
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 12000, 'Elliptical', 'A galaxy with a bright nucleus and a prominent dust lane giving it a sombrero-like appearance.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 8000, 'Spiral', 'A beautiful interacting galaxy pair with prominent spiral arms.');
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 9000, 'Spiral', 'The third-largest galaxy in the Local Group, after the Milky Way and Andromeda.');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 5000, 'Ring', 'A rare ring galaxy created by a collision with another galaxy.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 'Natural', 'The only natural satellite of Earth, influencing tides.', 13);
INSERT INTO public.moon VALUES (22, 'Phobos', 'Natural', 'The larger and closer of the two moons of Mars.', 14);
INSERT INTO public.moon VALUES (23, 'Deimos', 'Natural', 'The smaller and more distant of the two moons of Mars.', 24);
INSERT INTO public.moon VALUES (24, 'Io', 'Natural', 'A volcanically active moon, the most geologically active body in the Solar System.', 22);
INSERT INTO public.moon VALUES (25, 'Europa', 'Natural', 'A smooth, icy moon believed to have a subsurface ocean.', 21);
INSERT INTO public.moon VALUES (26, 'Ganymede', 'Natural', 'The largest moon in the Solar System.', 20);
INSERT INTO public.moon VALUES (27, 'Callisto', 'Natural', 'An ancient, heavily cratered moon.', 16);
INSERT INTO public.moon VALUES (28, 'Titan', 'Natural', 'The largest moon of Saturn, with a thick atmosphere.', 17);
INSERT INTO public.moon VALUES (29, 'Enceladus', 'Natural', 'A moon with geysers ejecting water into space.', 17);
INSERT INTO public.moon VALUES (30, 'Mimas', 'Natural', 'A small moon with a large crater, resembling the Death Star.', 17);
INSERT INTO public.moon VALUES (31, 'Triton', 'Natural', 'The largest moon of Neptune, with a retrograde orbit.', 18);
INSERT INTO public.moon VALUES (32, 'Nereid', 'Natural', 'A moon with one of the most eccentric orbits in the Solar System.', 18);
INSERT INTO public.moon VALUES (33, 'Pandora', 'Fictional', 'A lush, habitable moon from the Alpha Centauri system.', 20);
INSERT INTO public.moon VALUES (34, 'Endor', 'Fictional', 'A forested moon, home to the Ewoks.', 21);
INSERT INTO public.moon VALUES (35, 'Luna Prime', 'Fictional', 'A major trading hub in the Trappist-1 system.', 19);
INSERT INTO public.moon VALUES (36, 'Charon', 'Natural', 'A large moon of Pluto, forming a binary system.', 13);
INSERT INTO public.moon VALUES (37, 'Hydra', 'Natural', 'A small, irregularly shaped moon of Pluto.', 15);
INSERT INTO public.moon VALUES (38, 'Styx', 'Natural', 'A tiny moon of Pluto.', 13);
INSERT INTO public.moon VALUES (39, 'Oberon', 'Natural', 'An icy moon of Uranus, the second-largest.', 14);
INSERT INTO public.moon VALUES (40, 'Titania', 'Natural', 'The largest moon of Uranus.', 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (13, 'Earth', true, 0.0, 'The only planet known to harbor life.', true, 1);
INSERT INTO public.planet VALUES (14, 'Mars', true, 54.6, 'Known as the Red Planet, it has the tallest volcano in the solar system.', false, 1);
INSERT INTO public.planet VALUES (15, 'Venus', true, 41.4, 'A planet with a thick atmosphere and extreme greenhouse effect.', false, 1);
INSERT INTO public.planet VALUES (16, 'Proxima b', true, 4.2, 'An exoplanet orbiting Proxima Centauri in the habitable zone.', false, 4);
INSERT INTO public.planet VALUES (17, 'Kepler-452b', true, 402.0, 'A potentially habitable exoplanet 1,400 light-years away.', false, 6);
INSERT INTO public.planet VALUES (18, 'Jupiter', true, 778.0, 'The largest planet in the Solar System with 79 known moons.', false, 1);
INSERT INTO public.planet VALUES (19, 'Saturn', true, 427.0, 'Famous for its extensive ring system.', false, 1);
INSERT INTO public.planet VALUES (20, 'Neptune', true, 495.1, 'The farthest known planet in the Solar System.', false, 1);
INSERT INTO public.planet VALUES (21, 'Alpha Centauri Bb', true, 4.4, 'A potential rocky planet orbiting Alpha Centauri B.', false, 5);
INSERT INTO public.planet VALUES (22, 'TOI-700 d', true, 101.4, 'An Earth-sized exoplanet in the habitable zone of TOI-700.', false, 2);
INSERT INTO public.planet VALUES (23, 'Gliese 581g', true, 20.3, 'A potentially habitable exoplanet orbiting the star Gliese 581.', false, 3);
INSERT INTO public.planet VALUES (24, 'Trappist-1e', true, 39.0, 'A rocky exoplanet in the habitable zone of the Trappist-1 system.', false, 4);


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'satellite 1', 'natural', true, ' no desc');
INSERT INTO public.satellite VALUES (2, 'satellite 2', 'artifical', false, ' no description this time');
INSERT INTO public.satellite VALUES (3, 'satellite 3', 'natural', true, ' haallooo');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0.0, 'The star at the center of our Solar System.', 1);
INSERT INTO public.star VALUES (2, 'Sirius', 242, 8.6, 'The brightest star in the night sky, part of the Canis Major constellation.', 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10000, 642.5, 'A red supergiant star in the Orion constellation nearing the end of its life.', 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4700, 4.2, 'The closest known star to the Sun, part of the Alpha Centauri system.', 2);
INSERT INTO public.star VALUES (5, 'Rigel', 8000, 860.0, 'A bright blue supergiant in the Orion constellation.', 3);
INSERT INTO public.star VALUES (6, 'Vega', 455, 25.0, 'A bright star in the Lyra constellation, part of the Summer Triangle.', 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 24, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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

