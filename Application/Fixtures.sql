

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


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.admins DISABLE TRIGGER ALL;



ALTER TABLE public.admins ENABLE TRIGGER ALL;


ALTER TABLE public.users DISABLE TRIGGER ALL;

INSERT INTO public.users (id, first_name, last_name, email, password_hash, locked_at, failed_login_attempts, is_confirmed, token) VALUES ('355dbd9d-c3ac-4eb8-9421-2cdc73f62231', 'Test', 'User', 'test@test.com', 'sha256|17|dDlBqNBK3Hv2oaV0o8H/Ow==|bLVzAoRd7MUKAXs3dXug2esCygEc5hzv9vlArdIXlrg=', NULL, 0, true, '');


ALTER TABLE public.users ENABLE TRIGGER ALL;


ALTER TABLE public.posts DISABLE TRIGGER ALL;

INSERT INTO public.posts (id, title, body, created_at, user_id, upvotes, downvotes, toxicity_score) VALUES ('d58b2715-c236-448d-8612-bae61d9ed9e5', 'test', 'test
', '2021-01-03 14:39:25.293533+05', '355dbd9d-c3ac-4eb8-9421-2cdc73f62231', 0, 0, 0);


ALTER TABLE public.posts ENABLE TRIGGER ALL;


ALTER TABLE public.comments DISABLE TRIGGER ALL;

INSERT INTO public.comments (id, post_id, author, body, created_at) VALUES ('d98f40c0-e1fc-46a1-8db7-53776f7ee65c', 'd58b2715-c236-448d-8612-bae61d9ed9e5', 'test', 'test', '2021-01-03 15:20:24.548778+05');


ALTER TABLE public.comments ENABLE TRIGGER ALL;


ALTER TABLE public.votes DISABLE TRIGGER ALL;

INSERT INTO public.votes (id, user_id, post_id) VALUES ('cebccf92-5a80-4a6f-a2c0-2c0bcca1e0ea', '355dbd9d-c3ac-4eb8-9421-2cdc73f62231', 'd58b2715-c236-448d-8612-bae61d9ed9e5');


ALTER TABLE public.votes ENABLE TRIGGER ALL;


