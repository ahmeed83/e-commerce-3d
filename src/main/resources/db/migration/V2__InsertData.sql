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

insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('115a8fa2-53ca-4a49-b260-e19fa2a05a69', 'Hipnotiq Liquor', '2019-02-28', '2019-12-27', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '1620.40', true, 'Unspecified injury of other blood vessels at hip and thigh level, left leg');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('b0153b05-3f2d-4fba-8c5d-bf48fed7b1ef', 'Crab Meat Claw Pasteurise', '2019-10-30', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '1634.05', false, 'Complete traumatic amputation of right lower leg, level unspecified');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('29e8dbb1-f547-46b6-b9e9-e3bd8fe848d8', 'Jam - Strawberry, 20 Ml Jar', '2019-08-03', '2019-05-27', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '199.05', true, 'Congenital malformations of spine and bony thorax');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('971d099a-3c76-4553-9635-c1dec5e28901', 'Rice - Sushi', '2019-06-02', '2019-08-26', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '266.89', true, 'Contusion of unspecified ring finger with damage to nail');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('3074687f-8f28-4c9c-818a-49fa78ce233d', 'Oil - Sesame', '2019-08-09', '2019-12-29', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '1307.61', false, 'Squamous cell carcinoma of skin of other and unspecified parts of face');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('14babd29-4abc-49c3-aed0-906bace2f5fa', 'Longos - Greek Salad', '2019-08-12', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '718.91', true, 'Person on outside of heavy transport vehicle injured in collision with railway train or railway vehicle in nontraffic accident, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('2cbdc61a-4c44-4935-a6fa-0cf119a099c2', 'Tea - Herbal Sweet Dreams', '2019-10-31', '2019-09-24', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '120.30', false, 'Poisoning by mixed bacterial vaccines without a pertussis component, intentional self-harm, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('36764c95-5ae5-44dc-8d5e-fa579bf8d5d0', 'Table Cloth 54x72 Colour', '2019-08-26', '2019-07-26', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '1865.52', false, 'Nondisplaced fracture of base of fourth metacarpal bone, left hand, subsequent encounter for fracture with nonunion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('3760106d-c47b-47f1-8dab-3adddd1b3a50', 'Puree - Blackcurrant', '2019-11-18', '2019-07-31', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/dddddd/000000', '1705.61', false, 'Burn of second degree of female genital region, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('40855d24-3602-479c-9a3b-43c833c30d04', 'Wine - Rhine Riesling Wolf Blass', '2019-08-03', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/dddddd/000000', '1396.92', true, 'Spondylopathy in diseases classified elsewhere, thoracolumbar region');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('5188a6ae-0069-446c-ab96-9fc7696c18d7', 'Cookie Trail Mix', '2019-09-08', '2019-04-26', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '1616.45', true, 'Corrosion of first degree of chin, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('67be8ad4-645b-4fe3-9615-532d808c24ae', 'Contreau', '2019-06-15', '2019-08-10', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '609.94', false, 'Toxic effect of hydrogen sulfide, assault, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('95c5f4e0-abb7-453c-9787-8a174fdfe8d0', 'Mustard - Seed', '2019-02-13', '2019-07-06', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1279.77', true, 'Greenstick fracture of shaft of radius, left arm, initial encounter for closed fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('abf054a0-c3bd-442c-adb1-0131e3622986', 'Red Currants', '2019-05-31', '2019-11-04', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '1448.65', true, 'Laceration without foreign body of right index finger with damage to nail, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('57d9adde-f64c-46cf-90f1-022a825ab3bf', 'Muffin Mix - Morning Glory', '2019-04-08', '2020-01-21', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '506.52', true, 'Poisoning by penicillins, accidental (unintentional)');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('b3e687d6-3908-42e8-8d2f-5c203e5dc1b1', 'Turkey Leg With Drum And Thigh', '2019-05-12', '2020-01-09', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '480.88', true, 'Nondisplaced segmental fracture of shaft of left fibula, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with malunion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('6c9a4679-d107-4066-b1f6-71a5833f0ccf', 'Kiwi', '2019-03-11', '2019-10-14', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '353.98', true, 'Exposure to welding light (arc), sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('06f56b01-eb06-4d73-b866-7386c56c12ac', 'Nut - Almond, Blanched, Ground', '2019-11-07', '2019-09-16', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '794.67', false, 'Placentitis');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('ce4e19a2-5292-4dc6-983b-ef99ae4ad605', 'Wine - Beringer Founders Estate', '2019-04-30', '2019-08-10', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '1243.42', true, 'Problems in relationship with spouse or partner');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('a37d4ccd-e223-4bb0-95f6-11e0676f449c', 'Bagelers', '2019-03-08', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '1659.00', true, 'Ganglion, multiple sites');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('867ce479-d533-4460-b403-f609912f557d', 'Napkin - Beverge, White 2 - Ply', '2019-02-21', '2019-12-29', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '1535.01', false, 'Drowning and submersion due to being thrown overboard by motion of (nonpowered) inflatable craft, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('a75cbef3-8f0f-4adc-a4b1-d63ec7142c49', 'Soup - Campbells Mac N Cheese', '2019-08-16', '2020-01-11', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '1073.09', false, 'Subluxation of midcarpal joint of right wrist, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('8d7c0965-2181-4b26-b335-ec91e7dbec74', 'Food Colouring - Red', '2019-09-17', '2019-05-14', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '701.47', true, 'Maternal care for scar from previous cesarean delivery');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('086f2c98-2e30-42f2-8e09-f9e710f9e3da', 'Juice - Ocean Spray Kiwi', '2019-10-11', '2019-05-25', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1599.73', false, 'Unspecified physeal fracture of right calcaneus, initial encounter for open fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('fe6a7531-c082-46f3-bb4b-fa34c5644c98', 'Radish - Pickled', '2020-01-29', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '185.01', true, 'Subluxation of interphalangeal joint of unspecified great toe');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('e2bbe85e-80bc-40f6-8fb6-fdeecfd0204b', 'Kaffir Lime Leaves', '2019-03-28', '2019-06-22', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '102.35', false, 'Postprocedural respiratory failure');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('bc2811e6-538b-42a0-9b8f-c10622bad4a1', 'Table Cloth 62x120 White', '2019-08-25', '2019-09-16', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '419.21', true, 'Complete lesion at unspecified level of thoracic spinal cord, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('edb835b5-c1bb-4e22-b6f2-539cd00175a1', 'Arctic Char - Fillets', '2019-12-18', '2019-07-18', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/dddddd/000000', '1590.83', false, 'Giardiasis [lambliasis]');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('499d6d6e-c6ba-4e5d-b276-f579dbb42cc4', 'Juice - Orange, 341 Ml', '2019-09-06', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '1550.93', false, 'Displaced spiral fracture of shaft of left tibia, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with nonunion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('c7fd9a21-4ad1-4a1b-83fa-718cc9242967', 'Beer - Muskoka Cream Ale', '2019-04-09', '2020-02-02', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '1705.37', false, 'Unspecified injury of other specified muscles, fascia and tendons at thigh level, right thigh, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('494de35d-bf8a-499d-8a25-595dbded227d', 'Sword Pick Asst', '2019-06-06', '2019-08-11', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '935.73', false, 'Paralytic calcification and ossification of muscle, left forearm');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('8788e2de-d79f-4c6e-baaa-3fd409eb40ca', 'Snails - Large Canned', '2019-12-28', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '863.57', true, 'Drug induced acute pancreatitis without necrosis or infection');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('da03fd24-b53e-4b57-aaef-d14569aab5cf', 'Ice Cream Bar - Hagen Daz', '2019-08-05', '2019-08-05', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '244.92', true, 'Struck by ice hockey puck');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('ddbb487b-9868-4875-aa25-7ccacced2c9c', 'Jack Daniels', '2020-01-04', '2019-11-15', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '1553.03', false, 'Benign lipomatous neoplasm of skin and subcutaneous tissue of unspecified limb');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('45d0193d-a034-44b7-bc0e-0068284bb17e', 'Pur Value', '2019-06-06', '2019-03-31', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '842.73', false, 'Strain of flexor muscle, fascia and tendon of other finger at wrist and hand level, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('627cf415-281d-4708-83df-7dd3f327625e', 'Nantucket Cranberry Juice', '2019-09-09', '2019-09-16', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '1432.79', false, 'Posterior dislocation of unspecified sternoclavicular joint, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('33881630-5a73-4324-859d-8ac28c8a4d74', 'Durian Fruit', '2019-08-03', '2019-10-20', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '457.63', true, 'Nondisplaced transverse fracture of shaft of left ulna, initial encounter for open fracture type IIIA, IIIB, or IIIC');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('eb7f81b2-9636-49de-aa7f-7cbe2d155e22', 'Pie Filling - Apple', '2019-07-23', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '1600.97', true, 'Extreme immaturity of newborn');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('41479562-48e9-4d9e-908a-d84ee28af1fe', 'Pepper - Black, Ground', '2019-09-22', '2019-11-22', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '569.16', true, 'Nondisplaced intraarticular fracture of right calcaneus, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('b5ce452d-a470-4e12-9901-a71dd704855e', 'Crab - Dungeness, Whole', '2019-07-11', '2019-02-27', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '1102.79', false, 'Abrasion of unspecified external genital organs, male, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('5906d132-47b1-4c45-b560-4bc2db3295f0', 'Extract - Vanilla,artificial', '2019-06-24', '2020-02-05', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1648.95', true, 'Vestibular neuronitis, right ear');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('60d462c6-6a3c-424a-9c97-a92b05e0fb01', 'Calypso - Pineapple Passion', '2019-03-31', '2019-03-08', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '1217.19', false, 'Other fracture of shaft of left humerus, subsequent encounter for fracture with routine healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('8a8acf12-677a-4890-880d-f6ae52f69145', 'Red Snapper - Fresh, Whole', '2019-07-19', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/dddddd/000000', '1737.04', false, 'Nondisplaced segmental fracture of shaft of ulna, left arm, subsequent encounter for open fracture type I or II with delayed healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('de45a39d-ba1c-44dc-bea7-7c732cbe1927', 'Tart Shells - Sweet, 4', '2019-05-10', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '151.95', false, 'War operations involving explosion of sea-based artillery shell, civilian');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('dab4d4b2-b839-47c8-b38c-42985bd13aa4', 'Evaporated Milk - Skim', '2019-10-09', '2019-10-10', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '604.64', false, 'Salter-Harris Type II physeal fracture of lower end of left tibia, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('5e0c63ac-8f35-4e6d-a144-96e580cab648', 'Iced Tea - Lemon, 340ml', '2019-08-26', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '1267.10', true, 'Other specified fracture of unspecified ischium, initial encounter for closed fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('d7433a4a-165b-46ad-bcc1-f322570593fc', 'Wine - Red, Cooking', '2019-07-26', '2019-09-18', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '1578.22', false, 'Displaced fracture of neck of left radius, subsequent encounter for open fracture type IIIA, IIIB, or IIIC with routine healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('bbf2a302-0795-4b56-9265-d5fc54e3c07b', 'Chocolate Liqueur - Godet White', '2019-06-26', '2019-07-13', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '81.34', true, 'Juvenile rheumatoid arthritis with systemic onset, right shoulder');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('ef90681d-6e76-4783-b32e-3a51fdf50831', 'Kaffir Lime Leaves', '2019-10-23', '2019-07-17', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '729.93', false, 'NIHSS score 25');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, sale, description) values ('cfa7e800-0212-473d-9fd7-4aa8732b2b20', 'Foam Dinner Plate', '2019-11-15', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '441.21', false, 'Osteonecrosis due to previous trauma, left finger(s)');
