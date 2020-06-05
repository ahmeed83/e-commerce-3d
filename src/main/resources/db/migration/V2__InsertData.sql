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
values ('6fd40977-a429-4959-8497-36b93d144477', '2019-05-22', '2019-11-17', 'ac7c189a-a9d7-4f37-8f55-fee44f108355',
'LG');

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

insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('596c674b-3865-4b02-953a-b4edcddf93ef', 'Flower - Commercial Spider', '2019-03-22', '2020-01-10', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$153.09');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('c3f05369-3ea3-4708-86bb-22544805a260', 'Water - Aquafina Vitamin', '2019-10-07', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$54.13');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('ed606a11-2871-4b82-8c10-669c309a8bf5', 'Lamb - Pieces, Diced', '2019-04-15', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$55.58');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('595c7ffe-59c1-4fda-a59f-b004617cea6a', 'Baking Soda', '2019-06-01', '2019-05-25', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '$58.17');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('a53c825d-a6dd-4aab-9381-aa435972ce1c', 'Chips Potato All Dressed - 43g', '2019-03-12', '2019-10-05', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$198.23');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('d35cf3b1-1206-47e0-800a-a0ba51baef0d', 'Seabream Whole Farmed', '2019-08-12', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$246.54');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f7f6692c-400a-4d50-8961-9e6df14afec2', 'Veal - Leg, Provimi - 50 Lb Max', '2019-11-13', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/cc0000/ffffff', '$145.57');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('3ace4872-2000-4b81-b2ea-be0a4ee55aa2', 'Wine - Casablanca Valley', '2019-04-29', '2019-12-24', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/cc0000/ffffff', '$152.32');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('83145bbe-15b1-46b8-819e-01ecf7c77f10', 'Soap - Mr.clean Floor Soap', '2019-12-05', '2019-09-06', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/dddddd/000000', '$225.02');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('044d6ab2-331b-4db5-bcfd-e475c07feb7c', 'Oil - Canola', '2019-03-20', '2019-09-11', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$171.18');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('d3e7663d-cc36-4fd6-87a8-3ec790c2742e', 'Cranberries - Fresh', '2019-06-12', '2019-05-24', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '$142.73');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('ed7e8af7-97df-4d44-88f7-42322420bc22', 'Cauliflower', '2019-07-18', '2019-04-18', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$95.56');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('8847cbde-470c-4fe5-9c91-3a7c2532cef5', 'Nestea - Ice Tea, Diet', '2019-06-09', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$217.83');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('a3f7f77e-5229-45e9-b5fb-31f18882fefc', 'Beef - Tongue, Cooked', '2019-12-07', '2019-11-12', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$103.21');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9c9f295e-2510-405b-ad1d-4d44decb3804', 'Pasta - Cappellini, Dry', '2019-04-29', '2019-11-15', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '$222.68');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('518d3545-d155-4b2a-bd68-f180e9654c60', 'Spice - Paprika', '2019-09-29', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '$217.68');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('b8e5536d-ff66-4236-ab97-3ca59eec0612', 'Butter Sweet', '2019-10-31', null, 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$136.67');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('4f145879-866d-4c09-83c4-3bfc3ed56bc4', 'Red Snapper - Fillet, Skin On', '2019-06-24', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/dddddd/000000', '$71.53');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('d06abd8f-9d23-4c3a-bb81-ffe2177d4f4a', 'Clams - Bay', '2020-02-06', '2019-03-05', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$102.38');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('643e938a-10c1-423f-940a-2d4dd419a280', 'Compound - Rum', '2019-07-15', '2019-09-25', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$236.62');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('0c83ab0d-3c6d-479f-8597-4a4beaf21845', 'Grapes - Red', '2019-04-14', '2019-11-13', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$167.34');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('f16ea8c1-3702-433a-bdbc-97bbae350ea5', 'Soap - Pine Sol Floor Cleaner', '2019-02-18', '2020-02-02', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$130.06');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('a16ac20d-bef6-4eb3-9ff9-af0a49690d00', 'Bread - Italian Corn Meal Poly', '2019-05-04', '2020-01-12', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$82.82');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('b0ebabc4-b887-4f44-8872-043d171a2ccc', 'Island Oasis - Ice Cream Mix', '2019-10-01', '2019-12-12', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$181.60');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('90f42d6e-8fff-4b15-9db1-f851f92e0b28', 'Appetizer - Asian Shrimp Roll', '2019-05-20', null, 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$198.18');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('dfd4f2e3-c95f-4de0-afd3-5af9ca73cdc0', 'Wine - Red, Wolf Blass, Yellow', '2019-03-25', '2019-04-27', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$232.38');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('6e94cf3c-e3aa-4284-9f73-6b822d692632', 'Sorrel - Fresh', '2019-05-17', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$220.95');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('4e2d0041-95f8-491b-b912-af780d4a074a', 'Wine - Casillero Del Diablo', '2020-02-11', '2019-12-31', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$275.80');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('487d09df-e1af-4b91-b1ec-f4cf4ed4eb2b', 'Vinegar - White Wine', '2019-05-28', '2019-04-26', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$297.03');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('e393bd78-081d-48c3-aa66-0823972192b3', 'Oil - Truffle, White', '2020-01-21', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$115.75');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('4e62724f-caf5-4419-9028-7826ba20c28a', 'Bread Base - Goodhearth', '2019-07-11', '2020-02-05', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$77.37');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('2cd3cc7a-7ce2-4971-95a4-eff31761952e', 'Beef - Rouladin, Sliced', '2020-01-23', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/dddddd/000000', '$271.73');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('192db316-ba6c-4620-8779-1b39671cf074', 'Beef - Tender Tips', '2019-07-09', '2019-12-25', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/5fa2dd/ffffff', '$168.33');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('7379d8c5-14e7-4d7f-8f71-857648e78ee2', 'Ham - Cooked', '2019-07-02', '2019-11-16', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/5fa2dd/ffffff', '$250.50');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('a2584a2b-7c8f-42d3-945b-fdab0ac8b2a3', 'Oregano - Fresh', '2019-12-25', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$200.59');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('e0a869c3-724a-4bb3-978f-aa066d3191d2', 'Almonds Ground Blanched', '2019-07-12', '2019-08-07', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$69.23');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('2aa5cedf-12a0-46c0-84e0-22443e6de46b', 'Cumin - Whole', '2019-12-10', '2019-08-19', '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$58.13');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('12032ac8-e62c-43ff-817d-8a139698e840', 'Wine - Domaine Boyar Royal', '2019-10-29', '2019-06-12', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$108.69');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('dce27a9b-17fc-4865-9543-50d61934d57d', 'Gatorade - Cool Blue Raspberry', '2019-12-21', '2019-07-04', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$112.86');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('96e38de7-ab47-4a62-a4e1-bd7e39fc15a4', 'Coffee - Decaffeinato Coffee', '2019-10-02', '2019-08-03', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$277.19');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('394fce5d-6ba0-4687-a3a3-9ee1d69a0ac8', 'Sausage - Breakfast', '2019-02-23', '2019-06-03', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/dddddd/000000', '$87.73');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('06056907-ef3d-4977-9f61-026ad633c877', 'Cake - Box Window 10x10x2.5', '2019-06-21', '2019-11-11', 'c6478c53-1835-4a25-badc-6b45e490876c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/5fa2dd/ffffff', '$242.23');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('974903aa-f6d6-462a-aaf5-6d3bd9df9808', 'Turkey - Breast, Smoked', '2019-09-04', null, '6d176685-2c6a-489d-9988-684a22903244', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$209.79');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('9134a0c0-7cd4-4653-aff4-b799c76a2843', 'Creme De Menth - White', '2019-06-10', null, '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$65.19');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('892d270f-61ac-4d82-89da-88c732d36318', 'Extract - Lemon', '2019-05-21', null, '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/cc0000/ffffff', '$188.60');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('61f12889-d148-4b60-929c-7d827a0c4d01', 'Cabbage - Green', '2019-09-03', '2019-04-06', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144477', 'http://dummyimage.com/250x250.png/ff4444/ffffff', '$153.91');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('45ed2ea6-83de-41fc-923b-7778f0ea1907', 'Carrots - Jumbo', '2019-10-27', '2019-09-24', '814642d2-7dcc-4279-91b7-70e368127a78', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$129.84');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('ac3450f7-272f-4b3f-8fa6-5813cbbce135', 'Bread Country Roll', '2019-10-29', '2019-02-14', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144455', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$188.13');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('8c16ef9c-3c2b-403b-8d19-5b16ced9e4d3', 'Bag - Regular Kraft 20 Lb', '2019-07-18', '2019-04-12', 'ac7c189a-a9d7-4f37-8f55-fee44f108355', '6fd40977-a429-4959-8497-36b93d144444', 'http://dummyimage.com/250x250.jpg/ff4444/ffffff', '$160.10');
insert into PRODUCT (id, name, created_at, updated_at, category_id, sub_category_id, pic_location, price) values ('35073360-cba0-4e1c-989f-e6c37b8f997d', 'Beer - Blue', '2019-08-04', '2019-11-11', '6fd40977-a429-4959-8497-36b93d19769c', '6fd40977-a429-4959-8497-36b93d144466', 'http://dummyimage.com/250x250.bmp/ff4444/ffffff', '$79.76');
