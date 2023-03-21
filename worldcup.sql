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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (166, 2018, 'Final', 948, 949, 4, 2);
INSERT INTO public.games VALUES (167, 2018, 'Third Place', 950, 951, 2, 0);
INSERT INTO public.games VALUES (168, 2018, 'Semi-Final', 949, 951, 2, 1);
INSERT INTO public.games VALUES (169, 2018, 'Semi-Final', 948, 950, 1, 0);
INSERT INTO public.games VALUES (170, 2018, 'Quarter-Final', 949, 957, 3, 2);
INSERT INTO public.games VALUES (171, 2018, 'Quarter-Final', 951, 959, 2, 0);
INSERT INTO public.games VALUES (172, 2018, 'Quarter-Final', 950, 961, 2, 1);
INSERT INTO public.games VALUES (173, 2018, 'Quarter-Final', 948, 963, 2, 0);
INSERT INTO public.games VALUES (174, 2018, 'Eighth-Final', 951, 965, 2, 1);
INSERT INTO public.games VALUES (175, 2018, 'Eighth-Final', 959, 967, 1, 0);
INSERT INTO public.games VALUES (176, 2018, 'Eighth-Final', 950, 969, 3, 2);
INSERT INTO public.games VALUES (177, 2018, 'Eighth-Final', 961, 971, 2, 0);
INSERT INTO public.games VALUES (178, 2018, 'Eighth-Final', 949, 973, 2, 1);
INSERT INTO public.games VALUES (179, 2018, 'Eighth-Final', 957, 975, 2, 1);
INSERT INTO public.games VALUES (180, 2018, 'Eighth-Final', 963, 977, 2, 1);
INSERT INTO public.games VALUES (181, 2018, 'Eighth-Final', 948, 979, 4, 3);
INSERT INTO public.games VALUES (182, 2014, 'Final', 980, 979, 1, 0);
INSERT INTO public.games VALUES (183, 2014, 'Third Place', 982, 961, 3, 0);
INSERT INTO public.games VALUES (184, 2014, 'Semi-Final', 979, 982, 1, 0);
INSERT INTO public.games VALUES (185, 2014, 'Semi-Final', 980, 961, 7, 1);
INSERT INTO public.games VALUES (186, 2014, 'Quarter-Final', 982, 989, 1, 0);
INSERT INTO public.games VALUES (187, 2014, 'Quarter-Final', 979, 950, 1, 0);
INSERT INTO public.games VALUES (188, 2014, 'Quarter-Final', 961, 965, 2, 1);
INSERT INTO public.games VALUES (189, 2014, 'Quarter-Final', 980, 948, 1, 0);
INSERT INTO public.games VALUES (190, 2014, 'Eighth-Final', 961, 997, 2, 1);
INSERT INTO public.games VALUES (191, 2014, 'Eighth-Final', 965, 963, 2, 0);
INSERT INTO public.games VALUES (192, 2014, 'Eighth-Final', 948, 1001, 2, 0);
INSERT INTO public.games VALUES (193, 2014, 'Eighth-Final', 980, 1003, 2, 1);
INSERT INTO public.games VALUES (194, 2014, 'Eighth-Final', 982, 971, 2, 1);
INSERT INTO public.games VALUES (195, 2014, 'Eighth-Final', 989, 1007, 2, 1);
INSERT INTO public.games VALUES (196, 2014, 'Eighth-Final', 979, 967, 1, 0);
INSERT INTO public.games VALUES (197, 2014, 'Eighth-Final', 950, 1011, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (948, 'France');
INSERT INTO public.teams VALUES (949, 'Croatia');
INSERT INTO public.teams VALUES (950, 'Belgium');
INSERT INTO public.teams VALUES (951, 'England');
INSERT INTO public.teams VALUES (957, 'Russia');
INSERT INTO public.teams VALUES (959, 'Sweden');
INSERT INTO public.teams VALUES (961, 'Brazil');
INSERT INTO public.teams VALUES (963, 'Uruguay');
INSERT INTO public.teams VALUES (965, 'Colombia');
INSERT INTO public.teams VALUES (967, 'Switzerland');
INSERT INTO public.teams VALUES (969, 'Japan');
INSERT INTO public.teams VALUES (971, 'Mexico');
INSERT INTO public.teams VALUES (973, 'Denmark');
INSERT INTO public.teams VALUES (975, 'Spain');
INSERT INTO public.teams VALUES (977, 'Portugal');
INSERT INTO public.teams VALUES (979, 'Argentina');
INSERT INTO public.teams VALUES (980, 'Germany');
INSERT INTO public.teams VALUES (982, 'Netherlands');
INSERT INTO public.teams VALUES (989, 'Costa Rica');
INSERT INTO public.teams VALUES (997, 'Chile');
INSERT INTO public.teams VALUES (1001, 'Nigeria');
INSERT INTO public.teams VALUES (1003, 'Algeria');
INSERT INTO public.teams VALUES (1007, 'Greece');
INSERT INTO public.teams VALUES (1011, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 197, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1011, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

