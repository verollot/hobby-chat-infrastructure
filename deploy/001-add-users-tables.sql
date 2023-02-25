CREATE TABLE users
(
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    account_id uuid NOT NULL,
    created_at TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW(),
    last_seen TIMESTAMP WITHOUT TIME ZONE NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE users IS 'contains all users profile';
COMMENT ON COLUMN users.id IS 'unique identifier of a user';
COMMENT ON COLUMN users.account_id IS 'reference firebase account id';
COMMENT ON COLUMN users.created_at IS 'datetime of user creation';
COMMENT ON COLUMN users.last_seen IS 'datetime of user last connection';
