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
    age integer,
    level integer,
    mass numeric,
    note text,
    is_good boolean,
    is_bad boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    level integer,
    mass numeric,
    note text,
    is_good boolean,
    is_bad boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    level integer,
    mass numeric,
    note text,
    is_good boolean,
    is_bad boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30),
    age integer,
    level integer,
    mass numeric,
    note text,
    is_good boolean,
    is_bad boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: test; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.test (
    test_id integer NOT NULL,
    name character varying(30) NOT NULL,
    note text
);


ALTER TABLE public.test OWNER TO freecodecamp;

--
-- Name: test_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.test ALTER COLUMN test_id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.test_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'notepad', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'vscode', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'sublime', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'webstorm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'phpstorm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'pycharm', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'rubymine', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'm101', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 1, 'm102', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 2, 'm201', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 2, 'm202', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 3, 'm301', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 3, 'm302', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 4, 'm401', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 4, 'm402', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 5, 'm501', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 5, 'm502', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 6, 'm601', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 6, 'm602', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 7, 'm701', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 7, 'm702', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 8, 'm801', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 8, 'm802', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 9, 'm901', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 10, 'm1001', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 11, 'm1101', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 12, 'm1201', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 12, 'm1202', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'npplanet1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 1, 'npplanet2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 2, 'vsp1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 2, 'vsp2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 3, 'subp1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 3, 'subp2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 4, 'webp1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 4, 'webp2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 5, 'phpp1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 5, 'phpp2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 6, 'pycp1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 6, 'pycp2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 7, 'rubp1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 7, 'rubp2', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'notepad1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 2, 'vscode1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 3, 'sublime1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 4, 'webstorm1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 5, 'phpstorm1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 6, 'pycharm1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 7, 'rubymine1', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.test VALUES (1, 'test1', NULL);
INSERT INTO public.test VALUES (2, 'test2', NULL);
INSERT INTO public.test VALUES (3, 'test3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: test_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.test_id_seq', 3, true);


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
-- Name: test test_ix1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_ix1 UNIQUE (name);


--
-- Name: test test_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (test_id);


--
-- Name: star galaxy_fx1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_fx1 FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_fk1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_fk1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_fk1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_fk1 FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

