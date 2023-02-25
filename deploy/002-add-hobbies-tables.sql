CREATE TABLE hobbies
(
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name text NOT NULL UNIQUE
);

COMMENT ON TABLE hobbies IS 'contains all hobbies';
COMMENT ON COLUMN hobbies.name IS 'name of a hobby';

CREATE TABLE users_hobbies
(
    user_id uuid  REFERENCES users(id) ON DELETE CASCADE,
    hobby_id uuid REFERENCES hobbies(id) ON DELETE CASCADE ,
    PRIMARY KEY (user_id, hobby_id)
);

COMMENT ON TABLE users_hobbies IS 'contains relations between users and hobbies';
COMMENT ON COLUMN users_hobbies.user_id IS 'reference a user';
COMMENT ON COLUMN users_hobbies.hobby_id IS 'reference a hobby';
