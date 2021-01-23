-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TABLE posts (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    upvotes INT DEFAULT 0 NOT NULL,
    author TEXT DEFAULT '' NOT NULL,
    link TEXT DEFAULT '' NOT NULL,
    confirmed_for_training BOOLEAN DEFAULT false NOT NULL
);
CREATE TABLE comments (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    post_id UUID NOT NULL,
    author TEXT NOT NULL,
    body TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    user_id UUID NOT NULL
);
CREATE TABLE users (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    locked_at TIMESTAMP WITH TIME ZONE DEFAULT NULL,
    failed_login_attempts INT DEFAULT 0 NOT NULL,
    is_confirmed BOOLEAN DEFAULT false NOT NULL,
    token TEXT NOT NULL
);
CREATE TABLE admins (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    email TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    locked_at TIMESTAMP WITH TIME ZONE DEFAULT NULL,
    failed_login_attempts INT DEFAULT 0 NOT NULL,
    file_url TEXT DEFAULT NULL,
    upvote_threshold INT DEFAULT 0 NOT NULL
);
CREATE TABLE votes (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    user_id UUID NOT NULL,
    post_id UUID NOT NULL,
    upvote BOOLEAN DEFAULT false NOT NULL,
    downvote BOOLEAN DEFAULT false NOT NULL
);
CREATE TABLE predictions (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    post_id UUID NOT NULL,
    toxic DOUBLE PRECISION NOT NULL,
    severe_toxic DOUBLE PRECISION NOT NULL,
    obscene DOUBLE PRECISION NOT NULL,
    threat DOUBLE PRECISION NOT NULL,
    insult DOUBLE PRECISION NOT NULL,
    identity_hate DOUBLE PRECISION NOT NULL
);
CREATE TABLE uploads (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    file_url TEXT DEFAULT NULL
);
ALTER TABLE comments ADD CONSTRAINT comments_ref_post_id FOREIGN KEY (post_id) REFERENCES posts (id) ON DELETE NO ACTION;
ALTER TABLE comments ADD CONSTRAINT comments_ref_user_id FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE NO ACTION;
ALTER TABLE predictions ADD CONSTRAINT predictions_ref_post_id FOREIGN KEY (post_id) REFERENCES posts (id) ON DELETE NO ACTION;
ALTER TABLE votes ADD CONSTRAINT votes_ref_post_id FOREIGN KEY (post_id) REFERENCES posts (id) ON DELETE NO ACTION;
ALTER TABLE votes ADD CONSTRAINT votes_ref_user_id FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE NO ACTION;
