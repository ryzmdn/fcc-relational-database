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
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years bigint NOT NULL,
    galaxy_type character varying(30),
    has_black_hole boolean NOT NULL,
    size_in_light_years bigint,
    is_active boolean DEFAULT true
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
    planet_id integer NOT NULL,
    distance_from_planet bigint NOT NULL,
    diameter_km integer,
    is_spherical boolean NOT NULL,
    has_atmosphere boolean
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
    star_id integer NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    diameter_km bigint,
    distance_from_star bigint
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
    galaxy_id integer NOT NULL,
    age_in_millions_of_years bigint NOT NULL,
    distance_from_earth numeric(10,2),
    brightness integer,
    is_binary boolean NOT NULL,
    temperature_kelvin integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_cluster (
    star_cluster_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    age_in_millions_of_years bigint NOT NULL,
    distance_from_earth numeric(10,2),
    has_black_hole boolean NOT NULL,
    is_spherical boolean NOT NULL,
    diameter_km bigint,
    cluster_type character varying(30)
);


ALTER TABLE public.star_cluster OWNER TO freecodecamp;

--
-- Name: star_cluster_star_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_cluster_star_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_cluster_star_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: star_cluster_star_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_cluster_star_cluster_id_seq OWNED BY public.star_cluster.star_cluster_id;


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: star_cluster star_cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster ALTER COLUMN star_cluster_id SET DEFAULT nextval('public.star_cluster_star_cluster_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600, 'Spiral', true, 100000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', 10000, 'Spiral', true, 120000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Third-largest in Local Group', 10000, 'Spiral', false, 60000, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 'Satellite galaxy', 1101, 'Irregular', false, 14000, true);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 'Dwarf galaxy', 6500, 'Irregular', false, 7000, true);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'Looks like a sombrero hat', 13250, 'Spiral', true, 50000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 384400, 3474, true, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 9377, 22, false, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 23460, 12, false, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 421700, 3642, true, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 671100, 3122, true, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 1070400, 5262, true, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1882700, 4821, true, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 1221870, 5150, true, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 238020, 504, true, false);
INSERT INTO public.moon VALUES (10, 'Mimas', 6, 185520, 396, true, false);
INSERT INTO public.moon VALUES (11, 'Triton', 8, 354759, 2707, true, true);
INSERT INTO public.moon VALUES (12, 'Naiad', 8, 48224, 58, false, false);
INSERT INTO public.moon VALUES (13, 'Thalassa', 8, 50074, 80, false, false);
INSERT INTO public.moon VALUES (14, 'Despina', 8, 52526, 150, false, false);
INSERT INTO public.moon VALUES (15, 'Galatea', 8, 61953, 174, false, false);
INSERT INTO public.moon VALUES (16, 'Larissa', 8, 73548, 194, true, false);
INSERT INTO public.moon VALUES (17, 'Proteus', 8, 117646, 420, false, false);
INSERT INTO public.moon VALUES (18, 'Nereid', 8, 5513818, 340, false, false);
INSERT INTO public.moon VALUES (19, 'Halimede', 8, 15728000, 62, false, false);
INSERT INTO public.moon VALUES (20, 'Sao', 8, 22422000, 44, false, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Smallest planet', false, true, 4879, 57909227);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Hottest planet', false, true, 12104, 108209475);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Our home planet', true, true, 12742, 149598262);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Red Planet', false, true, 6779, 227943824);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Largest planet', false, true, 139820, 778340821);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Ring planet', false, true, 116460, 1426666422);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice giant', false, true, 50724, 2870658186);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Wind planet', false, true, 49244, 4498396441);
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 2, 'First Earth-sized planet in habitable zone', false, true, 11000, 12400000);
INSERT INTO public.planet VALUES (10, 'Proxima b', 2, 'Potentially habitable', false, true, 12000, 7500000);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1d', 3, 'In TRAPPIST system', false, true, 10000, 3900000);
INSERT INTO public.planet VALUES (12, 'HD 40307g', 3, 'Super-Earth', false, true, 16400, 89400000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, 0.00, 1, false, 5778);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 1, 4850, 4.22, 0, false, 3042);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 1, 6000, 4.37, 2, true, 5790);
INSERT INTO public.star VALUES (4, 'Sirius', 1, 242, 8.61, 3, true, 9940);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 1, 8, 642.50, 4, false, 3600);
INSERT INTO public.star VALUES (6, 'Vega', 1, 455, 25.04, 2, false, 9602);


--
-- Data for Name: star_cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_cluster VALUES (6, 'Pleiades', 1, 'Also known as Seven Sisters', 100, 444.20, false, true, 43200000, 'Open Cluster');
INSERT INTO public.star_cluster VALUES (7, 'Hyades', 1, 'Nearest open cluster to Earth', 625, 153.00, false, false, 60480000, 'Open Cluster');
INSERT INTO public.star_cluster VALUES (8, 'Omega Centauri', 1, 'Largest globular cluster in Milky Way', 11500, 15800.00, true, true, 150000000, 'Globular Cluster');
INSERT INTO public.star_cluster VALUES (9, '47 Tucanae', 1, 'Second brightest globular cluster', 13000, 13070.00, false, true, 120000000, 'Globular Cluster');
INSERT INTO public.star_cluster VALUES (10, 'Beehive Cluster', 1, 'Also known as Praesepe', 600, 577.00, false, false, 35800000, 'Open Cluster');


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
-- Name: star_cluster_star_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_cluster_star_cluster_id_seq', 10, true);


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
-- Name: star_cluster star_cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster
    ADD CONSTRAINT star_cluster_name_key UNIQUE (name);


--
-- Name: star_cluster star_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster
    ADD CONSTRAINT star_cluster_pkey PRIMARY KEY (star_cluster_id);


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
-- Name: star_cluster star_cluster_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_cluster
    ADD CONSTRAINT star_cluster_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

