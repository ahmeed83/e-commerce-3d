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
values ('ac7c189a-a9d7-4f37-8f55-fee44f108355', '2019-06-18', '2020-01-10', 'Monitor');
insert into CATEGORY (id, created_at, updated_at, name)
values ('814642d2-7dcc-4279-91b7-70e368127a78', '2020-02-09', '2019-06-29', 'CPU');
insert into CATEGORY (id, created_at, updated_at, name)
values ('c6478c53-1835-4a25-badc-6b45e490876c', '2019-11-23', '2019-10-31', 'Mobile');

insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144444', '2019-05-22', '2019-11-17', '6fd40977-a429-4959-8497-36b93d19769c',
'MacBook');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144455', '2019-05-22', null, '6fd40977-a429-4959-8497-36b93d19769c',
'HP');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144466', '2019-05-22', null, '6fd40977-a429-4959-8497-36b93d19769c',
'Asus');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-11b93d144477', '2019-05-22', '2019-11-17', '6d176685-2c6a-489d-9988-684a22903244',
'Gaming PC');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144477', '2019-05-22', '2019-11-17', 'ac7c189a-a9d7-4f37-8f55-fee44f108355',
'LG');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-11b93d143377', '2019-05-22', '2019-11-17', 'ac7c189a-a9d7-4f37-8f55-fee44f108355',
'DELL');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144488', '2019-05-22', '2019-11-17', '814642d2-7dcc-4279-91b7-70e368127a78',
'Intel');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d129888', '2019-05-22', '2019-11-17', '814642d2-7dcc-4279-91b7-70e368127a78',
'AMD Ryzen');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144499', '2019-05-22', '2019-11-17', 'c6478c53-1835-4a25-badc-6b45e490876c',
'Samsung');
insert into SUB_CATEGORY (id, created_at, updated_at, category_id, name)
values ('6fd40977-a429-4959-8497-36b93d144400', '2019-05-22', '2019-11-17', 'c6478c53-1835-4a25-badc-6b45e490876c',
'iPhone');

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

insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('fdf61460-62a6-416d-872d-aea05335f3d9', 'Wine - Ej Gallo Sierra Valley', '2019-03-27', '2019-06-30', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 907, 112, false, 'Acute embolism and thrombosis of unspecified deep veins of left proximal lower extremity');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('ebc129b5-eb54-4174-bcb0-89866d7064d8', 'Mushroom - Enoki, Fresh', '2019-08-25', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/dddddd/000000', 465, 114, false, 'Osteonecrosis in diseases classified elsewhere, right hand');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('b4a79863-ff29-49be-afa2-8543f8550b2a', 'Wine - Rosso Toscano Igt', '2020-02-07', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', 100, 167, true, 'Other fracture of upper and lower end of right fibula, subsequent encounter for closed fracture with malunion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('9e5a956e-2289-4b4e-b2ff-3c15c233b4e2', 'Beef - Top Butt Aaa', '2020-01-28', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 1423, 69, false, 'Poisoning by antifungal antibiotics, systemically used, accidental (unintentional)');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('16ef67f0-1327-4c15-9d7d-1f9d5e9d1eb3', 'Wine - Pinot Noir Latour', '2019-08-11', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.png/dddddd/000000', 683, 145, false, 'Poisoning by antiasthmatics, accidental (unintentional)');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('de183298-68d9-40c1-a1b7-6e6fdc7eca24', 'Mushroom - Morel Frozen', '2019-12-14', '2020-02-02', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 520, 97, false, 'Gastric contents in respiratory tract, part unspecified causing asphyxiation, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('eb8b9432-b175-439b-b259-4825bb270d04', 'Mushroom - Crimini', '2020-02-09', '2019-05-09', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', 806, 53, false, 'Unspecified fracture of upper end of left humerus, initial encounter for closed fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('2c2f241c-5959-4d21-9b98-c1ac90174190', 'Turnip - Wax', '2019-10-05', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 825, 172, true, 'Nondisplaced pilon fracture of left tibia, initial encounter for open fracture type IIIA, IIIB, or IIIC');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('17b2406b-66f1-4a42-aba6-ba03772ed303', 'Meldea Green Tea Liquor', '2020-01-07', '2019-11-07', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 476, 55, true, 'Toxic effect of fluorine gas and hydrogen fluoride, assault');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('16cc5668-2672-41da-9ac3-ea75d448c662', 'Table Cloth 62x114 Colour', '2019-10-30', '2019-05-08', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 617, 174, false, 'Acquired absence of leg below knee');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('0a7bd10a-1a5e-4551-9dac-babfd6468704', 'Dried Peach', '2019-06-03', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 453, 56, false, 'Gastric contents in respiratory tract, part unspecified causing other injury, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('5e6e89be-0c3c-44bc-98fa-6f04d5b03b11', 'Mountain Dew', '2019-09-04', '2019-11-27', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 1223, 31, true, 'Miscellaneous radiological devices associated with adverse incidents, not elsewhere classified');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('dca7abee-9928-4b5a-9103-f6ed336c156a', 'Tea - Lemon Scented', '2019-12-29', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 1331, 125, true, 'Abnormal cytologic smear of anus');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('57b8f933-50e7-4898-b5f2-c6209859c84a', 'Table Cloth 81x81 White', '2019-09-16', '2019-03-24', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 1095, 114, false, 'Disorders of optic chiasm in (due to) neoplasm');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('8a07308b-774e-4927-97ef-05eac77f98f8', 'Onions - Vidalia', '2019-11-03', '2019-08-24', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', 808, 142, false, 'Osteochondritis dissecans');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('0e0dfc4f-be3a-443e-a9c2-1877c5c84e4d', 'Lobster - Live', '2019-05-28', '2019-10-28', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 1080, 179, true, 'Displaced comminuted supracondylar fracture without intercondylar fracture of right humerus, subsequent encounter for fracture with nonunion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('f4050225-d9db-449d-a7ee-6c4a81c62875', 'Apricots - Dried', '2019-08-14', '2020-01-30', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', 865, 68, false, 'Laceration of intrinsic muscle, fascia and tendon of right index finger at wrist and hand level, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('7c9fc892-a0d2-4ca6-9220-960ba4b4a3cb', 'Jello - Assorted', '2019-05-05', '2019-11-23', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', 606, 151, false, 'Pigmentary glaucoma, right eye');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('fdb058d6-fa4c-435f-b663-148deceea431', 'Soup - Campbellschix Stew', '2019-07-29', '2020-01-28', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 89, 103, false, 'Unspecified open wound of left eyelid and periocular area, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('34f33388-046b-44eb-b9a9-8e4e8e1b9f95', 'Lamb - Whole, Frozen', '2019-05-17', '2019-11-07', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 159, 180, true, 'Salter-Harris Type IV physeal fracture of upper end of humerus, left arm, initial encounter for closed fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('2bce2d02-084a-446c-a23a-b20f70d7f8f1', 'Garbag Bags - Black', '2019-04-13', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 465, 91, false, 'Fracture of subcondylar process of right mandible, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('43acfb47-cd2f-40dd-9403-fac166c62371', 'Dikon', '2019-04-29', '2019-04-22', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', 767, 112, true, 'Nondisplaced fracture of sternal end of right clavicle, subsequent encounter for fracture with delayed healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('cb4b764c-b913-4ed3-8e77-915e6215d1cf', 'Tray - 16in Rnd Blk', '2020-01-20', '2019-03-20', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', 986, 156, false, 'Spinal enthesopathy');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('beea6a36-35d2-400b-aad4-b4d49241fb8a', 'Table Cloth 72x144 White', '2019-04-15', '2019-06-18', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', 1412, 109, false, 'Broken internal right hip prosthesis, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('1fdc6ec6-4c48-4654-9e1a-2bb1a36fdc22', 'Stock - Chicken, White', '2019-08-20', '2019-03-31', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 536, 80, true, 'Open bite, right hip, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('48b85399-fc8c-491b-b2ed-d508df54b5ba', 'Fennel - Seeds', '2019-10-21', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 1004, 159, true, 'Other fracture of shaft of radius, right arm, subsequent encounter for open fracture type I or II with delayed healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a8d52538-0e95-4f12-9c68-008a039950fe', 'Wine - Chateau Aqueria Tavel', '2019-12-25', '2019-06-04', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', 388, 84, false, 'Fall into natural body of water striking bottom causing other injury, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('ff63a763-3f60-494a-a3be-3632dca3e150', 'Sole - Iqf', '2019-04-02', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/dddddd/000000', 632, 120, false, 'Unspecified fracture of T7-T8 vertebra, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('9242856d-3a79-4cf7-a86a-3f3f8248d303', 'Guava', '2019-08-01', '2019-10-02', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.bmp/dddddd/000000', 1151, 133, true, 'Military operations involving other forms of conventional warfare, military personnel');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('2b8516d4-6aa9-427a-88f0-67949677b4ef', 'Vector Energy Bar', '2020-01-09', '2019-07-19', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/dddddd/000000', 249, 52, true, 'Displaced transcondylar fracture of unspecified humerus');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('5ec07b02-f66c-45e6-8fa6-85ac24cda763', 'Barley - Pearl', '2019-11-01', '2019-08-03', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/dddddd/000000', 595, 157, true, 'Valgus deformity, not elsewhere classified, left ankle');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('59577b7e-72de-4a6c-b3b7-917eb830a3b4', 'Tart Shells - Savory, 2', '2019-10-15', '2020-01-02', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 870, 185, false, 'Arthritis due to other bacteria, left knee');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('99e88127-30f1-4b7a-b578-3b790e191dcc', 'Mackerel Whole Fresh', '2019-05-29', '2019-10-18', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 682, 139, false, 'Unspecified injury of other muscle(s) and tendon(s) of posterior muscle group at lower leg level, unspecified leg');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('8b94c44c-a579-4949-b16e-9c0f992db023', 'Beer - True North Lager', '2019-03-01', '2019-03-12', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/dddddd/000000', 287, 43, false, 'Contusion, laceration, and hemorrhage of cerebellum with loss of consciousness of unspecified duration');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('2d091985-b2d0-4801-9343-db6544afca36', 'Mustard - Pommery', '2019-03-01', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/ff4444/ffffff', 642, 198, false, 'Assault by other specified means, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('3242f04d-748f-42b0-95b1-b7fc1eebc429', 'Bols Melon Liqueur', '2020-01-15', '2019-08-08', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 1058, 108, false, 'Displaced oblique fracture of shaft of humerus, left arm, subsequent encounter for fracture with routine healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('e9de2e7e-096d-4fd1-973b-dcaf5d64684c', 'Kellogs All Bran Bars', '2019-11-14', '2019-06-19', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 626, 114, true, 'Corrosions involving 90% or more of body surface with 20-29% third degree corrosion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('7d6baca5-6b0d-4b4f-9591-8ee1d808be8e', 'Muskox - French Rack', '2019-04-15', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 1283, 111, false, 'Unspecified fracture of second thoracic vertebra, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('c1d8b173-c26a-41a7-ab85-f3c02e38a4e4', 'Tart Shells - Sweet, 3', '2019-10-02', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 130, 74, false, 'Contusion of unspecified front wall of thorax, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('4a81e92f-c8e6-416f-a18f-77a13697793f', 'Pate Pans Yellow', '2019-09-24', '2019-11-24', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 1001, 80, false, 'Toxic effect of contact with venomous frog, assault, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('68276db5-d048-4dfb-a066-18fda3e187de', 'Beef - Inside Round', '2019-07-25', '2019-10-01', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 886, 178, false, 'Occupant of three-wheeled motor vehicle injured in collision with other nonmotor vehicle');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('e466ffb1-6048-4fc5-bef3-eaa39f645f86', 'Veal - Heart', '2019-04-09', '2020-02-10', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/ff4444/ffffff', 503, 82, false, 'Displaced fracture of second metatarsal bone, right foot, subsequent encounter for fracture with routine healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('8d1e54b0-602e-4f88-8b86-7d874764eadb', 'Iced Tea - Lemon, 460 Ml', '2019-06-26', '2019-10-05', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', 1181, 83, true, 'Abrasion of right hand, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('8034c6f5-9aea-45b7-9efc-1de20bc200fe', 'Pernod', '2019-03-01', '2019-12-06', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', 1313, 15, false, 'Chronic nephritic syndrome');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('0028ad9b-4da0-4c57-8124-b302cc13262e', 'Veal - Kidney', '2020-01-17', '2019-09-12', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/cc0000/ffffff', 1278, 30, true, 'Merkel cell carcinoma of lip');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('f250ac88-72c1-4da1-bcea-ccdcdcbd14c1', 'Club Soda - Schweppes, 355 Ml', '2019-11-07', '2019-10-02', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', 1244, 53, true, 'Other acute osteomyelitis, femur');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('67f84130-8190-43e1-9f88-0cc624771fc5', 'Coffee Beans - Chocolate', '2019-12-17', '2020-01-31', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', 654, 131, true, 'Corrosion of third degree of chest wall, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('dc7b273d-02bc-4336-ac2a-f1f336268e0f', 'Carbonated Water - Strawberry', '2019-04-27', '2019-07-18', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/dddddd/000000', 239, 126, true, 'Pathological fracture in other disease, unspecified ulna and radius');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('822bb7f2-f57d-4175-be2d-28f4d6b0234a', 'Nut - Chestnuts, Whole', '2019-06-19', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/dddddd/000000', 772, 120, false, 'Corrosion of first degree of left elbow, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('96179f2f-92c0-48c1-886c-bff871bb8a9a', 'Coffee Guatemala Dark', '2019-03-17', '2019-04-10', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/dddddd/000000', 301, 127, false, 'Nondisplaced fracture of medial cuneiform of unspecified foot, subsequent encounter for fracture with malunion');
