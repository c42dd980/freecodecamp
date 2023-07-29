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
-- Name: comment; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comment (
    name character varying(32) NOT NULL,
    comment_id integer NOT NULL,
    int_1 integer,
    int_2 integer,
    num numeric(4,1)
);


ALTER TABLE public.comment OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(32) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comment VALUES ('a', 1, 1, 1, 1.3);
INSERT INTO public.comment VALUES ('a', 2, 1, 1, 1.3);
INSERT INTO public.comment VALUES ('a', 3, 1, 1, 1.3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'DSF', 'lJFLD', false, true);
INSERT INTO public.galaxy VALUES (2, 'FDDSF', 'lJFLD', false, true);
INSERT INTO public.galaxy VALUES (3, 'FDFDDSF', 'lJFLD', false, true);
INSERT INTO public.galaxy VALUES (4, 'AFDFDDSF', 'lJFLD', false, true);
INSERT INTO public.galaxy VALUES (5, 'FDAFDFDDSF', 'lJFLD', false, true);
INSERT INTO public.galaxy VALUES (6, 'FDSFDAFDFDDSF', 'lJFLD', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', 'Lorem ipsum', true, true, 1);
INSERT INTO public.moon VALUES (2, 'b', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (3, 'c', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (5, 'e', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (4, 'd', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (6, 'f', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (7, 'g', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (8, 'h', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (9, 'i', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (10, 'j', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (11, 'k', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (12, 'l', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (13, 'm', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (14, 'n', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (15, 'o', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (16, 'p', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (17, 'q', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (18, 'r', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (19, 's', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (20, 't', 'qwerty', true, true, 1);
INSERT INTO public.moon VALUES (21, 'u', 'qwerty', true, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (2, 'b', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (3, 'c', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (4, 'd', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (5, 'e', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (6, 'f', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (7, 'g', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (8, 'h', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (9, 'i', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (10, 'j', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (11, 'k', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (12, 'l', 'Lorem', false, false, 1);
INSERT INTO public.planet VALUES (13, 'm', 'Lorem', false, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'FDSFDAFDFDDSF', 'lJFLD', false, true, 1);
INSERT INTO public.star VALUES (2, 'FDFDDSF', 'lJFLD', false, true, 1);
INSERT INTO public.star VALUES (3, 'FhhDFDDSF', 'lJFLD', false, true, 1);
INSERT INTO public.star VALUES (4, 'Fhh4hDFDDSF', 'lJFLD', false, true, 1);
INSERT INTO public.star VALUES (5, 'F3chh4hDFDDSF', 'lJFLD', false, true, 1);
INSERT INTO public.star VALUES (6, 'F332chh4hDFDDSF', 'lJFLD', false, true, 1);


--
-- Name: comment comment_comment_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_comment_id_key UNIQUE (comment_id);


--
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (comment_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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

