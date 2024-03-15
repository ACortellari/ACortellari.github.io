BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "publications" (
	"publication_id"	INTEGER,
	"publication_title"	TEXT NOT NULL,
	"publication_start_year"	INTEGER,
	"publication_end_year"	INTEGER,
	"publication_preservation_entity"	TEXT,
	PRIMARY KEY("publication_id"),
	UNIQUE("publication_title")
);
CREATE TABLE IF NOT EXISTS "authors" (
	"author_id"	INTEGER,
	"author_first_name"	TEXT,
	"author_last_name"	TEXT,
	"author_type"	TEXT,
	PRIMARY KEY("author_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "issues" (
	"issue_id"	NUMERIC NOT NULL UNIQUE,
	"publication_id"	INTEGER,
	"publication_title"	TEXT,
	"issue_number"	TEXT,
	"issue_year"	INTEGER,
	"issue_month"	INTEGER,
	PRIMARY KEY("issue_id")
);
CREATE TABLE IF NOT EXISTS "articles" (
	"article_id"	INTEGER,
	"article_title"	TEXT,
	"author_id"	INTEGER,
	"article_author"	TEXT,
	"author_type"	TEXT,
	"publication_id"	INTEGER,
	"publication_title"	TEXT,
	"issue_number"	INTEGER,
	"issue_year"	INTEGER,
	"issue_month"	INTEGER,
	"article_text"	TEXT,
	PRIMARY KEY("article_id" AUTOINCREMENT)
);
INSERT INTO "publications" VALUES (1,'Aylık Ant Dergisi',1970,1971,'Türkiye Sosyal Tarih Araştırma Vakfı');
INSERT INTO "publications" VALUES (2,'Aydınlık Sosyalist Dergi',1968,1971,'Türkiye Sosyal Tarih Araştırma Vakfı');
INSERT INTO "publications" VALUES (3,'Proleter Devrimci Aydınlık',1970,1971,'Türkiye Sosyal Tarih Araştırma Vakfı');
INSERT INTO "publications" VALUES (4,'Haftalık Ant Dergisi',1967,1970,'Türkiye Sosyal Tarih Araştırma Vakfı');
INSERT INTO "publications" VALUES (5,'Türk Solu',1967,1970,'Türkiye Sosyal Tarih Araştırma Vakfı');
INSERT INTO "authors" VALUES (1,'Havatme','Nayif','Author');
INSERT INTO "authors" VALUES (2,'Güçbilmez','Erdoğan','Author');
INSERT INTO "authors" VALUES (3,'Bozarslan','Mehmet Emin','Translator');
INSERT INTO "authors" VALUES (4,'Aslan','Yusuf','Author');
INSERT INTO "authors" VALUES (5,'A. Kerim',NULL,'Author');
INSERT INTO "issues" VALUES (2,2,'Aydınlık Sosyalist Dergi','1',1968,NULL);
INSERT INTO "issues" VALUES (3,2,'Aydınlık Sosyalist Dergi','2',1968,12);
INSERT INTO "issues" VALUES (4,2,'Aydınlık Sosyalist Dergi','3',1969,1);
INSERT INTO "issues" VALUES (5,2,'Aydınlık Sosyalist Dergi','4',1969,2);
INSERT INTO "issues" VALUES (6,2,'Aydınlık Sosyalist Dergi','5',1969,3);
INSERT INTO "issues" VALUES (7,2,'Aydınlık Sosyalist Dergi','6',1969,4);
INSERT INTO "issues" VALUES (8,2,'Aydınlık Sosyalist Dergi','7',1969,5);
INSERT INTO "issues" VALUES (9,2,'Aydınlık Sosyalist Dergi','8',1969,6);
INSERT INTO "issues" VALUES (10,2,'Aydınlık Sosyalist Dergi','9',1969,7);
INSERT INTO "issues" VALUES (11,2,'Aydınlık Sosyalist Dergi','10',1969,8);
INSERT INTO "issues" VALUES (12,2,'Aydınlık Sosyalist Dergi','11',1969,9);
INSERT INTO "issues" VALUES (13,2,'Aydınlık Sosyalist Dergi','12',1969,10);
INSERT INTO "issues" VALUES (14,2,'Aydınlık Sosyalist Dergi','13',1969,11);
INSERT INTO "issues" VALUES (15,2,'Aydınlık Sosyalist Dergi','14',1969,12);
INSERT INTO "issues" VALUES (16,2,'Aydınlık Sosyalist Dergi','15',1970,1);
INSERT INTO "issues" VALUES (17,2,'Aydınlık Sosyalist Dergi','16',1970,2);
INSERT INTO "issues" VALUES (18,2,'Aydınlık Sosyalist Dergi','17',1970,3);
INSERT INTO "issues" VALUES (19,2,'Aydınlık Sosyalist Dergi','18',1970,4);
INSERT INTO "issues" VALUES (20,2,'Aydınlık Sosyalist Dergi','19',1970,5);
INSERT INTO "issues" VALUES (21,2,'Aydınlık Sosyalist Dergi','20',1970,6);
INSERT INTO "issues" VALUES (22,2,'Aydınlık Sosyalist Dergi','21',1970,7);
INSERT INTO "issues" VALUES (23,2,'Aydınlık Sosyalist Dergi','22',1970,8);
INSERT INTO "issues" VALUES (24,2,'Aydınlık Sosyalist Dergi','23',1970,9);
INSERT INTO "issues" VALUES (25,2,'Aydınlık Sosyalist Dergi','24',1970,10);
INSERT INTO "issues" VALUES (26,2,'Aydınlık Sosyalist Dergi','25',1970,11);
INSERT INTO "issues" VALUES (27,2,'Aydınlık Sosyalist Dergi','26',1970,2);
INSERT INTO "issues" VALUES (28,2,'Aydınlık Sosyalist Dergi','27',1971,NULL);
INSERT INTO "issues" VALUES (29,2,'Aydınlık Sosyalist Dergi','28',1971,NULL);
INSERT INTO "issues" VALUES (30,2,'Aydınlık Sosyalist Dergi','29, 30',1971,NULL);
INSERT INTO "issues" VALUES (31,3,'Proleter Devrimci Aydınlık','1-15',1970,NULL);
INSERT INTO "issues" VALUES (32,3,'Proleter Devrimci Aydınlık','2-16',1970,NULL);
INSERT INTO "issues" VALUES (33,3,'Proleter Devrimci Aydınlık','3-17',1970,NULL);
INSERT INTO "issues" VALUES (34,3,'Proleter Devrimci Aydınlık','4-18',1970,NULL);
INSERT INTO "issues" VALUES (35,3,'Proleter Devrimci Aydınlık','5-19',1970,NULL);
INSERT INTO "issues" VALUES (36,3,'Proleter Devrimci Aydınlık','6-20',1970,NULL);
INSERT INTO "issues" VALUES (37,3,'Proleter Devrimci Aydınlık','7-21',1970,NULL);
INSERT INTO "issues" VALUES (38,3,'Proleter Devrimci Aydınlık','8-22',1970,NULL);
INSERT INTO "issues" VALUES (39,3,'Proleter Devrimci Aydınlık','9-23',1970,NULL);
INSERT INTO "issues" VALUES (40,3,'Proleter Devrimci Aydınlık','10-24',1970,NULL);
INSERT INTO "issues" VALUES (41,3,'Proleter Devrimci Aydınlık','11-25',1970,NULL);
INSERT INTO "issues" VALUES (42,3,'Proleter Devrimci Aydınlık','12-26',1970,NULL);
INSERT INTO "issues" VALUES (43,3,'Proleter Devrimci Aydınlık','13-27',1971,NULL);
INSERT INTO "issues" VALUES (44,3,'Proleter Devrimci Aydınlık','14-28',1971,NULL);
INSERT INTO "issues" VALUES (45,3,'Proleter Devrimci Aydınlık','15-29',1971,NULL);
INSERT INTO "issues" VALUES (46,3,'Proleter Devrimci Aydınlık','16-30',1971,NULL);
INSERT INTO "issues" VALUES (47,3,'Proleter Devrimci Aydınlık','17-31',1971,NULL);
INSERT INTO "issues" VALUES (48,3,'Proleter Devrimci Aydınlık','18-32',1971,NULL);
INSERT INTO "issues" VALUES (49,3,'Proleter Devrimci Aydınlık','19-33',1971,NULL);
INSERT INTO "issues" VALUES (50,3,'Proleter Devrimci Aydınlık','20-34',1971,NULL);
INSERT INTO "issues" VALUES (51,3,'Proleter Devrimci Aydınlık','21-35',1971,NULL);
INSERT INTO "issues" VALUES (52,3,'Proleter Devrimci Aydınlık','22-36',1971,NULL);
INSERT INTO "issues" VALUES (53,3,'Proleter Devrimci Aydınlık','23-37',1971,NULL);
INSERT INTO "issues" VALUES (54,3,'Proleter Devrimci Aydınlık','24-38',1971,NULL);
INSERT INTO "issues" VALUES (55,3,'Proleter Devrimci Aydınlık','25-39',1971,NULL);
INSERT INTO "issues" VALUES (56,3,'Proleter Devrimci Aydınlık','26-40',1971,NULL);
INSERT INTO "issues" VALUES (57,1,'Aylık Ant Dergisi','1',1970,NULL);
INSERT INTO "issues" VALUES (58,1,'Aylık Ant Dergisi','2',1970,NULL);
INSERT INTO "issues" VALUES (59,1,'Aylık Ant Dergisi','3',1970,NULL);
INSERT INTO "issues" VALUES (60,1,'Aylık Ant Dergisi','4',1970,NULL);
INSERT INTO "issues" VALUES (61,1,'Aylık Ant Dergisi','5',1970,NULL);
INSERT INTO "issues" VALUES (62,1,'Aylık Ant Dergisi','6',1970,NULL);
INSERT INTO "issues" VALUES (63,1,'Aylık Ant Dergisi','7',1970,NULL);
INSERT INTO "issues" VALUES (64,1,'Aylık Ant Dergisi','8',1970,NULL);
INSERT INTO "issues" VALUES (65,1,'Aylık Ant Dergisi','9',1971,NULL);
INSERT INTO "issues" VALUES (66,1,'Aylık Ant Dergisi','10',1971,NULL);
INSERT INTO "issues" VALUES (67,1,'Aylık Ant Dergisi','11',1971,NULL);
INSERT INTO "issues" VALUES (68,1,'Aylık Ant Dergisi','12',1971,NULL);
INSERT INTO "issues" VALUES (69,1,'Aylık Ant Dergisi','13',1971,NULL);
INSERT INTO "issues" VALUES (70,4,'Haftalık Ant Dergisi','1',1967,NULL);
INSERT INTO "issues" VALUES (71,4,'Haftalık Ant Dergisi','2',1967,NULL);
INSERT INTO "issues" VALUES (72,4,'Haftalık Ant Dergisi','3',1967,NULL);
INSERT INTO "issues" VALUES (73,4,'Haftalık Ant Dergisi','4',1967,NULL);
INSERT INTO "issues" VALUES (74,4,'Haftalık Ant Dergisi','5',1967,NULL);
INSERT INTO "issues" VALUES (75,4,'Haftalık Ant Dergisi','6',1967,NULL);
INSERT INTO "issues" VALUES (76,4,'Haftalık Ant Dergisi','7',1967,NULL);
INSERT INTO "issues" VALUES (77,4,'Haftalık Ant Dergisi','8',1967,NULL);
INSERT INTO "issues" VALUES (78,4,'Haftalık Ant Dergisi','9',1967,NULL);
INSERT INTO "issues" VALUES (79,4,'Haftalık Ant Dergisi','10',1967,NULL);
INSERT INTO "issues" VALUES (80,4,'Haftalık Ant Dergisi','11',1967,NULL);
INSERT INTO "issues" VALUES (81,4,'Haftalık Ant Dergisi','12',1967,NULL);
INSERT INTO "issues" VALUES (82,4,'Haftalık Ant Dergisi','13',1967,NULL);
INSERT INTO "issues" VALUES (83,4,'Haftalık Ant Dergisi','14',1967,NULL);
INSERT INTO "issues" VALUES (84,4,'Haftalık Ant Dergisi','15',1967,NULL);
INSERT INTO "issues" VALUES (85,4,'Haftalık Ant Dergisi','16',1967,NULL);
INSERT INTO "issues" VALUES (86,4,'Haftalık Ant Dergisi','17',1967,NULL);
INSERT INTO "issues" VALUES (87,4,'Haftalık Ant Dergisi','18',1967,NULL);
INSERT INTO "issues" VALUES (88,4,'Haftalık Ant Dergisi','19',1967,NULL);
INSERT INTO "issues" VALUES (89,4,'Haftalık Ant Dergisi','20',1967,NULL);
INSERT INTO "issues" VALUES (90,4,'Haftalık Ant Dergisi','21',1967,NULL);
INSERT INTO "issues" VALUES (91,4,'Haftalık Ant Dergisi','22',1967,NULL);
INSERT INTO "issues" VALUES (92,4,'Haftalık Ant Dergisi','23',1967,NULL);
INSERT INTO "issues" VALUES (93,4,'Haftalık Ant Dergisi','24',1967,NULL);
INSERT INTO "issues" VALUES (94,4,'Haftalık Ant Dergisi','25',1967,NULL);
INSERT INTO "issues" VALUES (95,4,'Haftalık Ant Dergisi','26',1967,NULL);
INSERT INTO "issues" VALUES (96,4,'Haftalık Ant Dergisi','27',1967,NULL);
INSERT INTO "issues" VALUES (97,4,'Haftalık Ant Dergisi','28',1967,NULL);
INSERT INTO "issues" VALUES (98,4,'Haftalık Ant Dergisi','29',1967,NULL);
INSERT INTO "issues" VALUES (99,4,'Haftalık Ant Dergisi','30',1967,NULL);
INSERT INTO "issues" VALUES (100,4,'Haftalık Ant Dergisi','31',1967,NULL);
INSERT INTO "issues" VALUES (101,4,'Haftalık Ant Dergisi','32',1967,NULL);
INSERT INTO "issues" VALUES (102,4,'Haftalık Ant Dergisi','33',1967,NULL);
INSERT INTO "issues" VALUES (103,4,'Haftalık Ant Dergisi','34',1967,NULL);
INSERT INTO "issues" VALUES (104,4,'Haftalık Ant Dergisi','35',1967,NULL);
INSERT INTO "issues" VALUES (105,4,'Haftalık Ant Dergisi','36',1967,NULL);
INSERT INTO "issues" VALUES (106,4,'Haftalık Ant Dergisi','37',1967,NULL);
INSERT INTO "issues" VALUES (107,4,'Haftalık Ant Dergisi','38',1967,NULL);
INSERT INTO "issues" VALUES (108,4,'Haftalık Ant Dergisi','39',1967,NULL);
INSERT INTO "issues" VALUES (109,4,'Haftalık Ant Dergisi','40',1967,NULL);
INSERT INTO "issues" VALUES (110,4,'Haftalık Ant Dergisi','41',1967,NULL);
INSERT INTO "issues" VALUES (111,4,'Haftalık Ant Dergisi','42',1967,NULL);
INSERT INTO "issues" VALUES (112,4,'Haftalık Ant Dergisi','43',1967,NULL);
INSERT INTO "issues" VALUES (113,4,'Haftalık Ant Dergisi','44',1967,NULL);
INSERT INTO "issues" VALUES (114,4,'Haftalık Ant Dergisi','45',1967,NULL);
INSERT INTO "issues" VALUES (115,4,'Haftalık Ant Dergisi','46',1967,NULL);
INSERT INTO "issues" VALUES (116,4,'Haftalık Ant Dergisi','47',1967,NULL);
INSERT INTO "issues" VALUES (117,4,'Haftalık Ant Dergisi','48',1967,NULL);
INSERT INTO "issues" VALUES (118,4,'Haftalık Ant Dergisi','49',1967,NULL);
INSERT INTO "issues" VALUES (119,4,'Haftalık Ant Dergisi','50',1967,NULL);
INSERT INTO "issues" VALUES (120,4,'Haftalık Ant Dergisi','51',1967,NULL);
INSERT INTO "issues" VALUES (121,4,'Haftalık Ant Dergisi','52',1967,NULL);
INSERT INTO "issues" VALUES (122,4,'Haftalık Ant Dergisi','53',1968,NULL);
INSERT INTO "issues" VALUES (123,4,'Haftalık Ant Dergisi','54',1968,NULL);
INSERT INTO "issues" VALUES (124,4,'Haftalık Ant Dergisi','55',1968,NULL);
INSERT INTO "issues" VALUES (125,4,'Haftalık Ant Dergisi','56',1968,NULL);
INSERT INTO "issues" VALUES (126,4,'Haftalık Ant Dergisi','57',1968,NULL);
INSERT INTO "issues" VALUES (127,4,'Haftalık Ant Dergisi','58',1968,NULL);
INSERT INTO "issues" VALUES (128,4,'Haftalık Ant Dergisi','59',1968,NULL);
INSERT INTO "issues" VALUES (129,4,'Haftalık Ant Dergisi','60',1968,NULL);
INSERT INTO "issues" VALUES (130,4,'Haftalık Ant Dergisi','61',1968,NULL);
INSERT INTO "issues" VALUES (131,4,'Haftalık Ant Dergisi','62',1968,NULL);
INSERT INTO "issues" VALUES (132,4,'Haftalık Ant Dergisi','63',1968,NULL);
INSERT INTO "issues" VALUES (133,4,'Haftalık Ant Dergisi','64',1968,NULL);
INSERT INTO "issues" VALUES (134,4,'Haftalık Ant Dergisi','65',1968,NULL);
INSERT INTO "issues" VALUES (135,4,'Haftalık Ant Dergisi','66',1968,NULL);
INSERT INTO "issues" VALUES (136,4,'Haftalık Ant Dergisi','67',1968,NULL);
INSERT INTO "issues" VALUES (137,4,'Haftalık Ant Dergisi','68',1968,NULL);
INSERT INTO "issues" VALUES (138,4,'Haftalık Ant Dergisi','69',1968,NULL);
INSERT INTO "issues" VALUES (139,4,'Haftalık Ant Dergisi','70',1968,NULL);
INSERT INTO "issues" VALUES (140,4,'Haftalık Ant Dergisi','71',1968,NULL);
INSERT INTO "issues" VALUES (141,4,'Haftalık Ant Dergisi','72',1968,NULL);
INSERT INTO "issues" VALUES (142,4,'Haftalık Ant Dergisi','73',1968,NULL);
INSERT INTO "issues" VALUES (143,4,'Haftalık Ant Dergisi','74',1968,NULL);
INSERT INTO "issues" VALUES (144,4,'Haftalık Ant Dergisi','75',1968,NULL);
INSERT INTO "issues" VALUES (145,4,'Haftalık Ant Dergisi','76',1968,NULL);
INSERT INTO "issues" VALUES (146,4,'Haftalık Ant Dergisi','77',1968,NULL);
INSERT INTO "issues" VALUES (147,4,'Haftalık Ant Dergisi','78',1968,NULL);
INSERT INTO "issues" VALUES (148,4,'Haftalık Ant Dergisi','79',1968,NULL);
INSERT INTO "issues" VALUES (149,4,'Haftalık Ant Dergisi','80',1968,NULL);
INSERT INTO "issues" VALUES (150,4,'Haftalık Ant Dergisi','81',1968,NULL);
INSERT INTO "issues" VALUES (151,4,'Haftalık Ant Dergisi','82',1968,NULL);
INSERT INTO "issues" VALUES (152,4,'Haftalık Ant Dergisi','83',1968,NULL);
INSERT INTO "issues" VALUES (153,4,'Haftalık Ant Dergisi','84',1968,NULL);
INSERT INTO "issues" VALUES (154,4,'Haftalık Ant Dergisi','85',1968,NULL);
INSERT INTO "issues" VALUES (155,4,'Haftalık Ant Dergisi','86',1968,NULL);
INSERT INTO "issues" VALUES (156,4,'Haftalık Ant Dergisi','87',1968,NULL);
INSERT INTO "issues" VALUES (157,4,'Haftalık Ant Dergisi','88',1968,NULL);
INSERT INTO "issues" VALUES (158,4,'Haftalık Ant Dergisi','89',1968,NULL);
INSERT INTO "issues" VALUES (159,4,'Haftalık Ant Dergisi','90',1968,NULL);
INSERT INTO "issues" VALUES (160,4,'Haftalık Ant Dergisi','91',1968,NULL);
INSERT INTO "issues" VALUES (161,4,'Haftalık Ant Dergisi','92',1968,NULL);
INSERT INTO "issues" VALUES (162,4,'Haftalık Ant Dergisi','93',1968,NULL);
INSERT INTO "issues" VALUES (163,4,'Haftalık Ant Dergisi','94',1968,NULL);
INSERT INTO "issues" VALUES (164,4,'Haftalık Ant Dergisi','95',1968,NULL);
INSERT INTO "issues" VALUES (165,4,'Haftalık Ant Dergisi','96',1968,NULL);
INSERT INTO "issues" VALUES (166,4,'Haftalık Ant Dergisi','97',1968,NULL);
INSERT INTO "issues" VALUES (167,4,'Haftalık Ant Dergisi','98',1968,NULL);
INSERT INTO "issues" VALUES (168,4,'Haftalık Ant Dergisi','99',1968,NULL);
INSERT INTO "issues" VALUES (169,4,'Haftalık Ant Dergisi','100',1968,NULL);
INSERT INTO "issues" VALUES (170,4,'Haftalık Ant Dergisi','101',1968,NULL);
INSERT INTO "issues" VALUES (171,4,'Haftalık Ant Dergisi','102',1968,NULL);
INSERT INTO "issues" VALUES (172,4,'Haftalık Ant Dergisi','103',1968,NULL);
INSERT INTO "issues" VALUES (173,4,'Haftalık Ant Dergisi','104',1968,NULL);
INSERT INTO "issues" VALUES (174,4,'Haftalık Ant Dergisi','105',1968,NULL);
INSERT INTO "issues" VALUES (175,4,'Haftalık Ant Dergisi','106',1969,NULL);
INSERT INTO "issues" VALUES (176,4,'Haftalık Ant Dergisi','107',1969,NULL);
INSERT INTO "issues" VALUES (177,4,'Haftalık Ant Dergisi','108',1969,NULL);
INSERT INTO "issues" VALUES (178,4,'Haftalık Ant Dergisi','109',1969,NULL);
INSERT INTO "issues" VALUES (179,4,'Haftalık Ant Dergisi','110',1969,NULL);
INSERT INTO "issues" VALUES (180,4,'Haftalık Ant Dergisi','111',1969,NULL);
INSERT INTO "issues" VALUES (181,4,'Haftalık Ant Dergisi','112',1969,NULL);
INSERT INTO "issues" VALUES (182,4,'Haftalık Ant Dergisi','113',1969,NULL);
INSERT INTO "issues" VALUES (183,4,'Haftalık Ant Dergisi','114',1969,NULL);
INSERT INTO "issues" VALUES (184,4,'Haftalık Ant Dergisi','115',1969,NULL);
INSERT INTO "issues" VALUES (185,4,'Haftalık Ant Dergisi','116',1969,NULL);
INSERT INTO "issues" VALUES (186,4,'Haftalık Ant Dergisi','117',1969,NULL);
INSERT INTO "issues" VALUES (187,4,'Haftalık Ant Dergisi','118',1969,NULL);
INSERT INTO "issues" VALUES (188,4,'Haftalık Ant Dergisi','119',1969,NULL);
INSERT INTO "issues" VALUES (189,4,'Haftalık Ant Dergisi','120',1969,NULL);
INSERT INTO "issues" VALUES (190,4,'Haftalık Ant Dergisi','121',1969,NULL);
INSERT INTO "issues" VALUES (191,4,'Haftalık Ant Dergisi','122',1969,NULL);
INSERT INTO "issues" VALUES (192,4,'Haftalık Ant Dergisi','123',1969,NULL);
INSERT INTO "issues" VALUES (193,4,'Haftalık Ant Dergisi','124',1969,NULL);
INSERT INTO "issues" VALUES (194,4,'Haftalık Ant Dergisi','125',1969,NULL);
INSERT INTO "issues" VALUES (195,4,'Haftalık Ant Dergisi','126',1969,NULL);
INSERT INTO "issues" VALUES (196,4,'Haftalık Ant Dergisi','127',1969,NULL);
INSERT INTO "issues" VALUES (197,4,'Haftalık Ant Dergisi','128',1969,NULL);
INSERT INTO "issues" VALUES (198,4,'Haftalık Ant Dergisi','129',1969,NULL);
INSERT INTO "issues" VALUES (199,4,'Haftalık Ant Dergisi','130',1969,NULL);
INSERT INTO "issues" VALUES (200,4,'Haftalık Ant Dergisi','131',1969,NULL);
INSERT INTO "issues" VALUES (201,4,'Haftalık Ant Dergisi','132',1969,NULL);
INSERT INTO "issues" VALUES (202,4,'Haftalık Ant Dergisi','133',1969,NULL);
INSERT INTO "issues" VALUES (203,4,'Haftalık Ant Dergisi','134',1969,NULL);
INSERT INTO "issues" VALUES (204,4,'Haftalık Ant Dergisi','135',1969,NULL);
INSERT INTO "issues" VALUES (205,4,'Haftalık Ant Dergisi','136',1969,NULL);
INSERT INTO "issues" VALUES (206,4,'Haftalık Ant Dergisi','137',1969,NULL);
INSERT INTO "issues" VALUES (207,4,'Haftalık Ant Dergisi','138',1969,NULL);
INSERT INTO "issues" VALUES (208,4,'Haftalık Ant Dergisi','139',1969,NULL);
INSERT INTO "issues" VALUES (209,4,'Haftalık Ant Dergisi','140',1969,NULL);
INSERT INTO "issues" VALUES (210,4,'Haftalık Ant Dergisi','141',1969,NULL);
INSERT INTO "issues" VALUES (211,4,'Haftalık Ant Dergisi','142',1969,NULL);
INSERT INTO "issues" VALUES (212,4,'Haftalık Ant Dergisi','143',1969,NULL);
INSERT INTO "issues" VALUES (213,4,'Haftalık Ant Dergisi','144',1969,NULL);
INSERT INTO "issues" VALUES (214,4,'Haftalık Ant Dergisi','145',1969,NULL);
INSERT INTO "issues" VALUES (215,4,'Haftalık Ant Dergisi','146',1969,NULL);
INSERT INTO "issues" VALUES (216,4,'Haftalık Ant Dergisi','147',1969,NULL);
INSERT INTO "issues" VALUES (217,4,'Haftalık Ant Dergisi','148',1969,NULL);
INSERT INTO "issues" VALUES (218,4,'Haftalık Ant Dergisi','149',1969,NULL);
INSERT INTO "issues" VALUES (219,4,'Haftalık Ant Dergisi','150',1969,NULL);
INSERT INTO "issues" VALUES (220,4,'Haftalık Ant Dergisi','151',1969,NULL);
INSERT INTO "issues" VALUES (221,4,'Haftalık Ant Dergisi','152',1969,NULL);
INSERT INTO "issues" VALUES (222,4,'Haftalık Ant Dergisi','153',1969,NULL);
INSERT INTO "issues" VALUES (223,4,'Haftalık Ant Dergisi','154',1969,NULL);
INSERT INTO "issues" VALUES (224,4,'Haftalık Ant Dergisi','155',1969,NULL);
INSERT INTO "issues" VALUES (225,4,'Haftalık Ant Dergisi','156',1969,NULL);
INSERT INTO "issues" VALUES (226,4,'Haftalık Ant Dergisi','157',1969,NULL);
INSERT INTO "issues" VALUES (227,4,'Haftalık Ant Dergisi','158',1970,NULL);
INSERT INTO "issues" VALUES (228,4,'Haftalık Ant Dergisi','159',1970,NULL);
INSERT INTO "issues" VALUES (229,4,'Haftalık Ant Dergisi','160',1970,NULL);
INSERT INTO "issues" VALUES (230,4,'Haftalık Ant Dergisi','161',1970,NULL);
INSERT INTO "issues" VALUES (231,4,'Haftalık Ant Dergisi','162',1970,NULL);
INSERT INTO "issues" VALUES (232,4,'Haftalık Ant Dergisi','163',1970,NULL);
INSERT INTO "issues" VALUES (233,4,'Haftalık Ant Dergisi','164',1970,NULL);
INSERT INTO "issues" VALUES (234,4,'Haftalık Ant Dergisi','165',1970,NULL);
INSERT INTO "issues" VALUES (235,4,'Haftalık Ant Dergisi','166',1970,NULL);
INSERT INTO "issues" VALUES (236,4,'Haftalık Ant Dergisi','167',1970,NULL);
INSERT INTO "issues" VALUES (237,4,'Haftalık Ant Dergisi','168',1970,NULL);
INSERT INTO "issues" VALUES (238,4,'Haftalık Ant Dergisi','169',1970,NULL);
INSERT INTO "issues" VALUES (239,4,'Haftalık Ant Dergisi','170',1970,NULL);
INSERT INTO "issues" VALUES (240,4,'Haftalık Ant Dergisi','171',1970,NULL);
INSERT INTO "issues" VALUES (241,4,'Haftalık Ant Dergisi','172',1970,NULL);
INSERT INTO "issues" VALUES (242,4,'Haftalık Ant Dergisi','173',1970,NULL);
INSERT INTO "issues" VALUES (243,5,'Türk Solu','1',1967,NULL);
INSERT INTO "issues" VALUES (244,5,'Türk Solu','2',1967,NULL);
INSERT INTO "issues" VALUES (245,5,'Türk Solu','3',1967,NULL);
INSERT INTO "issues" VALUES (246,5,'Türk Solu','4',1967,NULL);
INSERT INTO "issues" VALUES (247,5,'Türk Solu','5',1967,NULL);
INSERT INTO "issues" VALUES (248,5,'Türk Solu','6',1967,NULL);
INSERT INTO "issues" VALUES (249,5,'Türk Solu','7',1967,NULL);
INSERT INTO "issues" VALUES (250,5,'Türk Solu','8',1968,NULL);
INSERT INTO "issues" VALUES (251,5,'Türk Solu','9',1968,NULL);
INSERT INTO "issues" VALUES (252,5,'Türk Solu','10',1968,NULL);
INSERT INTO "issues" VALUES (253,5,'Türk Solu','11',1968,NULL);
INSERT INTO "issues" VALUES (254,5,'Türk Solu','12',1968,NULL);
INSERT INTO "issues" VALUES (255,5,'Türk Solu','13',1968,NULL);
INSERT INTO "issues" VALUES (256,5,'Türk Solu','14',1968,NULL);
INSERT INTO "issues" VALUES (257,5,'Türk Solu','15',1968,NULL);
INSERT INTO "issues" VALUES (258,5,'Türk Solu','16',1968,NULL);
INSERT INTO "issues" VALUES (259,5,'Türk Solu','17',1968,NULL);
INSERT INTO "issues" VALUES (260,5,'Türk Solu','18',1968,NULL);
INSERT INTO "issues" VALUES (261,5,'Türk Solu','19',1968,NULL);
INSERT INTO "issues" VALUES (262,5,'Türk Solu','20',1968,NULL);
INSERT INTO "issues" VALUES (263,5,'Türk Solu','21',1968,NULL);
INSERT INTO "issues" VALUES (264,5,'Türk Solu','22',1968,NULL);
INSERT INTO "issues" VALUES (265,5,'Türk Solu','23',1968,NULL);
INSERT INTO "issues" VALUES (266,5,'Türk Solu','24',1968,NULL);
INSERT INTO "issues" VALUES (267,5,'Türk Solu','25',1968,NULL);
INSERT INTO "issues" VALUES (268,5,'Türk Solu','26',1968,NULL);
INSERT INTO "issues" VALUES (269,5,'Türk Solu','27',1968,NULL);
INSERT INTO "issues" VALUES (270,5,'Türk Solu','28',1968,NULL);
INSERT INTO "issues" VALUES (271,5,'Türk Solu','29',1968,NULL);
INSERT INTO "issues" VALUES (272,5,'Türk Solu','30',1968,NULL);
INSERT INTO "issues" VALUES (273,5,'Türk Solu','31',1968,NULL);
INSERT INTO "issues" VALUES (274,5,'Türk Solu','32',1968,NULL);
INSERT INTO "issues" VALUES (275,5,'Türk Solu','33',1968,NULL);
INSERT INTO "issues" VALUES (276,5,'Türk Solu','34',1968,NULL);
INSERT INTO "issues" VALUES (277,5,'Türk Solu','35',1968,NULL);
INSERT INTO "issues" VALUES (278,5,'Türk Solu','36',1968,NULL);
INSERT INTO "issues" VALUES (279,5,'Türk Solu','37',1968,NULL);
INSERT INTO "issues" VALUES (280,5,'Türk Solu','38',1968,NULL);
INSERT INTO "issues" VALUES (281,5,'Türk Solu','39',1968,NULL);
INSERT INTO "issues" VALUES (282,5,'Türk Solu','40',1968,NULL);
INSERT INTO "issues" VALUES (283,5,'Türk Solu','41',1968,NULL);
INSERT INTO "issues" VALUES (284,5,'Türk Solu','42',1968,NULL);
INSERT INTO "issues" VALUES (285,5,'Türk Solu','43',1968,NULL);
INSERT INTO "issues" VALUES (286,5,'Türk Solu','44',1968,NULL);
INSERT INTO "issues" VALUES (287,5,'Türk Solu','45',1968,NULL);
INSERT INTO "issues" VALUES (288,5,'Türk Solu','46',1968,NULL);
INSERT INTO "issues" VALUES (289,5,'Türk Solu','47',1968,NULL);
INSERT INTO "issues" VALUES (290,5,'Türk Solu','48',1968,NULL);
INSERT INTO "issues" VALUES (291,5,'Türk Solu','49',1968,NULL);
INSERT INTO "issues" VALUES (292,5,'Türk Solu','50',1968,NULL);
INSERT INTO "issues" VALUES (293,5,'Türk Solu','51',1968,NULL);
INSERT INTO "issues" VALUES (294,5,'Türk Solu','52',1968,NULL);
INSERT INTO "issues" VALUES (295,5,'Türk Solu','53',1968,NULL);
INSERT INTO "issues" VALUES (296,5,'Türk Solu','54',1968,NULL);
INSERT INTO "issues" VALUES (297,5,'Türk Solu','55',1968,NULL);
INSERT INTO "issues" VALUES (298,5,'Türk Solu','56',1968,NULL);
INSERT INTO "issues" VALUES (299,5,'Türk Solu','57',1968,NULL);
INSERT INTO "issues" VALUES (300,5,'Türk Solu','58',1968,NULL);
INSERT INTO "issues" VALUES (301,5,'Türk Solu','59',1968,NULL);
INSERT INTO "issues" VALUES (302,5,'Türk Solu','60',1969,NULL);
INSERT INTO "issues" VALUES (303,5,'Türk Solu','61',1969,NULL);
INSERT INTO "issues" VALUES (304,5,'Türk Solu','62',1969,NULL);
INSERT INTO "issues" VALUES (305,5,'Türk Solu','63',1969,NULL);
INSERT INTO "issues" VALUES (306,5,'Türk Solu','64',1969,NULL);
INSERT INTO "issues" VALUES (307,5,'Türk Solu','65',1969,NULL);
INSERT INTO "issues" VALUES (308,5,'Türk Solu','66',1969,NULL);
INSERT INTO "issues" VALUES (309,5,'Türk Solu','67',1969,NULL);
INSERT INTO "issues" VALUES (310,5,'Türk Solu','68',1969,NULL);
INSERT INTO "issues" VALUES (311,5,'Türk Solu','69',1969,NULL);
INSERT INTO "issues" VALUES (312,5,'Türk Solu','70',1969,NULL);
INSERT INTO "issues" VALUES (313,5,'Türk Solu','71',1969,NULL);
INSERT INTO "issues" VALUES (314,5,'Türk Solu','72',1969,NULL);
INSERT INTO "issues" VALUES (315,5,'Türk Solu','73',1969,NULL);
INSERT INTO "issues" VALUES (316,5,'Türk Solu','74',1969,NULL);
INSERT INTO "issues" VALUES (317,5,'Türk Solu','75',1969,NULL);
INSERT INTO "issues" VALUES (318,5,'Türk Solu','76',1969,NULL);
INSERT INTO "issues" VALUES (319,5,'Türk Solu','77',1969,NULL);
INSERT INTO "issues" VALUES (320,5,'Türk Solu','78',1969,NULL);
INSERT INTO "issues" VALUES (321,5,'Türk Solu','79',1969,NULL);
INSERT INTO "issues" VALUES (322,5,'Türk Solu','80',1969,NULL);
INSERT INTO "issues" VALUES (323,5,'Türk Solu','81',1969,NULL);
INSERT INTO "issues" VALUES (324,5,'Türk Solu','82',1969,NULL);
INSERT INTO "issues" VALUES (325,5,'Türk Solu','83',1969,NULL);
INSERT INTO "issues" VALUES (326,5,'Türk Solu','84',1969,NULL);
INSERT INTO "issues" VALUES (327,5,'Türk Solu','85',1969,NULL);
INSERT INTO "issues" VALUES (328,5,'Türk Solu','86',1969,NULL);
INSERT INTO "issues" VALUES (329,5,'Türk Solu','87',1969,NULL);
INSERT INTO "issues" VALUES (330,5,'Türk Solu','88',1969,NULL);
INSERT INTO "issues" VALUES (331,5,'Türk Solu','89',1969,NULL);
INSERT INTO "issues" VALUES (332,5,'Türk Solu','90',1969,NULL);
INSERT INTO "issues" VALUES (333,5,'Türk Solu','91',1969,NULL);
INSERT INTO "issues" VALUES (334,5,'Türk Solu','92',1969,NULL);
INSERT INTO "issues" VALUES (335,5,'Türk Solu','93',1969,NULL);
INSERT INTO "issues" VALUES (336,5,'Türk Solu','94',1969,NULL);
INSERT INTO "issues" VALUES (337,5,'Türk Solu','95',1969,NULL);
INSERT INTO "issues" VALUES (338,5,'Türk Solu','96',1969,NULL);
INSERT INTO "issues" VALUES (339,5,'Türk Solu','97',1969,NULL);
INSERT INTO "issues" VALUES (340,5,'Türk Solu','98',1969,NULL);
INSERT INTO "issues" VALUES (341,5,'Türk Solu','99',1969,NULL);
INSERT INTO "issues" VALUES (342,5,'Türk Solu','100',1969,NULL);
INSERT INTO "issues" VALUES (343,5,'Türk Solu','101',1969,NULL);
INSERT INTO "issues" VALUES (344,5,'Türk Solu','102',1969,NULL);
INSERT INTO "issues" VALUES (345,5,'Türk Solu','103',1969,NULL);
INSERT INTO "issues" VALUES (346,5,'Türk Solu','104',1969,NULL);
INSERT INTO "issues" VALUES (347,5,'Türk Solu','105',1969,NULL);
INSERT INTO "issues" VALUES (348,5,'Türk Solu','106',1969,NULL);
INSERT INTO "issues" VALUES (349,5,'Türk Solu','107',1969,NULL);
INSERT INTO "issues" VALUES (350,5,'Türk Solu','108',1969,NULL);
INSERT INTO "issues" VALUES (351,5,'Türk Solu','109',1969,NULL);
INSERT INTO "issues" VALUES (352,5,'Türk Solu','110',1969,NULL);
INSERT INTO "issues" VALUES (353,5,'Türk Solu','111',1969,NULL);
INSERT INTO "issues" VALUES (354,5,'Türk Solu','112',1970,NULL);
INSERT INTO "issues" VALUES (355,5,'Türk Solu','113',1970,NULL);
INSERT INTO "issues" VALUES (356,5,'Türk Solu','114',1970,NULL);
INSERT INTO "issues" VALUES (357,5,'Türk Solu','115',1970,NULL);
INSERT INTO "issues" VALUES (358,5,'Türk Solu','116',1970,NULL);
INSERT INTO "issues" VALUES (359,5,'Türk Solu','117',1970,NULL);
INSERT INTO "issues" VALUES (360,5,'Türk Solu','118',1970,NULL);
INSERT INTO "issues" VALUES (361,5,'Türk Solu','119',1970,NULL);
INSERT INTO "issues" VALUES (362,5,'Türk Solu','120',1970,NULL);
INSERT INTO "issues" VALUES (363,5,'Türk Solu','121',1970,NULL);
INSERT INTO "issues" VALUES (364,5,'Türk Solu','122',1970,NULL);
INSERT INTO "issues" VALUES (365,5,'Türk Solu','123',1970,NULL);
INSERT INTO "issues" VALUES (366,5,'Türk Solu','124',1970,NULL);
INSERT INTO "issues" VALUES (367,5,'Türk Solu','125',1970,NULL);
INSERT INTO "issues" VALUES (368,5,'Türk Solu','126',1970,NULL);
INSERT INTO "articles" VALUES (1,'Filistin Devrimi''nin Sorunları ve Eylül Dersleri',1,'Nayif Havatme','Author',1,'Aylık Ant Dergisi',13,1968,NULL,NULL);
INSERT INTO "articles" VALUES (2,'Fateh Bazı ''Büyük'' Devletlerin Filistin Devrimini Boğma Tertibini Lanetliyor','',NULL,NULL,3,'Proleter Devrimci Aydınlık','10-24',1968,NULL,NULL);
INSERT INTO "articles" VALUES (3,'Yaşasın Filistin ve Bütün Orta-Doğu Halklarının Devrimci Savaşı','',NULL,NULL,2,'Aydınlık Sosyalist Dergi',24,1968,NULL,NULL);
INSERT INTO "articles" VALUES (4,'Filistin İhtilalini Kimse Durduramaz!','',NULL,NULL,3,'Proleter Devrimci Aydınlık','10-24',1968,NULL,NULL);
INSERT INTO "articles" VALUES (5,'Filistin İkinci Dünya Kongresi','',NULL,NULL,3,'Proleter Devrimci Aydınlık','10-24',1968,NULL,NULL);
INSERT INTO "articles" VALUES (6,'Filistin Araplarının Millî Kurtuluş Savaşı',2,'Erdoğan Güçbilmez','Author',2,'Aydınlık Sosyalist Dergi',3,1968,NULL,NULL);
INSERT INTO "articles" VALUES (8,'Küçük Burjuvazinin Hezimeti ve Filistin Halk Savaşı',3,'Mehmet Emin Bozarslan','Translator',1,'Aylık Ant Dergisi',2,1968,NULL,NULL);
INSERT INTO "articles" VALUES (9,'Küçük Burjuvazinin Hezimeti ve Filistin Halk Savaşı',1,'Nayif Havatme','Author',1,'Aylık Ant Dergisi',2,1968,NULL,NULL);
INSERT INTO "articles" VALUES (10,'El Feth’e Niye Gittim?',4,'Yusuf Aslan','Author',4,'Haftalık Ant Dergisi',165,1968,NULL,'Bugün Ortadoğu''da Amerikan imperyalizminin ileri karakolu olan İsrail''e karşı Arap halkları anti-emperyalist bir savaş yürütmektedirler. Bu savaş Asya’da, Afrika''da, Latin Amerika''da ve bütün dünyada emperyalizmin baskısı altında ezilen halkların yürüttüğü devrimci kavganın bir parcasi.

Emperyalizme karşı yürütülen savaş, bütün dünya halklarının ortak savaşıdır. Vletnam''da, Ortadoğu''da, Latin Amerika''da emperyalizme karşı sıkılan her kurşun, aynızamanda Türkiye halkının kurtuluşu için sıkılmaktadır.

Günümüz koşullarında, özellikle emperyalizmin bir sıcak savaş bölgesi haline getirdiği Ortadoğu''da da bütün halkların, Türkiye, İran, Arap, Kıbrıs, Kürt halklarının bir antiemperyalist cephe kurmaları, ORTADOĞU DEVRİMCİ ÇEMBERİ''ni oluşturmaları, emperyalizme karşı kahredici darbenin indirilmesinin başlıca şartlarından biridir.

Bu yüzden Ortadoğu''da senelerden beri verilmekte olan devrimci kavganın pratiğinden geçmek ve ezilen Arap halklarınin kurtuluş mücadelesine bir nefer olarak katkıda bulunmak için El Feth''e gittim.

El Feth, Ortadağu''da halk savaşıni yürüten örgütlerin en güçlülerinden biridir. Bu örgüt, emperyalizme karşı verilen savaşta Arap halklarını silahlı mücadele içinde örgütleyip eğiten, marksist-leninist devrimcilerin yönetim organlarında bulunduğu birsleşik cephe örgütüdür. Örgüt işçi-köylünün büyük ölcüde ittifakını gerçeklestirmiş, kücük burjuvazinin bütün kesimlerinin sıcak savaş içinde desteğini sağlamıstır. Ayrıca, Ortadoğu''daki diğer devrimci örgütlerle birlikte gerici Arap rejimlerini de Filistin halkının silahlı gücü karşısında, görünüşte de olsa, hareketi desteklemek zorunda bırakmıştır.

EI Feth''te, diğer ülkelerden gelen ve Ortadoğu''daki halk savaşını emperyalizme karşı verilen savaşın bir parçası olarak gören, orada emperyalizme karşı sıkılan her kurşunun kendi halkının kurtuluşu için sıkıldığını bilen, devrimciler eğitim görür. 13 yaşındaki çocuğundan 80 yaşındaki ihtiyarına kadar halk savaşçılarıyla birlikte omuz omuza savaşa girer. Ve devrimciler, bu halk savaşinda 13 yaşındaki devrimcinin, ezilen halkaların kurtuluşu için mücadele ettiğinin bilincinde olduğunu görür. Halk savaşının kudretini ve emperyalistlerin halk savaşından korkmakta ne kadar haklı olduğunu görür, Halkın silahlı mücadele içinde nasıl örgütlendiğini, bilinçlendiğini ve emperyalizme karşi nasıl başarıyla savaştığını görür.

Bir daha inanır ki, emperyalizmin barbarlıkları, üstün silahli gücü karşısında dünya halklarının kararlı mücadeleleri sürecek ve mutlaka kalıcı zaferlerle neticelenecektir.

## Emperyalizme Karşı Dövüşmek Suç Değildir!

Türkiye''de sırtını emperyalizme dayamış işbirlikçi iktidar, Arap halklarınin kurtuluş mücadelesine saygı duyan Türkiye halklarına şirin gözükmek için Kahire’ye parlamento heyetleri yollarken Arap halklarının haklı mücadelesine bilfiil katılan Turkiye''li devrimcilere türlü işkenceler ve tertipler yapmaktadır. Arap halklarıyla birlikte emperyalizme karşi savaşmanın suç olmadığını, bu mücadeleyi suçmuç gibi göstermek için yapılan tertipleri ve devrimcilere yapılan işkenceleri açıklamak isterim.

Memleketime döndüğümnden birbuçuk ay sonra izinsiz yurt dışına çıktığım gerekçesiyle Kargamış istasyonunda, 1 Şubat''ta yakalandım. Önce jandarma karakolunda, sonra Gaziantep Emniyeti''nde olmak üzere, dört gün sabahlara kadar işkence altında sorgum yapıldı. İşkencelerin en halifi, saatlerce süren falaka, gözlere ışık tutmak, saç
yolmak idi...

Hakim sınıflar artık şunu anlamalıdır ki, ne tür işkenceler yapılırsa, ne tür tertipler hazırlanırsa hazırlansın, devrimciler yılmayacak ve haklı kavgalarını sonuna dek sürdürecektir. Türkiye''deki devrimcileri ve devrimci kavgayı Türkiye halklarının gözlerinden düşürmek için yapılan son tertiplerden biri de Diyarbakır Olayı''dır. Memleketlerine dönen devrimciler, birbir Diyarbakır Tıp Fakültesi''ne sabotaj yapacakları gerekçesiyle tutuklanıyorlar. Maksat açıktır: Devrimcileri maceracı, anarşist olarak tanıtmak, ve Doğuda zorlukla kurulan Tıp Fakültesi''ne sabotaj yapılacağı söylentisiyle Doğu halkını Arap halklarının haklı mücadelesine karşı kuşkuya düşürmek, Kürt ve Türk halklarının kardeşliğine nifak sokmaktır.

Bu oyunun düzenleyicileri — hakim çevreler tarafından açıklıkla bilinmelidir.

SAVAŞIMIZ, ÇAĞIMIZIN YÜZKARASI EMPERYALİZME VE ONUN
İŞBİRLİKÇİLERİNE KARŞIDIR. EZİLEN DÜNYA HALKLARININ DİRENİŞİNİN BİR PARÇASIDIR.

VE EMPERYALİZM, ORTADOĞU''DAN KOVULANA, DÜNYADAN YOKOLANA KADAR SÜRECEKTİR.');
INSERT INTO "articles" VALUES (11,'Orta Doğuda Fedayi Harekatı ve Filistin Demokratik Halk Kurtuluş Cephesi',5,'A. Kerim','Author',2,'Aydınlık Sosyalist Dergi',19,1968,NULL,NULL);
INSERT INTO "articles" VALUES (12,'Arap Halklarının Kurtuluş Mücadelesini Hiçbir Güç Durduramıyacaktır','',NULL,NULL,3,'Proleter Devrimci Aydınlık','9-23',1968,NULL,NULL);
INSERT INTO "articles" VALUES (13,'Ortadoğu ve El Fetih','',NULL,NULL,2,'Aydınlık Sosyalist Dergi',1,1968,NULL,'');
CREATE TRIGGER update_publication_years_insert
AFTER INSERT ON issues
BEGIN
    UPDATE publications
    SET 
        publication_start_year = (
            SELECT MIN(issue_year)
            FROM issues
            WHERE issues.publication_id = NEW.publication_id
        ),
        publication_end_year = (
            SELECT MAX(issue_year)
            FROM issues
            WHERE issues.publication_id = NEW.publication_id
        )
    WHERE publication_id = NEW.publication_id;
END;
CREATE TRIGGER update_publication_years_update
AFTER UPDATE ON issues
BEGIN
    UPDATE publications
    SET 
        publication_start_year = (
            SELECT MIN(issue_year)
            FROM issues
            WHERE issues.publication_id = NEW.publication_id
        ),
        publication_end_year = (
            SELECT MAX(issue_year)
            FROM issues
            WHERE issues.publication_id = NEW.publication_id
        )
    WHERE publication_id = NEW.publication_id;
END;
CREATE TRIGGER update_publication_title_trigger
AFTER UPDATE ON issues
FOR EACH ROW
BEGIN
    UPDATE issues
    SET publication_title = (
        SELECT publication_title 
        FROM publications 
        WHERE publications.publication_id = NEW.publication_id
    )
    WHERE issues.issue_id = NEW.issue_id AND NEW.publication_id IS NOT NULL;
END;
CREATE TRIGGER update_publication_title_article_level_trigger
AFTER UPDATE ON articles
FOR EACH ROW
BEGIN
    UPDATE articles
    SET publication_title = (
        SELECT publication_title 
        FROM publications 
        WHERE publications.publication_id = NEW.publication_id
    )
    WHERE articles.article_id = NEW.article_id;
END;
CREATE TRIGGER update_issue_year_and_month_trigger
AFTER UPDATE OF issue_number, publication_id ON articles
FOR EACH ROW
BEGIN
    -- Update the issue_year based on the corresponding issue in the issues table
    UPDATE articles
    SET issue_year = (SELECT issue_year FROM issues WHERE issues.issue_number = NEW.issue_number AND issues.publication_id = NEW.publication_id),
        issue_month = (SELECT issue_month FROM issues WHERE issues.issue_number = NEW.issue_number AND issues.publication_id = NEW.publication_id);
END;
CREATE TRIGGER update_author_info_trigger
AFTER UPDATE ON articles
FOR EACH ROW
BEGIN
    UPDATE articles
    SET "article_author" = (
        SELECT CASE
            WHEN author_last_name IS NOT NULL AND author_first_name IS NOT NULL THEN 
                author_last_name || ' ' || author_first_name
            WHEN author_last_name IS NOT NULL THEN 
                author_last_name
            ELSE 
                author_first_name
        END
        FROM authors
        WHERE authors.author_id = NEW.author_id
    ),
    "author_type" = (
        SELECT author_type
        FROM authors
        WHERE authors.author_id = NEW.author_id
    )
    WHERE articles.author_id = NEW.author_id;
END;
COMMIT;
