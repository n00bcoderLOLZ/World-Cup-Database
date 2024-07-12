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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    game_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL
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
-- Name: opponent_sequence; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.opponent_sequence
    START WITH 2
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opponent_sequence OWNER TO freecodecamp;

--
-- Name: opponents_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.opponents_seq
    START WITH 2
    INCREMENT BY 2
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.opponents_seq OWNER TO freecodecamp;

--
-- Name: team_shit; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.team_shit
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.team_shit OWNER TO freecodecamp;

--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name text NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq1; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq1
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq1 OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq1; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq1 OWNED BY public.teams.team_id;


--
-- Name: winner_sequence; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.winner_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.winner_sequence OWNER TO freecodecamp;

--
-- Name: winners_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.winners_seq
    START WITH 1
    INCREMENT BY 2
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.winners_seq OWNER TO freecodecamp;

--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq1'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2018, 'Final', 4, 2, 33, 66, 65);
INSERT INTO public.games VALUES (2018, 'Third Place', 2, 0, 34, 68, 67);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 2, 1, 35, 68, 66);
INSERT INTO public.games VALUES (2018, 'Semi-Final', 1, 0, 36, 67, 65);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 3, 2, 37, 74, 66);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 38, 76, 68);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 1, 39, 78, 67);
INSERT INTO public.games VALUES (2018, 'Quarter-Final', 2, 0, 40, 80, 65);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 41, 82, 68);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 1, 0, 42, 84, 76);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 3, 2, 43, 86, 67);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 0, 44, 88, 78);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 45, 90, 66);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 46, 92, 74);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 2, 1, 47, 94, 80);
INSERT INTO public.games VALUES (2018, 'Eighth-Final', 4, 3, 48, 96, 65);
INSERT INTO public.games VALUES (2014, 'Final', 1, 0, 49, 96, 97);
INSERT INTO public.games VALUES (2014, 'Third Place', 3, 0, 50, 78, 99);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 1, 0, 51, 99, 96);
INSERT INTO public.games VALUES (2014, 'Semi-Final', 7, 1, 52, 78, 97);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 53, 106, 99);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 54, 67, 96);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 2, 1, 55, 82, 78);
INSERT INTO public.games VALUES (2014, 'Quarter-Final', 1, 0, 56, 65, 97);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 57, 114, 78);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 58, 80, 82);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 0, 59, 118, 65);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 60, 120, 97);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 61, 88, 99);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 62, 124, 106);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 1, 0, 63, 84, 96);
INSERT INTO public.games VALUES (2014, 'Eighth-Final', 2, 1, 64, 128, 67);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 65);
INSERT INTO public.teams VALUES ('Croatia', 66);
INSERT INTO public.teams VALUES ('Belgium', 67);
INSERT INTO public.teams VALUES ('England', 68);
INSERT INTO public.teams VALUES ('Russia', 74);
INSERT INTO public.teams VALUES ('Sweden', 76);
INSERT INTO public.teams VALUES ('Brazil', 78);
INSERT INTO public.teams VALUES ('Uruguay', 80);
INSERT INTO public.teams VALUES ('Colombia', 82);
INSERT INTO public.teams VALUES ('Switzerland', 84);
INSERT INTO public.teams VALUES ('Japan', 86);
INSERT INTO public.teams VALUES ('Mexico', 88);
INSERT INTO public.teams VALUES ('Denmark', 90);
INSERT INTO public.teams VALUES ('Spain', 92);
INSERT INTO public.teams VALUES ('Portugal', 94);
INSERT INTO public.teams VALUES ('Argentina', 96);
INSERT INTO public.teams VALUES ('Germany', 97);
INSERT INTO public.teams VALUES ('Netherlands', 99);
INSERT INTO public.teams VALUES ('Costa Rica', 106);
INSERT INTO public.teams VALUES ('Chile', 114);
INSERT INTO public.teams VALUES ('Nigeria', 118);
INSERT INTO public.teams VALUES ('Algeria', 120);
INSERT INTO public.teams VALUES ('Greece', 124);
INSERT INTO public.teams VALUES ('United States', 128);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: opponent_sequence; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.opponent_sequence', 258, true);


--
-- Name: opponents_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.opponents_seq', 2, false);


--
-- Name: team_shit; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.team_shit', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1, false);


--
-- Name: teams_team_id_seq1; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq1', 128, true);


--
-- Name: winner_sequence; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.winner_sequence', 257, true);


--
-- Name: winners_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.winners_seq', 63, true);


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

