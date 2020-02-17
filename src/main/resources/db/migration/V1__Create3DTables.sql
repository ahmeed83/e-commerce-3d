-- TODO: CREATE TYPE ROLE AS ENUM ('ADMIN', 'EMPLOYEE', 'CUSTOMER');

CREATE TABLE IF NOT EXISTS APPLICATION_USER
(
    id         UUID PRIMARY KEY    NOT NULL,
    created_at DATE                NOT NULL,
    updated_at DATE,
    user_name  VARCHAR(100) UNIQUE NOT NULL,
    password   VARCHAR(100)        NOT NULL,
    role       VARCHAR(10)         NOT NULL
        CHECK (role = 'ADMIN' OR
               role = 'EMPLOYEE' OR
               role = 'CUSTOMER'),
    is_enabled BOOL                NOT NULL
);

CREATE TABLE IF NOT EXISTS PRODUCT
(
    id           UUID PRIMARY KEY NOT NULL,
    created_at   DATE             NOT NULL,
    updated_at   DATE,
    name         VARCHAR(100)     NOT NULL,
    pic_location VARCHAR(500)     NOT NULL,
    price        VARCHAR(20)      NOT NULL
);

CREATE TABLE IF NOT EXISTS CATEGORY
(
    id         UUID PRIMARY KEY NOT NULL,
    created_at DATE             NOT NULL,
    updated_at DATE,
    name       VARCHAR(100)     NOT NULL
);

CREATE TABLE IF NOT EXISTS CUSTOMER
(
    id              UUID PRIMARY KEY NOT NULL,
    created_at      DATE             NOT NULL,
    updated_at      DATE,
    name            VARCHAR(100)     NOT NULL,
    email           VARCHAR(100)     NOT NULL,
    phone           VARCHAR(100)     NOT NULL,
    address         VARCHAR(100)     NOT NULL,
    customer_number BIGINT           NOT NULL
);