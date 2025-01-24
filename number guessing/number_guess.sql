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
    game_id integer NOT NULL,
    user_id integer,
    number integer NOT NULL
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
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 236);
INSERT INTO public.games VALUES (2, 1, 370);
INSERT INTO public.games VALUES (3, 2, 767);
INSERT INTO public.games VALUES (4, 2, 945);
INSERT INTO public.games VALUES (5, 1, 959);
INSERT INTO public.games VALUES (6, 1, 354);
INSERT INTO public.games VALUES (7, 1, 947);
INSERT INTO public.games VALUES (8, 3, 18);
INSERT INTO public.games VALUES (9, 4, 182);
INSERT INTO public.games VALUES (10, 4, 924);
INSERT INTO public.games VALUES (11, 5, 389);
INSERT INTO public.games VALUES (12, 5, 308);
INSERT INTO public.games VALUES (13, 4, 160);
INSERT INTO public.games VALUES (14, 4, 685);
INSERT INTO public.games VALUES (15, 4, 679);
INSERT INTO public.games VALUES (16, 6, 352);
INSERT INTO public.games VALUES (17, 6, 419);
INSERT INTO public.games VALUES (18, 7, 457);
INSERT INTO public.games VALUES (19, 7, 750);
INSERT INTO public.games VALUES (20, 6, 540);
INSERT INTO public.games VALUES (21, 6, 649);
INSERT INTO public.games VALUES (22, 6, 492);
INSERT INTO public.games VALUES (23, 8, 582);
INSERT INTO public.games VALUES (24, 8, 422);
INSERT INTO public.games VALUES (25, 9, 214);
INSERT INTO public.games VALUES (26, 9, 547);
INSERT INTO public.games VALUES (27, 8, 177);
INSERT INTO public.games VALUES (28, 8, 878);
INSERT INTO public.games VALUES (29, 8, 434);
INSERT INTO public.games VALUES (30, 10, 892);
INSERT INTO public.games VALUES (31, 10, 320);
INSERT INTO public.games VALUES (32, 11, 141);
INSERT INTO public.games VALUES (33, 11, 478);
INSERT INTO public.games VALUES (34, 10, 99);
INSERT INTO public.games VALUES (35, 10, 96);
INSERT INTO public.games VALUES (36, 10, 113);
INSERT INTO public.games VALUES (37, 14, 972);
INSERT INTO public.games VALUES (38, 14, 948);
INSERT INTO public.games VALUES (39, 15, 761);
INSERT INTO public.games VALUES (40, 15, 603);
INSERT INTO public.games VALUES (41, 14, 604);
INSERT INTO public.games VALUES (42, 14, 571);
INSERT INTO public.games VALUES (43, 14, 909);
INSERT INTO public.games VALUES (44, 3, 17);
INSERT INTO public.games VALUES (45, 16, 898);
INSERT INTO public.games VALUES (46, 16, 480);
INSERT INTO public.games VALUES (47, 17, 409);
INSERT INTO public.games VALUES (48, 17, 162);
INSERT INTO public.games VALUES (49, 16, 389);
INSERT INTO public.games VALUES (50, 16, 573);
INSERT INTO public.games VALUES (51, 16, 445);
INSERT INTO public.games VALUES (52, 3, 6);
INSERT INTO public.games VALUES (53, 18, 25);
INSERT INTO public.games VALUES (54, 18, 120);
INSERT INTO public.games VALUES (55, 19, 988);
INSERT INTO public.games VALUES (56, 19, 618);
INSERT INTO public.games VALUES (57, 18, 899);
INSERT INTO public.games VALUES (58, 18, 772);
INSERT INTO public.games VALUES (59, 18, 810);
INSERT INTO public.games VALUES (60, 3, 31);
INSERT INTO public.games VALUES (61, 20, 259);
INSERT INTO public.games VALUES (62, 20, 314);
INSERT INTO public.games VALUES (63, 21, 363);
INSERT INTO public.games VALUES (64, 21, 721);
INSERT INTO public.games VALUES (65, 20, 265);
INSERT INTO public.games VALUES (66, 20, 642);
INSERT INTO public.games VALUES (67, 20, 524);
INSERT INTO public.games VALUES (68, 22, 541);
INSERT INTO public.games VALUES (69, 22, 215);
INSERT INTO public.games VALUES (70, 23, 431);
INSERT INTO public.games VALUES (71, 23, 630);
INSERT INTO public.games VALUES (72, 22, 67);
INSERT INTO public.games VALUES (73, 22, 41);
INSERT INTO public.games VALUES (74, 22, 717);
INSERT INTO public.games VALUES (75, 24, 492);
INSERT INTO public.games VALUES (76, 24, 681);
INSERT INTO public.games VALUES (77, 25, 479);
INSERT INTO public.games VALUES (78, 25, 471);
INSERT INTO public.games VALUES (79, 24, 388);
INSERT INTO public.games VALUES (80, 24, 750);
INSERT INTO public.games VALUES (81, 24, 683);
INSERT INTO public.games VALUES (82, 26, 751);
INSERT INTO public.games VALUES (83, 26, 458);
INSERT INTO public.games VALUES (84, 27, 769);
INSERT INTO public.games VALUES (85, 27, 654);
INSERT INTO public.games VALUES (86, 26, 340);
INSERT INTO public.games VALUES (87, 26, 130);
INSERT INTO public.games VALUES (88, 26, 357);
INSERT INTO public.games VALUES (89, 28, 311);
INSERT INTO public.games VALUES (90, 28, 94);
INSERT INTO public.games VALUES (91, 29, 205);
INSERT INTO public.games VALUES (92, 29, 986);
INSERT INTO public.games VALUES (93, 28, 400);
INSERT INTO public.games VALUES (94, 28, 372);
INSERT INTO public.games VALUES (95, 28, 249);
INSERT INTO public.games VALUES (96, 30, 832);
INSERT INTO public.games VALUES (97, 30, 41);
INSERT INTO public.games VALUES (98, 31, 789);
INSERT INTO public.games VALUES (99, 31, 89);
INSERT INTO public.games VALUES (100, 30, 504);
INSERT INTO public.games VALUES (101, 30, 203);
INSERT INTO public.games VALUES (102, 30, 599);
INSERT INTO public.games VALUES (103, 32, 151);
INSERT INTO public.games VALUES (104, 32, 268);
INSERT INTO public.games VALUES (105, 33, 251);
INSERT INTO public.games VALUES (106, 33, 534);
INSERT INTO public.games VALUES (107, 32, 573);
INSERT INTO public.games VALUES (108, 32, 367);
INSERT INTO public.games VALUES (109, 32, 146);
INSERT INTO public.games VALUES (110, 34, 32);
INSERT INTO public.games VALUES (111, 34, 710);
INSERT INTO public.games VALUES (112, 35, 578);
INSERT INTO public.games VALUES (113, 35, 369);
INSERT INTO public.games VALUES (114, 34, 368);
INSERT INTO public.games VALUES (115, 34, 531);
INSERT INTO public.games VALUES (116, 34, 981);
INSERT INTO public.games VALUES (117, 36, 871);
INSERT INTO public.games VALUES (118, 36, 994);
INSERT INTO public.games VALUES (119, 37, 75);
INSERT INTO public.games VALUES (120, 37, 998);
INSERT INTO public.games VALUES (121, 36, 455);
INSERT INTO public.games VALUES (122, 36, 153);
INSERT INTO public.games VALUES (123, 36, 56);
INSERT INTO public.games VALUES (124, 38, 333);
INSERT INTO public.games VALUES (125, 38, 779);
INSERT INTO public.games VALUES (126, 39, 363);
INSERT INTO public.games VALUES (127, 39, 483);
INSERT INTO public.games VALUES (128, 38, 596);
INSERT INTO public.games VALUES (129, 38, 90);
INSERT INTO public.games VALUES (130, 38, 428);
INSERT INTO public.games VALUES (131, 40, 376);
INSERT INTO public.games VALUES (132, 40, 644);
INSERT INTO public.games VALUES (133, 41, 484);
INSERT INTO public.games VALUES (134, 41, 420);
INSERT INTO public.games VALUES (135, 40, 650);
INSERT INTO public.games VALUES (136, 40, 399);
INSERT INTO public.games VALUES (137, 40, 429);
INSERT INTO public.games VALUES (138, 42, 554);
INSERT INTO public.games VALUES (139, 42, 676);
INSERT INTO public.games VALUES (140, 43, 951);
INSERT INTO public.games VALUES (141, 43, 550);
INSERT INTO public.games VALUES (142, 42, 979);
INSERT INTO public.games VALUES (143, 42, 765);
INSERT INTO public.games VALUES (144, 42, 977);
INSERT INTO public.games VALUES (145, 44, 378);
INSERT INTO public.games VALUES (146, 44, 227);
INSERT INTO public.games VALUES (147, 45, 732);
INSERT INTO public.games VALUES (148, 45, 143);
INSERT INTO public.games VALUES (149, 44, 73);
INSERT INTO public.games VALUES (150, 44, 49);
INSERT INTO public.games VALUES (151, 44, 390);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1737735860119');
INSERT INTO public.users VALUES (2, 'user_1737735860118');
INSERT INTO public.users VALUES (3, 'john');
INSERT INTO public.users VALUES (4, 'user_1737735922802');
INSERT INTO public.users VALUES (5, 'user_1737735922801');
INSERT INTO public.users VALUES (6, 'user_1737736234422');
INSERT INTO public.users VALUES (7, 'user_1737736234421');
INSERT INTO public.users VALUES (8, 'user_1737736618549');
INSERT INTO public.users VALUES (9, 'user_1737736618548');
INSERT INTO public.users VALUES (10, 'user_1737736753773');
INSERT INTO public.users VALUES (11, 'user_1737736753772');
INSERT INTO public.users VALUES (12, 'user_1737737583730');
INSERT INTO public.users VALUES (13, 'user_1737737583729');
INSERT INTO public.users VALUES (14, 'user_1737737711479');
INSERT INTO public.users VALUES (15, 'user_1737737711478');
INSERT INTO public.users VALUES (16, 'user_1737737768592');
INSERT INTO public.users VALUES (17, 'user_1737737768591');
INSERT INTO public.users VALUES (18, 'user_1737737844857');
INSERT INTO public.users VALUES (19, 'user_1737737844856');
INSERT INTO public.users VALUES (20, 'user_1737737986207');
INSERT INTO public.users VALUES (21, 'user_1737737986206');
INSERT INTO public.users VALUES (22, 'user_1737738091230');
INSERT INTO public.users VALUES (23, 'user_1737738091229');
INSERT INTO public.users VALUES (24, 'user_1737738118090');
INSERT INTO public.users VALUES (25, 'user_1737738118089');
INSERT INTO public.users VALUES (26, 'user_1737738199772');
INSERT INTO public.users VALUES (27, 'user_1737738199771');
INSERT INTO public.users VALUES (28, 'user_1737738234645');
INSERT INTO public.users VALUES (29, 'user_1737738234644');
INSERT INTO public.users VALUES (30, 'user_1737738262615');
INSERT INTO public.users VALUES (31, 'user_1737738262614');
INSERT INTO public.users VALUES (32, 'user_1737738300646');
INSERT INTO public.users VALUES (33, 'user_1737738300645');
INSERT INTO public.users VALUES (34, 'user_1737738318620');
INSERT INTO public.users VALUES (35, 'user_1737738318619');
INSERT INTO public.users VALUES (36, 'user_1737738357895');
INSERT INTO public.users VALUES (37, 'user_1737738357894');
INSERT INTO public.users VALUES (38, 'user_1737738474663');
INSERT INTO public.users VALUES (39, 'user_1737738474662');
INSERT INTO public.users VALUES (40, 'user_1737738504544');
INSERT INTO public.users VALUES (41, 'user_1737738504543');
INSERT INTO public.users VALUES (42, 'user_1737738522805');
INSERT INTO public.users VALUES (43, 'user_1737738522804');
INSERT INTO public.users VALUES (44, 'user_1737738623662');
INSERT INTO public.users VALUES (45, 'user_1737738623661');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 151, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 45, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

