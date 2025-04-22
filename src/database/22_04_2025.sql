--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

-- Started on 2025-04-22 11:03:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 16480)
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    photo character varying(500),
    user_id integer NOT NULL
);


ALTER TABLE public.post OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16479)
-- Name: post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.post_id_seq OWNER TO postgres;

--
-- TOC entry 4863 (class 0 OID 0)
-- Dependencies: 219
-- Name: post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;


--
-- TOC entry 218 (class 1259 OID 16471)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16470)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 4864 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4701 (class 2604 OID 16483)
-- Name: post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);


--
-- TOC entry 4700 (class 2604 OID 16474)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 4857 (class 0 OID 16480)
-- Dependencies: 220
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (id, title, content, photo, user_id) FROM stdin;
1	Paisagem	Uma bela paisagem no fim de tarde	https://cursinhoparamedicina.com.br/wp-content/uploads/2022/10/Paisagem-1.jpg	1
2	Foto	Um grande dia de pesca	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8jOK3zoEGMzdZUgUaiYlPuDbfMuZNHStZg&s	2
3	Post 3	Descri‡Æo do post 3	https://example.com/image3.jpg	3
4	Post 4	Descri‡Æo do post 4	https://example.com/image4.jpg	4
\.


--
-- TOC entry 4855 (class 0 OID 16471)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email) FROM stdin;
1	Thiago Ferreira	thiagoferreira@gmail.com
2	Marcelo Carboni	marcelocarboni@gmail.com
3	Eduardo Correia	eduardocorreia@gmail.com
4	Jonas Almeida	jonas.almeida@gmail.com
5	Leonardo Silva	leonardo.silva@gmail.com
6	Pedro Henrique	pedro.henrique@gmail.com
7	Andre Luiz	andre.luiz@gmail.com
8	Enzo Gabriel	enzo.gabriel@gmail.com
9	Henrique Santos	henrique.santos@gmail.com
10	Miguel Oliveira	miguel.oliveira@gmail.com
11	Davi Costa	davi.costa@gmail.com
12	Gustavo Lima	gustavo.lima@gmail.com
13	Arthur Monteiro	arthur.monteiro@gmail.com
14	Luiz Fernando	luiz.fernando@gmail.com
15	Lucas Martins	lucas.martins@gmail.com
16	Ravi Nascimento	ravi.nascimento@gmail.com
17	Jos‚ Carlos	jose.carlos@gmail.com
18	Ana Clara	ana.clara@gmail.com
19	Beatriz Silva	beatriz.silva@gmail.com
20	Camila Oliveira	camila.oliveira@gmail.com
21	Daniel Souza	daniel.souza@gmail.com
22	Eduarda Lima	eduarda.lima@gmail.com
23	Fernanda Costa	fernanda.costa@gmail.com
24	Gabriel Almeida	gabriel.almeida@gmail.com
25	Helena Martins	helena.martins@gmail.com
26	Isabela Rocha	isabela.rocha@gmail.com
27	JoÆo Pedro	joao.pedro@gmail.com
28	KauÆ Mendes	kaua.mendes@gmail.com
29	Larissa Duarte	larissa.duarte@gmail.com
30	Matheus Ribeiro	matheus.ribeiro@gmail.com
31	Nathalia Farias	nathalia.farias@gmail.com
32	Ot vio Nunes	otavio.nunes@gmail.com
33	Patr¡cia Cardoso	patricia.cardoso@gmail.com
34	Rafael Teixeira	rafael.teixeira@gmail.com
35	Sofia Monteiro	sofia.monteiro@gmail.com
36	Thiago Azevedo	thiago.azevedo@gmail.com
37	Vin¡cius Barros	vinicius.barros@gmail.com
38	Yasmin Freitas	yasmin.freitas@gmail.com
39	Zoe Santana	zoe.santana@gmail.com
40	Arthur Campos	arthur.campos@gmail.com
41	Bruna Ferreira	bruna.ferreira@gmail.com
42	Carlos Eduardo	carlos.eduardo@gmail.com
43	D‚bora Moraes	debora.moraes@gmail.com
44	Elisa Vieira	elisa.vieira@gmail.com
45	F bio Cunha	fabio.cunha@gmail.com
46	Giovanna Lopes	giovanna.lopes@gmail.com
47	Hugo Batista	hugo.batista@gmail.com
48	Bernardo Almeida	bernardo.almeida@gmail.com
49	Vitor Mendes	vitor.mendes@gmail.com
50	Carlos Augusto	carlos.augusto@gmail.com
51	Felipe Santos	felipe.santos@gmail.com
\.


--
-- TOC entry 4865 (class 0 OID 0)
-- Dependencies: 219
-- Name: post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_id_seq', 4, true);


--
-- TOC entry 4866 (class 0 OID 0)
-- Dependencies: 217
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 51, true);


--
-- TOC entry 4707 (class 2606 OID 16487)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);


--
-- TOC entry 4703 (class 2606 OID 16478)
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- TOC entry 4705 (class 2606 OID 16476)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4708 (class 2606 OID 16488)
-- Name: post post_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2025-04-22 11:03:53

--
-- PostgreSQL database dump complete
--

