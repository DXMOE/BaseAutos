--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

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
-- Name: autolist; Type: TABLE; Schema: public; Owner: isma4; Tablespace: 
--

CREATE TABLE autolist (
    id integer NOT NULL,
    marca text,
    modelo numeric,
    color text,
    serie numeric,
    precio numeric
);


ALTER TABLE public.autolist OWNER TO isma4;

--
-- Name: autolist_id_seq; Type: SEQUENCE; Schema: public; Owner: isma4
--

CREATE SEQUENCE autolist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.autolist_id_seq OWNER TO isma4;

--
-- Name: autolist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: isma4
--

ALTER SEQUENCE autolist_id_seq OWNED BY autolist.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: isma4
--

ALTER TABLE ONLY autolist ALTER COLUMN id SET DEFAULT nextval('autolist_id_seq'::regclass);


--
-- Data for Name: autolist; Type: TABLE DATA; Schema: public; Owner: isma4
--

COPY autolist (id, marca, modelo, color, serie, precio) FROM stdin;
\.


--
-- Name: autolist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: isma4
--

SELECT pg_catalog.setval('autolist_id_seq', 1, false);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

