--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Ubuntu 15.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.2 (Ubuntu 15.2-1.pgdg20.04+1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO cboris;

--
-- Name: cities; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.cities (
    id bigint NOT NULL,
    name character varying,
    zip_code character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.cities OWNER TO cboris;

--
-- Name: cities_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.cities_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cities_id_seq OWNER TO cboris;

--
-- Name: cities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.cities_id_seq OWNED BY public.cities.id;


--
-- Name: comments; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.comments (
    id bigint NOT NULL,
    content text,
    user_id bigint NOT NULL,
    gossip_id bigint NOT NULL,
    commentable_type character varying NOT NULL,
    commentable_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO cboris;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO cboris;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.comments_id_seq OWNED BY public.comments.id;


--
-- Name: gossip_tags; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.gossip_tags (
    id bigint NOT NULL,
    gossip_id bigint NOT NULL,
    tag_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.gossip_tags OWNER TO cboris;

--
-- Name: gossip_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.gossip_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gossip_tags_id_seq OWNER TO cboris;

--
-- Name: gossip_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.gossip_tags_id_seq OWNED BY public.gossip_tags.id;


--
-- Name: gossips; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.gossips (
    id bigint NOT NULL,
    title character varying,
    content text,
    user_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.gossips OWNER TO cboris;

--
-- Name: gossips_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.gossips_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gossips_id_seq OWNER TO cboris;

--
-- Name: gossips_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.gossips_id_seq OWNED BY public.gossips.id;


--
-- Name: likes; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.likes (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    likeable_type character varying NOT NULL,
    likeable_id bigint NOT NULL,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.likes OWNER TO cboris;

--
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO cboris;

--
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: private_messages; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.private_messages (
    id bigint NOT NULL,
    content text,
    sender_id bigint,
    recipient_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.private_messages OWNER TO cboris;

--
-- Name: private_messages_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.private_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.private_messages_id_seq OWNER TO cboris;

--
-- Name: private_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.private_messages_id_seq OWNED BY public.private_messages.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO cboris;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    title character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO cboris;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO cboris;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: cboris
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    first_name character varying,
    last_name character varying,
    description text,
    email character varying,
    age integer,
    city_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO cboris;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: cboris
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO cboris;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: cboris
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: cities id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.cities ALTER COLUMN id SET DEFAULT nextval('public.cities_id_seq'::regclass);


--
-- Name: comments id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.comments ALTER COLUMN id SET DEFAULT nextval('public.comments_id_seq'::regclass);


--
-- Name: gossip_tags id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossip_tags ALTER COLUMN id SET DEFAULT nextval('public.gossip_tags_id_seq'::regclass);


--
-- Name: gossips id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossips ALTER COLUMN id SET DEFAULT nextval('public.gossips_id_seq'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: private_messages id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.private_messages ALTER COLUMN id SET DEFAULT nextval('public.private_messages_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2023-05-08 13:39:12.378599	2023-05-08 13:39:12.378599
schema_sha1	58addd46498439b0246039134434c38aae6c70d3	2023-05-08 13:39:12.395614	2023-05-08 13:39:12.395614
\.


--
-- Data for Name: cities; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.cities (id, name, zip_code, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.comments (id, content, user_id, gossip_id, commentable_type, commentable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: gossip_tags; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.gossip_tags (id, gossip_id, tag_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: gossips; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.gossips (id, title, content, user_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.likes (id, user_id, likeable_type, likeable_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: private_messages; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.private_messages (id, content, sender_id, recipient_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.schema_migrations (version) FROM stdin;
0
20230506120001
20230506120021
20230506120031
20230506120055
20230506120105
20230506120133
20230506120218
20230506120242
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.tags (id, title, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: cboris
--

COPY public.users (id, first_name, last_name, description, email, age, city_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: cities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.cities_id_seq', 1, false);


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.comments_id_seq', 1, false);


--
-- Name: gossip_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.gossip_tags_id_seq', 1, false);


--
-- Name: gossips_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.gossips_id_seq', 1, false);


--
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- Name: private_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.private_messages_id_seq', 1, false);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.tags_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: cboris
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cities cities_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);


--
-- Name: comments comments_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: gossip_tags gossip_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossip_tags
    ADD CONSTRAINT gossip_tags_pkey PRIMARY KEY (id);


--
-- Name: gossips gossips_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossips
    ADD CONSTRAINT gossips_pkey PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: private_messages private_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.private_messages
    ADD CONSTRAINT private_messages_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_comments_on_commentable; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_comments_on_commentable ON public.comments USING btree (commentable_type, commentable_id);


--
-- Name: index_comments_on_gossip_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_comments_on_gossip_id ON public.comments USING btree (gossip_id);


--
-- Name: index_comments_on_user_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_comments_on_user_id ON public.comments USING btree (user_id);


--
-- Name: index_gossip_tags_on_gossip_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_gossip_tags_on_gossip_id ON public.gossip_tags USING btree (gossip_id);


--
-- Name: index_gossip_tags_on_tag_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_gossip_tags_on_tag_id ON public.gossip_tags USING btree (tag_id);


--
-- Name: index_gossips_on_user_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_gossips_on_user_id ON public.gossips USING btree (user_id);


--
-- Name: index_likes_on_likeable; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_likes_on_likeable ON public.likes USING btree (likeable_type, likeable_id);


--
-- Name: index_likes_on_user_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_likes_on_user_id ON public.likes USING btree (user_id);


--
-- Name: index_private_messages_on_recipient_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_private_messages_on_recipient_id ON public.private_messages USING btree (recipient_id);


--
-- Name: index_private_messages_on_sender_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_private_messages_on_sender_id ON public.private_messages USING btree (sender_id);


--
-- Name: index_users_on_city_id; Type: INDEX; Schema: public; Owner: cboris
--

CREATE INDEX index_users_on_city_id ON public.users USING btree (city_id);


--
-- Name: comments fk_rails_03de2dc08c; Type: FK CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_03de2dc08c FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: comments fk_rails_0a34ec365a; Type: FK CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.comments
    ADD CONSTRAINT fk_rails_0a34ec365a FOREIGN KEY (gossip_id) REFERENCES public.gossips(id);


--
-- Name: likes fk_rails_1e09b5dabf; Type: FK CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT fk_rails_1e09b5dabf FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: gossip_tags fk_rails_506fcce6ed; Type: FK CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossip_tags
    ADD CONSTRAINT fk_rails_506fcce6ed FOREIGN KEY (gossip_id) REFERENCES public.gossips(id);


--
-- Name: gossips fk_rails_9e6296a836; Type: FK CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossips
    ADD CONSTRAINT fk_rails_9e6296a836 FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: gossip_tags fk_rails_e4c524df6c; Type: FK CONSTRAINT; Schema: public; Owner: cboris
--

ALTER TABLE ONLY public.gossip_tags
    ADD CONSTRAINT fk_rails_e4c524df6c FOREIGN KEY (tag_id) REFERENCES public.tags(id);


--
-- PostgreSQL database dump complete
--

