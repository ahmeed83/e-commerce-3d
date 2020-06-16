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

insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('28cb4d97-9436-40a0-9958-ca0cac80064f', 'Brownies - Two Bite, Chocolate', '2019-06-23', '2019-09-07', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '1476.64', 36, true, 'Displaced subtrochanteric fracture of right femur, subsequent encounter for open fracture type I or II with malunion');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('8fba3a26-55d9-4dda-8469-10b502acc47d', 'Beef - Texas Style Burger', '2019-11-22', '2019-02-27', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/dddddd/000000', '71.14', 153, false, 'Other specified injury of ulnar artery at forearm level, unspecified arm');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('12222ab3-be70-45f9-b4e2-d3d263d66e8b', 'Shrimp - 16/20, Peeled Deviened', '2019-07-11', '2019-12-06', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1176.11', 183, true, 'Partial loss of teeth due to periodontal diseases, class IV');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('1f7814a1-9269-4fb4-a461-127bc6680952', 'Pepper - Sorrano', '2019-08-25', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '61.81', 69, true, 'Salter-Harris Type II physeal fracture of upper end of humerus');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('0070e6cb-b375-4c7c-bcd1-38474c3993fb', 'Sardines', '2019-03-10', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '585.49', 132, false, 'Other juvenile arthritis, unspecified hand');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('93b63e3b-0801-454c-a71d-1c75b90225f8', 'Aromat Spice / Seasoning', '2019-03-07', '2019-06-13', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '315.27', 165, false, 'Other abnormal findings in specimens from digestive organs and abdominal cavity');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('19f38aa0-84f9-4260-98f4-a2faafcc6936', 'Pie Filling - Cherry', '2019-11-13', '2019-12-21', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '1241.21', 145, true, 'Person on outside of ambulance or fire engine injured in nontraffic accident, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a277b4c0-b5ca-4235-874f-92d5bc13cea5', 'Container - Foam Dixie 12 Oz', '2020-02-03', '2019-04-18', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1573.83', 193, true, 'Displaced fracture of coracoid process, left shoulder, initial encounter for open fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('36599556-58d6-47e2-8978-2d038c32fecd', 'Fruit Salad Deluxe', '2019-08-11', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '1059.88', 24, true, 'Traumatic rupture of volar plate of left ring finger at metacarpophalangeal and interphalangeal joint, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('7ef35e28-d6aa-4a29-a621-af97bf818bcd', 'Gelatine Leaves - Bulk', '2019-06-07', '2020-01-13', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144400', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '665.72', 131, false, 'Underdosing of barbiturates, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('0987cef9-80fd-4ea5-ac1c-aa796770b838', 'Pepper - Julienne, Frozen', '2019-12-08', '2020-01-19', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '1111.76', 16, true, 'Other specified acquired deformities of left forearm');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('3b7f3bc0-c7b5-4799-b6e6-009d66a6150c', 'Puff Pastry - Sheets', '2019-10-26', '2019-07-04', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '1338.02', 108, false, 'Torus fracture of upper end of left tibia, initial encounter for closed fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a9d4f186-5291-4731-98cd-a04bebf8bd04', 'Wine - Casablanca Valley', '2019-03-19', '2019-05-04', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '405.43', 115, true, 'Idiopathic gout, ankle and foot');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('3c98df94-df8c-435e-97fe-103adf6c6bb4', 'Capicola - Hot', '2019-02-24', '2020-01-18', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '1843.66', 186, true, 'Encounter for screening for other protozoal diseases and helminthiases');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('b2063cac-76ec-4847-8fcd-4d657aba0c87', 'Turkey - Breast, Boneless Sk On', '2019-03-31', '2019-08-30', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '1178.92', 35, false, 'Acute lymphangitis of unspecified part of limb');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('66b1406a-cedb-4fb1-b4e4-65d27be4748c', 'Bag - Bread, White, Plain', '2019-08-23', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '1402.06', 142, true, 'Drowning and submersion due to other powered watercraft sinking, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('18878b72-2cd3-43ce-bd15-a50f0277203f', 'Sauce - Hollandaise', '2019-04-06', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '590.57', 185, false, 'Person on outside of ambulance or fire engine injured in nontraffic accident, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('2b052b21-f610-401f-8733-8b382996bbb8', 'Salami - Genova', '2019-07-03', '2019-06-18', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '1911.47', 35, true, 'Malignant neoplasm of lower-inner quadrant of left female breast');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a583abd8-dd3a-4e74-a3e8-dbfff5a036c9', 'Banana', '2019-10-04', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '69.46', 58, false, 'Adverse effect of analeptics and opioid receptor antagonists, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('47da30c6-43ff-4383-8e82-d03deecfcbaa', 'Quail - Jumbo', '2019-05-24', '2019-09-06', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '1287.80', 39, false, 'Unspecified injury of unspecified Achilles tendon');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('19898f17-922a-4945-8a24-bb4e4a4611b7', 'Wine - Sogrape Mateus Rose', '2019-03-30', '2019-05-21', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1845.99', 113, true, 'Corrosion of second degree of multiple left fingers (nail), not including thumb, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('bbd872cb-43e9-4f07-9e29-1d12c88a455f', 'Sauce - Bernaise, Mix', '2019-08-02', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '639.63', 190, false, 'Other incomplete lesion at T11-T12 level of thoracic spinal cord, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('b8de7b9f-b94c-4ff1-bca4-00b59848cb1e', 'Barley - Pearl', '2019-07-02', '2019-05-29', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '301.27', 172, true, 'Displaced comminuted fracture of shaft of ulna, unspecified arm, subsequent encounter for closed fracture with delayed healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('908c5262-b4fb-475c-951c-4016f4cc97f2', 'Jam - Apricot', '2019-12-28', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '1880.73', 135, true, 'Other superficial bite of left thumb');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('897193a8-bd5f-493a-a76e-01378764250f', 'Towels - Paper / Kraft', '2019-12-07', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1570.99', 53, true, 'Type 1 diabetes mellitus with proliferative diabetic retinopathy with macular edema');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('b2708198-49fa-4739-8151-38b689c633e7', 'Container - Clear 32 Oz', '2019-07-10', '2019-03-01', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '312.53', 130, true, 'Fracture of base of skull, left side, initial encounter for open fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('2747ccb9-671e-48d2-adf6-8c6a4afc54c4', 'Mushroom - Portebello', '2019-04-23', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '884.10', 105, true, 'Contact with other commercial machinery');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('c756487f-3985-4bb5-b19a-1e31969668d8', 'Cups 10oz Trans', '2019-03-31', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '1336.68', 169, true, 'Puncture wound with foreign body of unspecified wrist, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('c90c821f-9756-4efe-938c-95b02bd0366b', 'Couscous', '2019-08-13', '2019-11-23', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '200.25', 105, true, 'Secondary malignant neoplasm of other and unspecified respiratory organs');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('ade353c0-fdc9-4195-b721-1140c31a8986', 'Tuna - Salad Premix', '2019-02-27', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '162.26', 114, true, 'Spontaneous rupture of extensor tendons, unspecified site');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('f6cef0b4-6497-49ba-a899-597327900848', 'Soup - French Can Pea', '2019-03-27', '2019-07-29', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '840.54', 98, false, 'Unspecified injury of superior vena cava, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('6007d616-4bbf-4e70-aeaf-58678a905aff', 'Soda Water - Club Soda, 355 Ml', '2019-10-18', '2019-06-15', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '507.12', 44, false, 'Poisoning by antirheumatics, not elsewhere classified, intentional self-harm, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('7963b2c5-df98-41e9-87bc-6556c89345d4', 'Eggwhite Frozen', '2019-11-10', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '1651.81', 11, false, 'Displaced fracture of lateral condyle of right tibia, initial encounter for open fracture type IIIA, IIIB, or IIIC');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('e5b3b13b-ae36-4291-aef8-c4397df8813f', 'Cheese - Goat With Herbs', '2019-08-22', '2019-08-03', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '1992.11', 139, false, 'Contusion, laceration, and hemorrhage of cerebellum without loss of consciousness, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('d2edda3e-11ce-44de-8e6a-d7eddf07c1ae', 'Wine - Prosecco Valdobienne', '2019-07-30', '2019-06-15', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '471.17', 22, true, 'Nondisplaced fracture of trapezoid [smaller multangular], left wrist, subsequent encounter for fracture with delayed healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('cd68d7c7-76bd-4afa-a78c-9095bd8a20f2', 'Pork - Backfat', '2019-05-08', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144499', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '175.11', 127, true, 'Gout due to renal impairment, right hip');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('b5032756-a928-4494-8230-6354f5a186ef', 'Milk - Condensed', '2019-11-21', '2019-10-25', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '1378.13', 64, false, 'Unspecified fracture of upper end of right tibia, initial encounter for open fracture type IIIA, IIIB, or IIIC');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('3265b4e0-981c-4128-b2c3-2ddc63164571', 'Muskox - French Rack', '2019-06-29', '2019-03-30', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '1453.39', 5, true, 'Other specified complication of other internal prosthetic devices, implants and grafts, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a41b7a4a-f4bd-43e3-b1e2-293deefef121', 'Wine - Balbach Riverside', '2020-01-22', '2019-12-05', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/dddddd/000000', '1511.73', 30, false, 'Unspecified symptoms and signs involving cognitive functions following other cerebrovascular disease');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a32be6f4-5922-42cf-af4a-2350b34219b1', 'Apple - Delicious, Red', '2019-05-07', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '1243.68', 141, false, 'Nondisplaced avulsion fracture of tuberosity of unspecified calcaneus, initial encounter for open fracture');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('d660b8b2-eaad-476a-93b4-73ead1f287f0', 'Chocolate Eclairs', '2019-02-27', '2019-09-22', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d129888', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '567.33', 12, false, 'Superficial frostbite of unspecified wrist, initial encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a8a3a8a7-d546-47ec-8779-2d8070db2447', 'Pepper - Red Thai', '2019-11-22', '2019-10-03', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.png/dddddd/000000', '643.02', 128, true, 'Sprain of metatarsophalangeal joint of unspecified great toe, sequela');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('bd478347-7320-449a-90c3-344100ca9a65', 'Chocolate - Pistoles, Lactee, Milk', '2019-07-11', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '1953.83', 124, false, 'Other osteoporosis with current pathological fracture, unspecified humerus, subsequent encounter for fracture with routine healing');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('a24076d0-2143-43dd-821a-ea676e4b3631', 'Wine - Pinot Noir Stoneleigh', '2019-05-02', '2019-10-27', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '1190.89', 36, true, 'Other gonococcal infection of lower genitourinary tract');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('08da6634-75f1-456e-93c4-9c834baa56d2', 'Versatainer Nc - 888', '2019-09-22', '2019-11-17', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '649.81', 49, false, 'Open bite of right great toe without damage to nail');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('14ed117e-d032-4d90-b457-110d383ff097', 'Sauce - Roasted Red Pepper', '2019-03-25', '2019-03-23', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144488', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '241.76', 79, true, 'Phlebitis of portal vein');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('601aab0e-99ac-4cbc-8930-8b7ac3fc154f', 'Thyme - Lemon, Fresh', '2019-11-01', '2019-06-07', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d144477', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '766.07', 86, true, 'Encounter for respirator [ventilator] dependence during power failure');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('22842743-cfb0-4975-ad79-c2918e99c4b8', 'Wine - Red, Pelee Island Merlot', '2019-08-12', '2019-09-17', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '869.34', 24, false, 'Explosion and rupture of air tank');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('fcb87921-bfc5-433e-8767-73f35746a82d', 'Gin - Gilbeys London, Dry', '2019-03-23', '2019-06-16', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '1178.43', 78, true, 'Military operations involving other fires, conflagrations and hot substances, military personnel, subsequent encounter');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price, quantity, sale, description) values ('3daee81f-43c0-496b-b51b-e1c608acae99', 'Ecolab - Orange Frc, Cleaner', '2019-05-23', '2019-09-11', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-11b93d143377', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '930.42', 121, false, 'Age-related osteoporosis with current pathological fracture, unspecified humerus, subsequent encounter for fracture with nonunion');
