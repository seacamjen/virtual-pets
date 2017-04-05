--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.2
-- Dumped by pg_dump version 9.6.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: communities; Type: TABLE; Schema: public; Owner: jensensc
--

CREATE TABLE communities (
    id integer NOT NULL,
    name character varying,
    description character varying
);


ALTER TABLE communities OWNER TO jensensc;

--
-- Name: communities_id_seq; Type: SEQUENCE; Schema: public; Owner: jensensc
--

CREATE SEQUENCE communities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE communities_id_seq OWNER TO jensensc;

--
-- Name: communities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jensensc
--

ALTER SEQUENCE communities_id_seq OWNED BY communities.id;


--
-- Name: communities_persons; Type: TABLE; Schema: public; Owner: jensensc
--

CREATE TABLE communities_persons (
    id integer NOT NULL,
    person_id integer,
    community_id integer
);


ALTER TABLE communities_persons OWNER TO jensensc;

--
-- Name: communities_persons_id_seq; Type: SEQUENCE; Schema: public; Owner: jensensc
--

CREATE SEQUENCE communities_persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE communities_persons_id_seq OWNER TO jensensc;

--
-- Name: communities_persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jensensc
--

ALTER SEQUENCE communities_persons_id_seq OWNED BY communities_persons.id;


--
-- Name: monsters; Type: TABLE; Schema: public; Owner: jensensc
--

CREATE TABLE monsters (
    id integer NOT NULL,
    name character varying,
    personid integer,
    birthday timestamp without time zone,
    lastate timestamp without time zone,
    lastslept timestamp without time zone,
    lastplayed timestamp without time zone,
    type character varying,
    lastwater timestamp without time zone,
    lastkindling timestamp without time zone
);


ALTER TABLE monsters OWNER TO jensensc;

--
-- Name: monsters_id_seq; Type: SEQUENCE; Schema: public; Owner: jensensc
--

CREATE SEQUENCE monsters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE monsters_id_seq OWNER TO jensensc;

--
-- Name: monsters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jensensc
--

ALTER SEQUENCE monsters_id_seq OWNED BY monsters.id;


--
-- Name: persons; Type: TABLE; Schema: public; Owner: jensensc
--

CREATE TABLE persons (
    id integer NOT NULL,
    name character varying,
    email character varying
);


ALTER TABLE persons OWNER TO jensensc;

--
-- Name: persons_id_seq; Type: SEQUENCE; Schema: public; Owner: jensensc
--

CREATE SEQUENCE persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE persons_id_seq OWNER TO jensensc;

--
-- Name: persons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: jensensc
--

ALTER SEQUENCE persons_id_seq OWNED BY persons.id;


--
-- Name: communities id; Type: DEFAULT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY communities ALTER COLUMN id SET DEFAULT nextval('communities_id_seq'::regclass);


--
-- Name: communities_persons id; Type: DEFAULT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY communities_persons ALTER COLUMN id SET DEFAULT nextval('communities_persons_id_seq'::regclass);


--
-- Name: monsters id; Type: DEFAULT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY monsters ALTER COLUMN id SET DEFAULT nextval('monsters_id_seq'::regclass);


--
-- Name: persons id; Type: DEFAULT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY persons ALTER COLUMN id SET DEFAULT nextval('persons_id_seq'::regclass);


--
-- Data for Name: communities; Type: TABLE DATA; Schema: public; Owner: jensensc
--

COPY communities (id, name, description) FROM stdin;
\.


--
-- Name: communities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jensensc
--

SELECT pg_catalog.setval('communities_id_seq', 1, false);


--
-- Data for Name: communities_persons; Type: TABLE DATA; Schema: public; Owner: jensensc
--

COPY communities_persons (id, person_id, community_id) FROM stdin;
\.


--
-- Name: communities_persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jensensc
--

SELECT pg_catalog.setval('communities_persons_id_seq', 1, false);


--
-- Data for Name: monsters; Type: TABLE DATA; Schema: public; Owner: jensensc
--

COPY monsters (id, name, personid, birthday, lastate, lastslept, lastplayed, type, lastwater, lastkindling) FROM stdin;
\.


--
-- Name: monsters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jensensc
--

SELECT pg_catalog.setval('monsters_id_seq', 3, true);


--
-- Data for Name: persons; Type: TABLE DATA; Schema: public; Owner: jensensc
--

COPY persons (id, name, email) FROM stdin;
\.


--
-- Name: persons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jensensc
--

SELECT pg_catalog.setval('persons_id_seq', 1, false);


--
-- Name: communities_persons communities_persons_pkey; Type: CONSTRAINT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY communities_persons
    ADD CONSTRAINT communities_persons_pkey PRIMARY KEY (id);


--
-- Name: communities communities_pkey; Type: CONSTRAINT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY communities
    ADD CONSTRAINT communities_pkey PRIMARY KEY (id);


--
-- Name: monsters monsters_pkey; Type: CONSTRAINT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY monsters
    ADD CONSTRAINT monsters_pkey PRIMARY KEY (id);


--
-- Name: persons persons_pkey; Type: CONSTRAINT; Schema: public; Owner: jensensc
--

ALTER TABLE ONLY persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

