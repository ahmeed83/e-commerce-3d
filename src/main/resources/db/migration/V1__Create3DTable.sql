CREATE TABLE IF NOT EXISTS PRODUCT
(
    id           UUID PRIMARY KEY NOT NULL,
    created_at   DATE             NOT NULL,
    updated_at   DATE,
    name         VARCHAR(100)     NOT NULL,
    pic_location VARCHAR(500)     NOT NULL,
    price        VARCHAR(20)      NOT NULL
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

CREATE TABLE IF NOT EXISTS APPLICATION_USER
(
    id         UUID PRIMARY KEY NOT NULL,
    created_at DATE             NOT NULL,
    updated_at DATE,
    user_name  VARCHAR(100)     NOT NULL,
    password   VARCHAR(100)     NOT NULL,
    role       VARCHAR(10)      NOT NULL,
    is_enabled BOOL             NOT NULL
);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('0f3d6661-844c-41ac-845e-7c42729cf0d4', '10/27/2019', null, 'hayder',
        '{bcrypt}$2y$10$YNSuWB6gOWq3CUvum88ks.CFn1NSxfDP4C0SKzfPx0y3rw2I793By', 'ADMIN', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('fc6582c7-d70a-47a4-b5c1-a60eb056afda', '7/10/2019', null, 'nassar',
        '{bcrypt}$2y$10$kZm02MckhHDJB2l8xfNO0OaxmHhPsw905LJIup7dmlL.5R0yH/on2', 'EMPLOYEE', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('459dd3d2-4d4a-4082-b06b-ea8c195bbddb', '1/15/2020', null, 'baraq',
        '{bcrypt}$2y$10$tHeAt2L/VAFLVBCzkQJqFuzxUxNcmd5bUwprvOH7wFPriEI6GMsxG', 'EMPLOYEE', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('f99ce99d-fe3f-4652-995e-35485ffae314', '5/2/2019', '5/12/2019', 'qamar',
        '{bcrypt}$2y$10$PBvLMF0TRV19MKmOrbE3AOs4o0eIEWrcGbYUkhRhBTcZJsVrvaBeG', 'EMPLOYEE', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('a0b11202-0d42-40bb-9465-3e383cf61b93', '9/26/2019', '4/23/2019', 'ahmed',
        '{bcrypt}$2y$10$zyCFTnQPlzKlwyzYFeAs6uzDhIBk1bl6Lm7p5cj0Y4P1q.Ov/gBY6', 'CUSTOMER', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('04531d9c-29ef-4d42-9984-e337abec5d71', '10/22/2019', null, 'ckubelka0',
        '{bcrypt}$2y$10$MlDjc.GxkSoLOR2gBGYwF.PipEIgtwy9623fZ4b8EqbT4B8xX4UqS', 'CUSTOMER', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('d71183cb-ab57-47f9-b01e-a0ccccf414af', '8/3/2019', '11/25/2019', 'jglozman1',
        '{bcrypt}$2y$10$M1AGhX1ZYHXoFBH2Y/Xdqu6b4kKAX5MMBGdYixAiHnTYoRhsZyWLG', 'CUSTOMER', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('23c1a29e-1217-4195-a1bd-3ea5d190b244', '11/21/2019', null, 'ytustin2',
        '{bcrypt}$2y$10$PpKckF83wlJw0ttmY05CZOmCgwsj61TNl/C1XFCeow4RJJhivnpoG', 'CUSTOMER', true);
insert into APPLICATION_USER (id, created_at, updated_at, user_name, password, role, is_enabled)
values ('415bf92c-019f-4f18-998a-4cd55da7d738', '7/7/2019', null, 'kstannus3',
        '{bcrypt}$2y$10$fJw5KHD0tBl/Wn4rOPqjOuZIRW8QRSC/U9im/SrYcvgpW8LHBJ6Jm', 'CUSTOMER', true);


insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('7f84c44a-c819-42b6-9766-08061ffbe662', 'Tomatoes - Cherry', '2020-02-04', '2019-12-24',
        'https://robohash.org/veletquisquam.jpg?size=50x50&set=set1', '$196.75');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('8d763fa2-5e73-4935-b130-a732cc8696ff', 'The Pop Shoppe - Grape', '2019-11-21', '2019-05-19',
        'https://robohash.org/nonsitnon.jpg?size=50x50&set=set1', '$55.91');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('6d339869-f6c4-4f6e-9f37-772027f09a86', 'Longos - Chicken Wings', '2019-03-10', '2019-10-30',
        'https://robohash.org/assumendaeosdolores.jpg?size=50x50&set=set1', '$156.94');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('a661c1b0-ef2a-45a6-bfce-fecab33d9278', 'Bread - Multigrain Oval', '2019-05-28', '2019-10-25',
        'https://robohash.org/autquisofficia.png?size=50x50&set=set1', '$268.19');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('5583d194-5614-404d-a290-87c7eaea667d', 'Pork - Loin, Center Cut', '2019-04-27', '2019-08-22',
        'https://robohash.org/temporereprehenderitiure.jpg?size=50x50&set=set1', '$116.66');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('c12d03dd-c45a-4e62-86f6-9f2c461267bc', 'Longos - Grilled Chicken With', '2019-11-03', null,
        'https://robohash.org/etnumquamin.png?size=50x50&set=set1', '$189.59');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('69ab6fd4-55c2-456e-bc85-3f58ec109a62', 'Bagel - 12 Grain Preslice', '2019-05-14', '2019-09-08',
        'https://robohash.org/temporibusvoluptatemrepellat.bmp?size=50x50&set=set1', '$54.46');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('151f165e-c140-42d1-92d5-59bdc1656adb', 'Chicken - Wieners', '2019-09-14', '2019-12-19',
        'https://robohash.org/quiacommodivoluptas.bmp?size=50x50&set=set1', '$208.41');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('c555a630-f49d-4bee-8ba4-1e818f5a1107', 'Nut - Pumpkin Seeds', '2019-06-03', null,
        'https://robohash.org/dolorveritatisnemo.jpg?size=50x50&set=set1', '$101.05');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('2c6b92ef-4af1-4b0e-936a-437d0c979e94', 'Pasta - Fusili Tri - Coloured', '2019-03-25', '2019-10-07',
        'https://robohash.org/vitaeaccusantiumadipisci.jpg?size=50x50&set=set1', '$275.66');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('6c9e963d-276f-4211-a3cd-1c8e51ecbfb9', 'Rum - Cream, Amarula', '2019-06-13', '2020-01-27',
        'https://robohash.org/possimusdoloremquesit.jpg?size=50x50&set=set1', '$59.83');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('3b21366d-bcc5-410e-8b81-2d7773f78e40', 'Cookies - Englishbay Wht', '2019-08-17', '2020-01-09',
        'https://robohash.org/laudantiumprovidenttempora.png?size=50x50&set=set1', '$110.73');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('c780783a-a648-4381-813f-09ad7bd3b88c', 'Carroway Seed', '2019-12-30', '2019-07-17',
        'https://robohash.org/etsaepeeum.jpg?size=50x50&set=set1', '$163.48');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('b2b41677-5c6d-4c50-b5ab-f49d3e4be850', 'Wine - Two Oceans Cabernet', '2019-09-28', '2019-09-01',
        'https://robohash.org/faceremagnivoluptatem.jpg?size=50x50&set=set1', '$111.81');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('d5a93f79-f0b4-4d95-84ec-67431889e35b', 'Eel Fresh', '2019-07-08', '2019-10-23',
        'https://robohash.org/architectoveritatisrerum.jpg?size=50x50&set=set1', '$265.27');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('03b6a086-2f35-46b7-ba2e-b0ef0cdad354', 'Flour - Fast / Rapid', '2019-09-01', '2020-01-14',
        'https://robohash.org/sintutaperiam.png?size=50x50&set=set1', '$156.68');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('88df4bd8-98b2-4f37-9203-2b1ddaf1a5f5', 'Savory', '2020-01-25', '2020-01-23',
        'https://robohash.org/etrepudiandaeiure.png?size=50x50&set=set1', '$169.69');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('06b4f3e9-dde7-4e93-9f1b-2a677c905423', 'Oil - Olive', '2019-07-16', '2019-08-05',
        'https://robohash.org/voluptasdolorema.png?size=50x50&set=set1', '$264.46');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('56768f55-cf16-4084-b391-2a3bb151cf52', 'Cactus Pads', '2019-09-19', '2019-11-10',
        'https://robohash.org/isteuteligendi.png?size=50x50&set=set1', '$168.34');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('e4dc2ac9-233b-48b5-9d97-328ca04b3f09', 'Towels - Paper / Kraft', '2019-12-25', null,
        'https://robohash.org/perferendisdolorquam.bmp?size=50x50&set=set1', '$70.37');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('67ca26d8-cc90-4b86-9917-3425001c3fd2', 'Pastry - Carrot Muffin - Mini', '2020-01-23', '2020-01-29',
        'https://robohash.org/animisitnisi.jpg?size=50x50&set=set1', '$202.10');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('666b0eca-0a4c-46d1-8c69-d55fe05d5a05', 'Red Cod Fillets - 225g', '2019-06-05', null,
        'https://robohash.org/totamaliasadipisci.bmp?size=50x50&set=set1', '$60.72');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('191541a9-fb32-4635-a1e1-ac98381bdf62', 'Table Cloth 90x90 Colour', '2019-07-23', '2019-10-09',
        'https://robohash.org/delenitiatquequisquam.png?size=50x50&set=set1', '$133.08');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('1383491a-8a48-4a56-99e4-f9e6fdee5c17', 'Beef - Bresaola', '2019-05-23', null,
        'https://robohash.org/ducimusautsoluta.jpg?size=50x50&set=set1', '$212.22');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('a3ee3683-85e8-475d-bad7-fe6cd548ab00', 'Pork - Ham, Virginia', '2019-06-26', '2019-09-08',
        'https://robohash.org/doloremquecorruptiiste.png?size=50x50&set=set1', '$82.65');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('041dc6aa-def5-4ba9-901f-583712376b2b', 'Dr. Pepper - 355ml', '2019-12-24', null,
        'https://robohash.org/necessitatibusenimnon.png?size=50x50&set=set1', '$240.36');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('6ec08998-8dec-47be-b415-eef580516419', 'Puree - Passion Fruit', '2019-05-24', null,
        'https://robohash.org/voluptatesetqui.jpg?size=50x50&set=set1', '$144.66');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('73ec067f-f639-4056-96bd-9b770a337089', 'Liqueur Banana, Ramazzotti', '2020-01-16', '2019-10-19',
        'https://robohash.org/sedreiciendisest.bmp?size=50x50&set=set1', '$116.03');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('d014a694-6bfb-4f26-be9f-8e351e335a8b', 'Coffee - Irish Cream', '2019-02-24', '2019-05-22',
        'https://robohash.org/aliasexplicaboadipisci.bmp?size=50x50&set=set1', '$136.97');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('51780347-81d8-4b7c-a542-e2d9f72475cf', 'Basil - Seedlings Cookstown', '2019-11-01', '2019-10-07',
        'https://robohash.org/namofficiiseveniet.jpg?size=50x50&set=set1', '$215.50');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('513b7d10-57e3-44d0-9cbc-97ae2cfa2a4c', 'Shrimp - 31/40', '2019-08-15', null,
        'https://robohash.org/quosnobisaut.jpg?size=50x50&set=set1', '$171.61');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('d561b0f6-720d-4b61-ae5d-5e3a0c773a08', 'Veal - Brisket, Provimi, Bone - In', '2019-09-03', '2020-01-09',
        'https://robohash.org/debitisiustoquisquam.bmp?size=50x50&set=set1', '$77.14');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('2f6c3080-7bd9-4fa3-b74f-d960841a0388', 'Beer - Moosehead', '2019-08-17', '2019-07-30',
        'https://robohash.org/quiasuscipitconsequatur.bmp?size=50x50&set=set1', '$294.34');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('f66d0c52-8960-4b32-976a-884cab8c9c1b', 'Chips - Assorted', '2019-11-02', null,
        'https://robohash.org/cumrecusandaesed.png?size=50x50&set=set1', '$289.25');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('6b50fa0a-0cb4-4a06-8e32-18e201377992', 'Pop Shoppe Cream Soda', '2019-08-16', '2019-11-01',
        'https://robohash.org/deseruntetquisquam.jpg?size=50x50&set=set1', '$166.06');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('0a90acc6-d37d-44fa-ad7c-92d2809538d4', 'Jam - Apricot', '2019-10-09', null,
        'https://robohash.org/suntmagnamquo.bmp?size=50x50&set=set1', '$153.90');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('158b5266-573a-4999-a0f5-2a75ed52939d', 'Soup - Knorr, Ministrone', '2020-01-23', null,
        'https://robohash.org/consequaturautveniam.jpg?size=50x50&set=set1', '$216.02');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('3674b605-2af6-4995-8167-5ec83d68d841', 'Munchies Honey Sweet Trail Mix', '2019-03-17', '2020-01-22',
        'https://robohash.org/saepesedexcepturi.jpg?size=50x50&set=set1', '$234.20');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('ef4edb51-b86c-4e13-aef3-76335a7f37e6', 'Shrimp - 16 - 20 Cooked, Peeled', '2019-03-11', '2019-07-06',
        'https://robohash.org/ullamconsequaturvero.png?size=50x50&set=set1', '$162.52');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('98622860-9a95-445a-b17d-0afeff9f1e22', 'Potato - Sweet', '2019-05-12', '2019-04-10',
        'https://robohash.org/sitestconsequatur.bmp?size=50x50&set=set1', '$296.72');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('8b22366a-8736-4541-ada6-5a4681d35b0f', 'Veal - Inside, Choice', '2019-07-14', '2019-10-23',
        'https://robohash.org/praesentiumsequiitaque.jpg?size=50x50&set=set1', '$97.55');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('fe877a2e-65a4-444b-9fab-ad980627345e', 'Pastry - French Mini Assorted', '2019-07-27', '2019-03-27',
        'https://robohash.org/repellendusisteanimi.jpg?size=50x50&set=set1', '$244.71');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('f0f90f5a-c42d-4ddd-ba42-eb267b922f51', 'Foil Cont Round', '2019-12-09', '2019-10-31',
        'https://robohash.org/quaemolestiasporro.png?size=50x50&set=set1', '$263.58');
insert into PRODUCT (id, name, created_at, updated_at, pic_location, price)
values ('a5dc042d-9d6c-41a7-a60f-6b7007a7f118', 'Oil - Truffle, Black', '2019-08-24', '2019-04-30',
        'https://robohash.org/utmolestiaedeserunt.bmp?size=50x50&set=set1', '$177.36');



insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('31357b36-0c61-4288-9c65-081b2e5bb671', '2019-07-30', null, 'Wallace Honnicott', 'whonnicott0@bluehost.com',
        '+63 (103) 636-7221', '18 Green Ridge Parkway', '1174026340');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('634318af-a70f-49df-9dc4-5ff837eed087', '2019-03-18', null, 'Corey Dacke', 'cdacke1@cdbaby.com',
        '+86 (215) 159-2167', '4 Delaware Court', '5190923894');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('6c1e3cf2-c389-4baf-b0a2-dfd833a8179c', '2019-05-12', '2019-07-13', 'Keven Hannond', 'khannond2@wordpress.com',
        '+373 (601) 456-1734', '4542 Warner Road', '9185183733');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('02c6d352-710a-49b3-b82d-d3d3a915f0bd', '2019-09-22', null, 'Terrijo Girsch', 'tgirsch3@usgs.gov',
        '+86 (154) 859-2651', '57 8th Avenue', '1997806924');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('7326af2d-b238-4600-8e38-b81caa3bea12', '2019-10-17', '2019-10-05', 'Cherianne Shewsmith',
        'cshewsmith4@sohu.com', '+63 (142) 178-9370', '97 Sauthoff Lane', '3730833618');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('7163fece-90e0-4134-9e3e-b5b80ddda0af', '2019-10-01', '2019-05-24', 'Marcello Andrelli', 'mandrelli5@furl.net',
        '+63 (100) 345-8602', '7564 Graedel Alley', '6974932065');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('971ca399-b0d8-4d6a-bc8f-634c1797cb47', '2019-10-22', '2019-10-16', 'Helene Dran', 'hdran6@spiegel.de',
        '+58 (861) 818-4235', '513 Shoshone Way', '1368581013');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('e2836ada-20e5-4569-9d3d-151d4bf09f75', '2019-06-11', '2020-01-23', 'Kessia Hatherleigh',
        'khatherleigh7@answers.com', '+86 (715) 867-3944', '99 Huxley Crossing', '6550688760');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('28ab83bd-2e19-4415-9c74-644f82db2bd6', '2020-01-26', null, 'Ameline Atwell', 'aatwell8@aol.com',
        '+7 (772) 541-0952', '70554 Welch Center', '3689950708');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('85d7a92a-a5f6-4eac-b5db-6b76b795cff2', '2019-07-26', '2019-03-09', 'Lelia Shurrock', 'lshurrock9@blogs.com',
        '+86 (692) 431-6136', '5727 Magdeline Circle', '7219211848');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('046dcdee-a236-4805-8b62-3f797c1db16e', '2019-06-13', null, 'Leonerd Benne', 'lbennea@si.edu',
        '+7 (105) 308-6508', '51 Mendota Center', '4238996283');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('35f1a8b9-d41b-4490-b5e7-9f5046065e84', '2019-08-12', '2020-01-16', 'Robbie Kobpal',
        'rkobpalb@cargocollective.com', '+55 (669) 991-6670', '91604 Texas Trail', '3357170817');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('b2a406ca-3960-4bc4-9ac3-68020e9bd6a9', '2020-01-25', '2019-05-21', 'Silvain Draye', 'sdrayec@forbes.com',
        '+81 (410) 156-0902', '02572 Mandrake Place', '6725067336');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('fc8de44d-fabf-40b4-aa72-9b5b8b7fece7', '2019-10-02', '2019-11-04', 'Fanni Noah', 'fnoahd@w3.org',
        '+33 (660) 650-6396', '00 Everett Point', '6935466199');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('e8a53170-61d8-4f67-ac8d-e90462f75cb3', '2019-11-11', '2019-07-05', 'Fionnula Petken', 'fpetkene@ning.com',
        '+62 (357) 754-3458', '48245 Kedzie Alley', '7138848552');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('982db07a-869d-4185-84b6-ec3f33e99f8b', '2019-08-20', '2019-10-14', 'Leoline Workes', 'lworkesf@gravatar.com',
        '+62 (938) 665-3158', '65 Briar Crest Park', '6842239117');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('84dde903-d0f1-4aef-a0be-d7ce7a4cf228', '2019-07-09', null, 'Yehudit O''Breen', 'yobreeng@fastcompany.com',
        '+62 (198) 398-0931', '05245 Londonderry Circle', '4792620848');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('93e049a6-481b-42e7-b0d9-7ac68d102f6b', '2019-05-31', '2019-08-25', 'Isabelle Nanninini', 'inannininih@fc2.com',
        '+81 (351) 592-9469', '5623 Luster Street', '1650955057');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('7e013840-40da-4ba1-a381-8e0dd739caea', '2019-05-03', '2019-04-23', 'Melonie Maskall',
        'mmaskalli@google.com.br', '+86 (574) 599-0553', '61 Cascade Lane', '1852511184');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('bf38bfbb-4b94-40a6-9863-65d735b9476f', '2019-07-08', '2019-08-05', 'Claus Epsly', 'cepslyj@dropbox.com',
        '+7 (948) 907-5677', '92978 Artisan Parkway', '5319126824');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('e5168a85-735f-479b-a3c6-93dc92d5d004', '2019-09-09', null, 'Josiah Gimblet', 'jgimbletk@yolasite.com',
        '+234 (478) 843-2363', '17 Fairview Trail', '6273055092');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('de8d0a42-0905-441a-87e0-cd769b3837fb', '2019-04-17', null, 'Hieronymus Borrett', 'hborrettl@webmd.com',
        '+385 (228) 968-5991', '74442 Algoma Alley', '1101507837');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('ad84099c-ce71-4659-8861-8ee3021dfa31', '2019-12-29', '2020-01-23', 'Gisele McNee', 'gmcneem@deliciousdays.com',
        '+66 (424) 790-7322', '8319 Debs Terrace', '7550297398');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('938842a2-8add-4f9d-adde-ad383483c90e', '2019-08-13', '2019-10-13', 'Grenville Winn', 'gwinnn@bloomberg.com',
        '+56 (247) 970-5953', '4552 Erie Point', '5446391837');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('89de08b7-7d7e-4376-996d-07a3309e6e85', '2019-08-24', null, 'Eben St Louis', 'esto@foxnews.com',
        '+55 (250) 568-6959', '2368 Glendale Road', '5137001112');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('3bc44c5a-aeb7-4fca-bc9f-ec3045dd9991', '2019-02-22', '2019-07-12', 'Jedd Ganforth',
        'jganforthp@statcounter.com', '+502 (731) 300-6275', '916 Hazelcrest Junction', '0888091486');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('6b386add-bdb7-4da4-a578-5e2c340da6fe', '2020-01-29', null, 'Fredric Gribbin', 'fgribbinq@bbb.org',
        '+84 (243) 872-4856', '564 Burrows Center', '6616525546');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('4c17e1c3-6d09-47aa-b72b-12ee96eda9ad', '2019-03-26', null, 'Lauree Gounod', 'lgounodr@skyrock.com',
        '+234 (738) 767-7104', '7 Kedzie Court', '8876162763');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('fbd9d33c-f518-4e5b-85b3-a957d0e452d0', '2020-01-22', null, 'Kristi Moodie', 'kmoodies@techcrunch.com',
        '+86 (984) 875-4693', '39382 Main Alley', '7541103101');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('c2b49f2c-4554-446d-b924-be6e64eb4f10', '2019-09-02', '2019-11-17', 'Florentia Donaway', 'fdonawayt@nasa.gov',
        '+86 (337) 388-0461', '394 Buell Hill', '9707292407');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('b8190f68-8452-40d2-8b28-6f6d8ee0b9e0', '2019-04-19', '2019-11-03', 'Mycah McLucas', 'mmclucasu@is.gd',
        '+86 (283) 659-4636', '753 Badeau Crossing', '1359128263');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('b9273f84-863b-4a40-ab24-771ef1fa6d46', '2019-03-08', '2019-04-05', 'Marrissa Kyllford',
        'mkyllfordv@example.com', '+249 (232) 281-6599', '5613 Blue Bill Park Plaza', '3838060792');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('e49d09a8-2bd1-40f5-b2aa-dd805927d12a', '2020-02-02', '2019-07-26', 'Stephana Salandino',
        'ssalandinow@twitpic.com', '+86 (279) 335-8908', '74 Chinook Park', '8972086150');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('83a58f1b-fc1b-4ea0-92ee-4400baa69ed8', '2019-06-17', null, 'Abie Guyver', 'aguyverx@e-recht24.de',
        '+263 (374) 287-0663', '229 1st Street', '3572769620');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('12c9b245-1855-43aa-8133-16c9802f95ca', '2019-06-01', '2019-06-21', 'Elie Casserly', 'ecasserlyy@irs.gov',
        '+86 (579) 575-2812', '7 School Road', '7483665769');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('1e5b2aac-5e34-43c6-b80a-b07b917b9d05', '2019-07-12', '2019-10-06', 'Carmel Spaldin', 'cspaldinz@auda.org.au',
        '+63 (282) 166-4725', '14511 Farragut Place', '3012579885');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('d928b2cd-104b-485a-a004-7b33e6a9828c', '2019-09-13', '2019-06-04', 'Maisie Fretwell', 'mfretwell10@ocn.ne.jp',
        '+66 (414) 629-7274', '7721 Monica Crossing', '5257902915');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('ccf25b36-2c2e-4321-9a8e-adf4b1963e16', '2019-09-25', '2019-03-10', 'Jourdain Insoll',
        'jinsoll11@microsoft.com', '+389 (774) 627-3503', '296 Shoshone Plaza', '8480304529');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('f7574876-2ba0-4bc5-9583-70e671960998', '2019-10-27', '2019-10-01', 'Denyse Blackeby',
        'dblackeby12@xinhuanet.com', '+351 (443) 328-6236', '90 Carioca Parkway', '2337757676');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('e2ea0b81-da03-43e0-b771-b7cfb6bc73d7', '2019-12-25', null, 'Flo Pozer', 'fpozer13@usa.gov',
        '+33 (372) 177-2137', '45852 Gateway Point', '9276808957');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('36c2d3a6-bf90-4a78-9f96-81d52502fb0f', '2019-11-26', '2019-09-21', 'Iggy Schimoni', 'ischimoni14@japanpost.jp',
        '+33 (296) 374-8455', '9186 Lukken Road', '7702963522');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('d713f074-14bc-4c3a-92cc-c33b77b3e9ba', '2019-05-31', null, 'Gay Woollacott', 'gwoollacott15@histats.com',
        '+380 (585) 345-4513', '02382 Farmco Street', '6913965419');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('457dd32a-48fc-4982-bbb4-aa04b4cc75ec', '2019-07-01', null, 'Jilli Nickell', 'jnickell16@istockphoto.com',
        '+63 (619) 654-7958', '9429 Goodland Pass', '8415247079');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('eeaf9e30-ca82-4f61-abf0-40cb0d3bba68', '2019-06-26', '2019-11-15', 'Joleen Normanton', 'jnormanton17@home.pl',
        '+47 (959) 726-0097', '9 Emmet Center', '0586164081');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('e32b93c3-fc2e-41e7-9ad7-e5b8c862e830', '2020-01-18', '2019-02-25', 'Stillman Grant', 'sgrant18@nyu.edu',
        '+51 (688) 878-0806', '94164 Badeau Court', '8108313511');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('6a455290-1248-42c2-803b-ef831f0460a5', '2019-11-15', null, 'Hayyim Rossant', 'hrossant19@cpanel.net',
        '+63 (270) 835-2444', '79659 Merry Crossing', '7781645995');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('2c4560be-402e-48af-9722-1498b7d3dbcb', '2020-01-22', '2019-03-29', 'Garland Boanas', 'gboanas1a@sitemeter.com',
        '+51 (236) 553-1752', '643 Clarendon Point', '5541386829');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('0df100de-3ba5-4549-8dbe-7a3775c01057', '2019-03-17', null, 'Carter Brussels', 'cbrussels1b@noaa.gov',
        '+505 (928) 427-1574', '9 Reinke Plaza', '1734714212');
insert into CUSTOMER (id, created_at, updated_at, name, email, phone, address, customer_number)
values ('91782075-db75-42be-bb1c-919f3ffbd305', '2019-10-18', null, 'Jake Wilgar', 'jwilgar1c@cnbc.com',
        '+351 (443) 195-4473', '49606 Bowman Plaza', '8722090851');