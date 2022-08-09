BEGIN;

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = ON;
SET check_function_bodies = FALSE;
SET client_min_messages = WARNING;
SET search_path = public, extensions;
SET default_tablespace = '';
SET default_with_oids = FALSE;

-- EXTENSIONS --

CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- TABLES --

CREATE TABLE public.user
(
    id         UUID PRIMARY KEY     DEFAULT gen_random_uuid(),
    first_name TEXT        NOT NULL,
    last_name  TEXT        NOT NULL,
    username   TEXT UNIQUE NOT NULL,
    email      TEXT UNIQUE NOT NULL,
    profession TEXT,
    is_staff   BOOLEAN     NOT NULL DEFAULT false,
    image_id   UUID,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ
);

CREATE TABLE public.post
(
    id       UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    title    TEXT NOT NULL,
    content  TEXT NOT NULL,
    owner_id INT  NOT NULL
);

COMMIT;
