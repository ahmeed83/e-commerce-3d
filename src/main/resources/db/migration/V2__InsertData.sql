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

insert into CATEGORY (id, created_at, updated_at, name)
values ('6fd40977-a429-4959-8497-36b93d19769c', '2019-05-22', '2019-11-17', 'Laptop');
insert into CATEGORY (id, created_at, updated_at, name)
values ('6d176685-2c6a-489d-9988-684a22903244', '2019-05-19', '2019-07-19', 'PC');
insert into CATEGORY (id, created_at, updated_at, name)
values ('ac7c189a-a9d7-4f37-8f55-fee44f108355', '2019-06-18', '2020-01-10', 'iPhone');
insert into CATEGORY (id, created_at, updated_at, name)
values ('814642d2-7dcc-4279-91b7-70e368127a78', '2020-02-09', '2019-06-29', 'MacBook');
insert into CATEGORY (id, created_at, updated_at, name)
values ('c6478c53-1835-4a25-badc-6b45e490876c', '2019-11-23', '2019-10-31', 'Headphone');


insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('3a23c8d9-53e8-498e-81e2-8df4d11382e7', 'Cheese - Brie Roitelet', '2019-12-19', '2019-03-10',
        '814642d2-7dcc-4279-91b7-70e368127a78',
        'https://robohash.org/praesentiumvoluptatibusvoluptatem.jpg?size=50x50&set=set1', '$111.32');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('b2987ca8-2863-44b4-af37-eed6995a66d5', 'Nut - Pecan, Pieces', '2019-02-14', null,
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/remodiodolorem.png?size=50x50&set=set1',
        '$167.11');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('0b6401d9-8c9f-43e3-90cc-0448ebac4f0a', 'Wine - Baron De Rothschild', '2020-02-05', '2019-04-07',
        'ac7c189a-a9d7-4f37-8f55-fee44f108355',
        'https://robohash.org/temporibusblanditiisquaerat.png?size=50x50&set=set1', '$153.00');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('6e788712-b08a-4b20-a203-a5244d9f1572', 'Cheese - Brie, Cups 125g', '2019-04-04', '2019-07-22',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/sapienteharumesse.bmp?size=50x50&set=set1',
        '$115.57');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('58f56073-cb1f-4d5a-9480-e63e2f61b38b', 'Wine - Hardys Bankside Shiraz', '2019-10-30', '2020-01-31',
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/optiominimaiste.bmp?size=50x50&set=set1',
        '$99.53');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('92a71058-db11-474b-84e7-ee95ef22a5c8', 'Oregano - Dry, Rubbed', '2019-05-09', null,
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/quostotamsint.jpg?size=50x50&set=set1',
        '$153.94');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('eea5892a-8349-49b3-bd77-22d10bbe95f4', 'Bar - Granola Trail Mix Fruit Nut', '2019-07-26', '2019-09-11',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/veritatisanimipariatur.bmp?size=50x50&set=set1',
        '$160.99');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('1816c3a1-c4c1-48df-adbe-0f5e58ae2ef2', 'Salt And Pepper Mix - Black', '2019-03-30', null,
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/accusamusomnisillo.bmp?size=50x50&set=set1',
        '$98.83');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('7e593104-71bb-49e0-b4c8-18747c8fdc26', 'Nantucket - Carrot Orange', '2020-02-05', null,
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/autquidolorem.bmp?size=50x50&set=set1', '$92.75');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('8ce7925d-6abf-4773-877b-26475e8067e6', 'Bread - Italian Sesame Poly', '2019-11-01', '2019-07-03',
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/quiipsumet.bmp?size=50x50&set=set1', '$126.66');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('25e39c75-a960-4932-970b-e3baeb412711', 'Ham Black Forest', '2019-07-27', '2019-11-17',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/rationeanimiquisquam.jpg?size=50x50&set=set1',
        '$214.98');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('e2cfdbd5-d6f4-4f64-8241-c83007acf375', 'Beef - Inside Round', '2019-03-18', '2019-03-07',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/illoexpeditaex.bmp?size=50x50&set=set1',
        '$79.12');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('610bdf76-47ba-4216-b20d-9a1d6d2f6cd2', 'Pate - Peppercorn', '2019-09-04', '2019-02-20',
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/minusteneturreiciendis.bmp?size=50x50&set=set1',
        '$111.76');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('5b3ac2b9-9ac1-4275-bb9b-ae2da3634c6c', 'Flower - Carnations', '2020-01-19', '2019-11-24',
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/veritatisautemnemo.bmp?size=50x50&set=set1',
        '$238.05');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('db3769f3-b0f2-4fa2-89ae-6ac8be9fa598', 'Jello - Assorted', '2019-06-16', '2019-04-29',
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/dolorenostrumconsequatur.bmp?size=50x50&set=set1',
        '$100.78');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('2c86a73d-e21b-4dd2-847f-6a529640393e', 'Nut - Hazelnut, Whole', '2019-09-04', '2020-01-09',
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/nonaliquidet.png?size=50x50&set=set1', '$272.97');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('2bfd01d9-46ab-4126-8dd2-e7aee39fcefc', 'Hold Up Tool Storage Rack', '2020-01-22', '2019-02-25',
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/atqueexercitationemautem.bmp?size=50x50&set=set1',
        '$51.36');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('f94e3afd-d397-4d19-a1aa-1ac4d1776e3e', 'Pepper - White, Ground', '2019-03-17', '2019-10-06',
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/exearumnon.jpg?size=50x50&set=set1', '$262.37');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('c4241baa-817c-494c-8773-8d6961eea72e', 'Olives - Green, Pitted', '2019-09-16', '2019-10-07',
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/aspernaturautemveniam.jpg?size=50x50&set=set1',
        '$193.67');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('5b324062-702e-44c3-a665-2661b661b37c', 'Eggplant Oriental', '2020-01-16', '2019-05-12',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/praesentiumetquasi.png?size=50x50&set=set1',
        '$206.62');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('05d64964-cce3-42a0-83e9-cd7d3050b239', 'Wine - Cotes Du Rhone', '2019-10-22', null,
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/laboresequiest.png?size=50x50&set=set1',
        '$89.40');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('5b34b27e-fc1d-4f74-aa6b-c8a9ae5d24b2', 'Vodka - Hot, Lnferno', '2019-04-05', null,
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/dolorquaenon.jpg?size=50x50&set=set1', '$168.47');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('094a22ab-569c-42d8-836d-ebbbd7fd18b3', 'Napkin Colour', '2019-02-21', null,
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/voluptasrecusandaecum.png?size=50x50&set=set1',
        '$230.95');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('90fba288-6d3b-47e9-896c-f1e885294350', 'Pears - Bartlett', '2019-12-07', '2019-06-08',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/aliasestmollitia.jpg?size=50x50&set=set1',
        '$204.64');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('17faeb1b-6205-4efa-89af-a162dc849e73', 'Isomalt', '2019-04-04', '2019-04-18',
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/molestiaenihilad.bmp?size=50x50&set=set1',
        '$53.09');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('7c662362-c203-4eb9-bf9d-4bae8ecde992', 'Mint - Fresh', '2019-04-01', null,
        '6fd40977-a429-4959-8497-36b93d19769c',
        'https://robohash.org/providentrepellatassumenda.jpg?size=50x50&set=set1', '$246.75');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('f2be6957-fb83-4bd0-8070-1c9e52499671', 'Mahi Mahi', '2019-05-22', '2019-09-28',
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/quiaeaqueet.jpg?size=50x50&set=set1', '$59.69');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('22679d99-529c-4512-8d2b-39bf2163741e', 'Chicken - Whole', '2019-03-02', '2019-02-21',
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/minimavoluptatesad.bmp?size=50x50&set=set1',
        '$270.37');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('d1b0e0e0-9387-47c3-883c-331197290f02', 'Bar Nature Valley', '2019-06-15', '2019-04-20',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/dolorumullamenim.png?size=50x50&set=set1',
        '$160.67');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('78eed5c4-0aff-46b4-bb00-8dca564550b2', 'Paper Towel Touchless', '2019-09-02', '2019-08-04',
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/sitiustout.png?size=50x50&set=set1', '$218.47');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('735d22eb-9385-4446-95d6-3a8ed11f3433', 'Cornflakes', '2019-06-26', null,
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/vitaeistedeserunt.jpg?size=50x50&set=set1',
        '$68.07');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('8280f270-6b6f-413a-97b6-2a74bb543dae', 'Gelatine Leaves - Envelopes', '2019-12-06', '2019-08-28',
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/dolortotamquasi.bmp?size=50x50&set=set1',
        '$146.61');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('e8b27d63-301b-4515-87cf-24f0029eedc9', 'Wakami Seaweed', '2019-06-27', '2019-05-09',
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/quisinventoresapiente.jpg?size=50x50&set=set1',
        '$248.83');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('0a8cbbb7-fca7-485c-be48-6a795ec3a2a9', 'Cheese - Brie Roitelet', '2019-06-05', null,
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/dictarerumpariatur.png?size=50x50&set=set1',
        '$241.13');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('dc75d764-8236-47a9-b479-d5f478d1c7d2', 'Extract - Raspberry', '2019-02-13', '2019-08-24',
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/consequaturautvoluptas.jpg?size=50x50&set=set1',
        '$227.90');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('016491a3-27d6-4e23-bd18-fc1f06ff9e3a', 'Wine - Red, Metus Rose', '2019-07-06', null,
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/molestiaeutlaudantium.bmp?size=50x50&set=set1',
        '$274.33');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('8c8c2f84-6e87-4f38-a49e-fe2bc3f8f029', 'Carrots - Mini Red Organic', '2020-02-06', null,
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/corporisrepellendusearum.png?size=50x50&set=set1',
        '$216.26');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('262be016-c14e-44ae-891c-11fe91b90217', 'Turkey Leg With Drum And Thigh', '2019-11-08', '2019-12-21',
        '6fd40977-a429-4959-8497-36b93d19769c', 'https://robohash.org/quisutet.jpg?size=50x50&set=set1', '$182.07');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('b6d6c623-e485-4eb8-aaaa-823b0ac6bead', 'Mushroom - Chanterelle Frozen', '2019-04-20', null,
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/impeditetblanditiis.bmp?size=50x50&set=set1',
        '$281.70');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('747086df-eb56-4f17-b55f-8b705b3b5567', 'Leeks - Large', '2019-07-23', null,
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/etplaceatnostrum.bmp?size=50x50&set=set1',
        '$124.35');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('46993f3d-8f16-4c0c-85e2-277ca37d4bf3', 'Ginger - Ground', '2019-09-18', '2019-03-31',
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/nostrumsapientenon.jpg?size=50x50&set=set1',
        '$71.05');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('b8c80deb-b27d-4efe-9aec-9948fda0852f', 'Beef - Baby, Liver', '2019-03-29', '2019-09-28',
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/quiacumqueomnis.jpg?size=50x50&set=set1',
        '$194.06');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('2c1dad62-7a4f-4905-8789-c44bd4e65e62', 'Banana - Leaves', '2019-04-28', '2019-05-01',
        '814642d2-7dcc-4279-91b7-70e368127a78',
        'https://robohash.org/consequunturvoluptatesqui.jpg?size=50x50&set=set1', '$87.84');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('738dd296-113c-45be-b48b-805ccdf87dd8', 'Shrimp, Dried, Small / Lb', '2019-10-04', null,
        'ac7c189a-a9d7-4f37-8f55-fee44f108355', 'https://robohash.org/etmolestiaequas.jpg?size=50x50&set=set1',
        '$259.69');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('fcc0c0d5-ad8c-443f-b0b8-9419513a229b', 'Beer - Camerons Cream Ale', '2019-12-14', '2019-06-19',
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/quisdistinctiomagnam.bmp?size=50x50&set=set1',
        '$114.77');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('eae1b09a-48cf-4425-8e64-4d2da06b8ac1', 'Muffin Mix - Morning Glory', '2019-05-30', null,
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/fugiatreprehenderitid.png?size=50x50&set=set1',
        '$202.21');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('7109237c-7698-4624-802f-42f8fc06429a', 'Pork - Smoked Back Bacon', '2019-12-17', null,
        '814642d2-7dcc-4279-91b7-70e368127a78', 'https://robohash.org/fugitetautem.png?size=50x50&set=set1', '$294.10');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('44caf75c-2f74-4249-bac1-db86f52e04be', 'Beans - Fine', '2019-07-02', '2019-08-23',
        '6d176685-2c6a-489d-9988-684a22903244', 'https://robohash.org/enimitaquequibusdam.jpg?size=50x50&set=set1',
        '$143.06');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('00e8f809-9ca1-40ad-afb4-a6d76ab5fae0', 'Soup - Knorr, Chicken Noodle', '2019-07-12', null,
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/quodelenitiminus.png?size=50x50&set=set1',
        '$137.76');
insert into PRODUCT (id, name, created_at, updated_at, category_id, pic_location, price)
values ('4b43582c-dc50-4c9b-bb5e-395589aa1cb1', 'Cheese - Brie Roitelet', '2019-04-25', null,
        'c6478c53-1835-4a25-badc-6b45e490876c', 'https://robohash.org/suntexercitationemeum.png?size=50x50&set=set1',
        '$163.40');

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