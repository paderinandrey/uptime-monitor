CREATE TABLE IF NOT EXISTS websites (
                                        id serial PRIMARY KEY,
                                        url varchar NOT NULL,
                                        alias varchar(75) NOT NULL UNIQUE
    );

CREATE TABLE IF NOT EXISTS logs (
                                    id serial PRIMARY KEY,
                                    website_id int NOT NULL REFERENCES websites (id),
    status smallint,
    created_at timestamp with time zone NOT NULL DEFAULT date_trunc('minute', CURRENT_TIMESTAMP),
    UNIQUE (website_id, created_at)
    );
