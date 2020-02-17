CREATE TABLE IF NOT EXISTS PRODUCT
(
    id           UUID PRIMARY KEY NOT NULL,
    created_at   DATE             NOT NULL,
    updated_at   DATE,
    name         VARCHAR(100)     NOT NULL,
    pic_location VARCHAR(500)     NOT NULL,
    price        VARCHAR(20)      NOT NULL
);

insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('7f84c44a-c819-42b6-9766-08061ffbe662', 'iPhone', '2020-02-04', '2019-12-24',
        'https://robohash.org/veletquisquam.jpg?size=50x50&set=set1', '$196.75');