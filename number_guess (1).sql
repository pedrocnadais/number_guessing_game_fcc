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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    games_played integer,
    game_id integer NOT NULL,
    username_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    username_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_username_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_username_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_username_id_seq OWNER TO freecodecamp;

--
-- Name: users_username_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_username_id_seq OWNED BY public.users.username_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users username_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN username_id SET DEFAULT nextval('public.users_username_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (NULL, 1, 2, 1);
INSERT INTO public.games VALUES (NULL, 2, 3, 1);
INSERT INTO public.games VALUES (NULL, 3, 1, 1);
INSERT INTO public.games VALUES (NULL, 4, 1, 1);
INSERT INTO public.games VALUES (NULL, 5, 1, 1);
INSERT INTO public.games VALUES (NULL, 6, 1, 3);
INSERT INTO public.games VALUES (NULL, 7, 4, 1);
INSERT INTO public.games VALUES (NULL, 8, 4, 1);
INSERT INTO public.games VALUES (NULL, 9, 5, 1);
INSERT INTO public.games VALUES (NULL, 10, 5, 1);
INSERT INTO public.games VALUES (NULL, 11, 4, 1);
INSERT INTO public.games VALUES (NULL, 12, 4, 2);
INSERT INTO public.games VALUES (NULL, 13, 4, 1);
INSERT INTO public.games VALUES (NULL, 14, 1, 13);
INSERT INTO public.games VALUES (NULL, 15, 15, 11);
INSERT INTO public.games VALUES (NULL, 16, 16, 41);
INSERT INTO public.games VALUES (NULL, 17, 18, 4);
INSERT INTO public.games VALUES (NULL, 18, 19, 27);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Pedro');
INSERT INTO public.users VALUES (2, 'Clara');
INSERT INTO public.users VALUES (3, 'Vivian');
INSERT INTO public.users VALUES (4, 'user_1723051004525');
INSERT INTO public.users VALUES (5, 'user_1723051004524');
INSERT INTO public.users VALUES (6, 'user_1723051713875');
INSERT INTO public.users VALUES (7, 'user_1723051713874');
INSERT INTO public.users VALUES (8, 'user_1723051998312');
INSERT INTO public.users VALUES (9, 'Jota');
INSERT INTO public.users VALUES (10, 'user_1723051998311');
INSERT INTO public.users VALUES (11, 'user_1723052538635');
INSERT INTO public.users VALUES (12, 'user_1723052538634');
INSERT INTO public.users VALUES (13, 'user_1723052748536');
INSERT INTO public.users VALUES (14, 'user_1723052748535');
INSERT INTO public.users VALUES (15, 'Cecilia');
INSERT INTO public.users VALUES (16, 'user_1723052965918');
INSERT INTO public.users VALUES (17, 'user_1723052965917');
INSERT INTO public.users VALUES (18, 'Vitor');
INSERT INTO public.users VALUES (19, 'user_1723053673613');
INSERT INTO public.users VALUES (20, 'user_1723053673612');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 18, true);


--
-- Name: users_username_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_username_id_seq', 20, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (username_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_username_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_username_id_fkey FOREIGN KEY (username_id) REFERENCES public.users(username_id);


--
-- PostgreSQL database dump complete
--

