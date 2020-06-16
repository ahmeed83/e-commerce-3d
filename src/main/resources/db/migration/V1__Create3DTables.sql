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

CREATE TABLE IF NOT EXISTS CATEGORY
(
    id         UUID PRIMARY KEY    NOT NULL,
    created_at DATE                NOT NULL,
    updated_at DATE,
    name       VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS SUB_CATEGORY
(
    id          UUID PRIMARY KEY    NOT NULL,
    created_at  DATE                NOT NULL,
    updated_at  DATE,
    category_id UUID                NOT NULL,
    name        VARCHAR(100) UNIQUE NOT NULL,
    FOREIGN KEY (category_id) REFERENCES CATEGORY (id)
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

CREATE TABLE IF NOT EXISTS PRODUCT
(
    id              UUID PRIMARY KEY NOT NULL,
    created_at      DATE             NOT NULL,
    updated_at      DATE,
    category_id     UUID             NOT NULL,
    sub_category_id UUID             NOT NULL,
    name            VARCHAR(100)     NOT NULL,
    quantity        INT              NOT NULL,
    pic_location    VARCHAR(500)     NOT NULL,
    price           VARCHAR(20)      NOT NULL,
    description     VARCHAR(500),
    sale            BOOLEAN,
    FOREIGN KEY (category_id) REFERENCES CATEGORY (id),
    FOREIGN KEY (sub_category_id) REFERENCES SUB_CATEGORY (id)
);

CREATE TABLE IF NOT EXISTS ORDER3D
(
    id                UUID PRIMARY KEY NOT NULL,
    created_at        DATE             NOT NULL,
    updated_at        DATE,
    customer_track_id VARCHAR(20)      NOT NULL,
    company_name      VARCHAR(100),
    name              VARCHAR(100)     NOT NULL,
    city              VARCHAR(100)     NOT NULL,
    district          VARCHAR(100)     NOT NULL,
    district2         VARCHAR(100),
    mobile_number     VARCHAR(20)      NOT NULL,
    email             VARCHAR(20),
    notes             VARCHAR(500)
);

CREATE TABLE order3d_products
(
    orders_id   UUID REFERENCES ORDER3D (id) ON UPDATE CASCADE ON DELETE CASCADE,
    products_id UUID REFERENCES PRODUCT (id) ON UPDATE CASCADE,
    amount      numeric NOT NULL DEFAULT 1,
    CONSTRAINT order_product_pkey PRIMARY KEY (orders_id, products_id) -- explicit pk
);
