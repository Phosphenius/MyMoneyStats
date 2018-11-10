BEGIN TRANSACTION;

CREATE TABLE accounting_entry (
    uid INTEGER PRIMARY KEY,
    crdate INTEGER NOT NULL,
    amount REAL NOT NULL,
    date INTEGER NOT NULL,
    desc TEXT,
    deleted INTEGER DEFAULT 0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (11,1539109456,200.0,1539068400,'Thank you gift for client',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (12,1539109494,40.0,1531724400,'Taxi',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (13,1539109550,150.0,1533020400,'Tech conference',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (14,1539109573,72.0,1533279600,'Lunch with clients',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (15,1539109593,12.0,1533711600,'Uber',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (16,1539109621,40.0,1536735600,'Commute',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (17,1539109648,10.0,1534834800,'Pen purchase',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (18,1539109700,22.0,1537858800,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (19,1539109713,15.0,1538118000,'Uber',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (20,1539109732,12.0,1538982000,'International call',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (21,1539109742,25.23,1538984000,'Commute',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (22,1539109752,50.0,1538922000,'Book',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (23,1539109753,2.45,1533987000,'Ice cream',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (24,1539109755,75.0,1538286000,'Lunch with clients',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (25,1539109800,250.99,1538982000,'New TV',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (26,1539109720,10.0,1534982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (27,1539109722,12.0,1532985000,'Taxi',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (28,1539109732,120.0,1538982000,'Grocery shopping',1);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (29,1539109721,80.0,1538234000,'New PC fan',1);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (30,1539109732,23.0,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (31,1539109730,10.0,1532365000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (32,1539101021,5.0,1538982000,'Parking fee',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (33,1539101050,20.0,1538982000,'Taxi',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (34,1539109000,15.0,1538265000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (35,1539101133,5.0,1538982000,'Drink',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (36,1539101106,25.0,1538982000,'Cinemea ticket',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (37,1539102645,22.0,1538982000,'Drinks',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (38,1539109345,5.0,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (39,1539102403,120.0,1538982000,'SSD drive purchase',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (40,1539189732,480.0,1538982000,'Clothes',1);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (41,1539209724,1.0,1538982000,'Misc',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (42,1539139732,20.0,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (43,1539109772,5.0,1538982000,'Train ticket',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (44,1533439531,20.0,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (45,1539109705,3.0,1538931000,'Drink',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (46,1532359732,8.0,1538945000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (47,1539109704,10.0,1538932000,'Uber',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (48,1539109732,12.0,1538967000,'Taxi',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (49,1539459732,50.0,1538958000,'Video game',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (50,1539109767,6.0,1538985000,'Magazine',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (51,1539109252,5.5,1538966000,'Snack',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (52,1539109732,10.25,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (53,1539123543,99.99,1538911000,'External HDD purchase',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (54,1539104733,7.0,1538982000,'Flash drive purchase',1);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (55,1539100235,10.0,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (56,1539109736,12.0,1538982000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (57,1539104792,7.0,1538148000,'',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (58,1539107702,20.0,1538985000,'T-Shirt purchase',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (59,1539108772,2.0,1538424000,'Misc',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (60,1539109752,25.0,1538763000,'Raspberry Pi purchase',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (61,1539109752,30.0,1538981000,'Birthday present',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (62,1539109784,5.0,1538984000,'Snack',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (63,1539109724,12.0,1532373000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (64,1539109781,11.0,1536321000,'Taxi',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (65,1539106332,34.0,1536552000,'T-Shirt purchase',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (66,1539106322,12.0,1536552000,'Breakfast',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (67,1539153452,15.0,1536552000,'Lunch',0);
INSERT INTO `accounting_entry` (uid,crdate,amount,date,desc,deleted) VALUES (68,1539153222,8.9,1536552000,'Lunch',0);


CREATE TABLE tag (
    uid INTEGER PRIMARY KEY,
    value TEXT UNIQUE NOT NULL,
    deleted INTEGER DEFAULT 0);
INSERT INTO `tag` (uid,value,deleted) VALUES (1,'Meals',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (2,'Taxi/Uber',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (4,'Auto rental',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (5,'Baggage Fees',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (6,'Airfare',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (7,'Bank Fees',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (8,'Cell Phone',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (9,'Client Gifts',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (10,'Conference Fees',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (11,'Events',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (12,'Hotel',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (13,'Mileage/Personal Auto',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (14,'Office Supplies',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (15,'Parking Fees',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (16,'Postage, FedEx',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (17,'Software Licenses',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (18,'Visa Application',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (19,'Visa Applicatiin',1);
INSERT INTO `tag` (uid,value,deleted) VALUES (20,'Computer Hardware',0);
INSERT INTO `tag` (uid,value,deleted) VALUES (21,'Video Games',0);

CREATE TABLE tag_mm(
    uid_local INTEGER NOT NULL,
    uid_foreign INTEGER NOT NULL,
    FOREIGN KEY (uid_local) REFERENCES tags(uid));
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (9,11);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,12);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (10,13);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,14);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,15);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (13,16);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (15,16);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (14,17);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,18);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,19);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (8,20);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,26);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,30);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,31);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,62);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,55);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,56);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,42);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,44);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,46);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (20,39);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (20,54);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (20,29);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (20,60);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (21,49);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,27);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,33);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,47);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,48);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (2,64);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,66);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,67);
INSERT INTO `tag_mm` (uid_local,uid_foreign) VALUES (1,68);

COMMIT;
