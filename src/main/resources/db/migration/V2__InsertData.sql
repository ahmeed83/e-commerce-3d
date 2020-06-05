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

insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('33a1b611-dc31-49c3-abb0-09ecf876942d', 'Cheese - Feta', '2019-09-27', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$255.01');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9c4f04b4-4182-4901-8a86-9a44fe53f3ad', 'Beer - True North Strong Ale', '2019-08-09', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$110.15');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('aa7059eb-3573-417f-ae79-3a82f7654fc1', 'Cookies Almond Hazelnut', '2019-11-23', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$240.21');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('3cf803fb-f960-47e8-b64f-3d68b6223e14', 'Plasticknivesblack', '2019-06-19', '2019-04-09', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/dddddd/000000', '$86.16');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9ba05523-6165-4f37-bbd4-2871f1777b31', 'Chilli Paste, Ginger Garlic', '2019-07-06', '2019-12-27', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$109.74');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('596a0656-e89c-4259-8597-5b2736776e25', 'Coconut - Shredded, Unsweet', '2020-02-08', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$79.31');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('419085b8-6604-4bf3-9721-07e35701cbab', 'Wine - Tio Pepe Sherry Fino', '2019-05-01', '2019-03-17', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$149.44');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('66d9dfc7-21fb-4c9c-bf55-c0e143f47205', 'Chips - Miss Vickies', '2019-06-09', '2019-04-21', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/dddddd/000000', '$143.86');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('64a1f046-18c9-4366-9372-e26a4b39800f', 'Sauce - Marinara', '2019-07-16', '2019-10-22', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$89.95');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('de1e834b-5628-4326-a229-574a7ac7acf8', 'Chef Hat 20cm', '2019-07-19', '2019-04-06', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$182.51');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('672922c8-5eb8-480b-9b4f-6ab20a139627', 'Cheese - Brie', '2019-04-04', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$265.02');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('fe8f8933-a7ae-41c4-86c9-e2eb8018c643', 'Cake - French Pear Tart', '2019-04-22', '2020-02-10', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/dddddd/000000', '$241.40');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('49b84502-7ffb-41d4-81f3-765fb139f4f9', 'Cheese - Blue', '2019-09-10', '2020-01-08', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/dddddd/000000', '$255.56');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('e573c4d8-9e24-499f-a391-776a27ac7786', 'Pasta - Lasagna Noodle, Frozen', '2019-04-07', '2019-06-30', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$264.93');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('4b18a990-a539-40e8-9748-2de2620eb8c1', 'Yams', '2019-05-26', '2019-08-10', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$131.79');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('3b079019-4d33-4a10-acd2-82b369081cb0', 'Nectarines', '2019-11-21', '2019-08-24', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$87.56');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('d403f454-10c6-4a58-9d68-66a4c0426dd3', 'Cheese - Brick With Pepper', '2019-03-16', '2020-01-17', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$250.17');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('353590ea-aa02-45bd-90ef-d014b891ecaf', 'Tandoori Curry Paste', '2020-02-03', '2019-07-23', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$149.21');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('2a5bd5e5-13dc-4248-929d-256d06bda12c', 'Pie Box - Cello Window 2.5', '2019-06-02', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$100.53');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('5a6e8380-f3e8-44de-a3b8-f25d53b82b39', 'Figs', '2019-04-01', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$114.96');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f19787a1-7e5a-468b-94d0-44cfec85d3fc', 'Wine - Savigny - Les - Beaune', '2019-03-14', '2019-07-29', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$140.63');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('674996db-f7fd-4ad1-ba6a-fee8d810d4cc', 'Island Oasis - Peach Daiquiri', '2019-08-22', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '$214.70');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('054f3d59-a9a3-49be-9e78-308336ffb458', 'Fudge - Chocolate Fudge', '2019-02-22', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$124.48');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('d2f34017-f72d-4279-b271-2c42585726bd', 'Eggs - Extra Large', '2020-02-07', '2019-11-19', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$174.91');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('98066c68-2873-4b5e-949c-f2faa9bf7001', 'Squeeze Bottle', '2019-02-25', '2019-10-23', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$158.06');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('449c78a3-7cfe-4b9d-bbf5-bd5d6e898485', 'Scallops - 10/20', '2019-12-24', '2019-12-13', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$177.54');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9d8f98e1-3883-4918-b781-ac92d43f69dd', 'Sage Derby', '2019-02-16', '2019-05-21', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '$293.60');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('82a9775c-3ff2-411a-b557-f3948d4dc5fb', 'Pork - Tenderloin, Frozen', '2020-01-01', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$145.56');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f3283a31-d768-4442-a394-c5fb8369cbdf', 'Wine - Trimbach Pinot Blanc', '2019-06-20', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$286.69');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('858d67a2-7a3a-4a60-a9c5-65ad68b5a264', 'Beer - Sleemans Honey Brown', '2019-04-06', '2019-10-20', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/dddddd/000000', '$95.16');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('04245170-ef2b-4bca-a46d-b419ab5a42cc', 'Beans - Black Bean, Dry', '2019-06-30', '2019-06-29', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$70.62');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('2dd8647e-7948-4464-a35f-170b8182b743', 'Instant Coffee', '2019-06-18', '2019-06-11', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$55.57');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f305075b-06fd-4e92-87d8-3afa228cb3c9', 'Wine - Merlot Vina Carmen', '2020-02-09', '2019-12-01', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$156.55');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f322848b-b149-47b1-a8bd-d9b0474a8cc8', 'Foam Espresso Cup Plain White', '2019-07-23', '2019-05-08', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$285.83');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('d3fea164-94f9-4918-8778-edd0e9917eb6', 'Broccoli - Fresh', '2019-03-13', '2020-01-11', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$127.13');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('c23545e9-a60b-4dc0-937f-4dd626af2e31', 'Vodka - Moskovskaya', '2019-05-26', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/dddddd/000000', '$248.57');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('257ab309-ea1f-4726-8bc5-80173ad44085', 'Kiwi', '2019-09-09', '2019-09-01', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$187.77');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('fb6c23e1-3ff5-435a-af9c-a7d98237200a', 'Pork - Hock And Feet Attached', '2019-02-17', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$88.18');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('a7286f9e-f80c-4ad7-8727-f5f55c38c595', 'Arizona - Green Tea', '2019-04-25', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$155.58');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9950d711-c215-4b6b-971b-9c0627ccd701', 'Onion - Dried', '2019-05-12', '2019-09-11', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$73.67');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('36ca611e-4e0a-4d1d-8f03-9b7d574d4414', 'Veal - Round, Eye Of', '2019-05-08', '2019-05-20', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$152.83');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('54291eea-2109-48e5-9c21-b6050fb320d1', 'Pork - Bacon, Double Smoked', '2019-11-03', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$146.99');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f170f675-cac8-4980-be27-fa0c0760d7e8', 'Spinach - Packaged', '2019-11-05', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$81.51');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('68fb29dc-700f-4ff2-8d06-904dc2c3e453', 'Pepper - Scotch Bonnet', '2019-09-02', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/dddddd/000000', '$259.96');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('67720ea7-eaeb-4cdd-bf9b-33f63d0736c2', 'Oil - Pumpkinseed', '2019-06-16', '2019-10-10', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$204.69');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('e6c86d1d-2526-4175-815d-b2fd2e83c1f0', 'Sprouts Dikon', '2019-11-27', '2019-09-09', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$294.52');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('e2fab71a-15fe-435f-93af-207efb39e6c1', 'Pork - Bacon,back Peameal', '2020-01-30', '2019-09-25', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/dddddd/000000', '$163.91');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9be85ed2-44f2-49c1-ad3d-fc5eb901c8bc', 'Beef - Top Sirloin - Aaa', '2019-08-04', '2020-01-08', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$118.55');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('65a5e77c-7e58-4a14-a7a3-d203a50824d1', 'Curry Paste - Green Masala', '2019-05-20', '2019-02-28', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/dddddd/000000', '$188.51');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('c9bdf54a-8da2-44a7-95d6-8aaba1740821', 'Ecolab Digiclean Mild Fm', '2019-06-04', '2019-03-11', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$148.88');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('2ee1705b-0003-4812-88ce-b911b3b61594', 'Flavouring - Orange', '2019-02-21', '2019-11-06', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$200.51');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('c24bfadf-471e-4bf4-9e43-f84dcfa9b167', 'Veal - Inside', '2019-11-26', '2019-03-08', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '$129.21');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('b0cb930d-ca0e-4b0d-8bb0-ea3337810063', 'Pepper - Orange', '2019-05-24', '2019-04-15', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$114.74');
