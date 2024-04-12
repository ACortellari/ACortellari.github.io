BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "publication_types" (
	"publication_type_id"	INTEGER,
	"publication_type"	INTEGER,
	PRIMARY KEY("publication_type_id")
);
CREATE TABLE IF NOT EXISTS "issue_types" (
	"issue_type_id"	INTEGER,
	"issue_type"	INTEGER,
	PRIMARY KEY("issue_type_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "authors" (
	"author_id"	INTEGER,
	"wikidata_id"	TEXT,
	"author_first_name"	TEXT,
	"author_last_name"	TEXT,
	"author_type"	TEXT,
	PRIMARY KEY("author_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "cities" (
	"city_id"	INTEGER,
	"city_name"	TEXT,
	PRIMARY KEY("city_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "publications" (
	"publication_id"	INTEGER,
	"publication_title"	TEXT NOT NULL,
	"publication_type_id"	INTEGER,
	"publication_preservation_entity"	TEXT,
	"city_id"	INTEGER,
	UNIQUE("publication_title"),
	PRIMARY KEY("publication_id")
);
CREATE TABLE IF NOT EXISTS "regular_features" (
	"regular_feature_id"	INTEGER,
	"regular_feature_title"	TEXT,
	PRIMARY KEY("regular_feature_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "printing_houses" (
	"printing_house_id"	INTEGER,
	"printing_house_name"	TEXT,
	"printing_house_location"	INTEGER,
	PRIMARY KEY("printing_house_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "articles" (
	"pages"	TEXT,
	"article_id"	INTEGER,
	"article_title"	TEXT,
	"author_id"	INTEGER,
	"regular_feature_id"	INTEGER,
	"publication_id"	INTEGER,
	"issue_number"	INTEGER,
	"page_start"	INTEGER,
	"page_end"	INTEGER,
	"article_text"	TEXT,
	PRIMARY KEY("article_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "issues" (
	"issue_id"	INTEGER NOT NULL UNIQUE,
	"publication_id"	INTEGER CHECK(NOT NULL),
	"publication_title"	TEXT,
	"issue_number"	TEXT,
	"issue_type_id"	INTEGER CHECK(NOT NULL),
	"issue_year"	INTEGER CHECK(NOT NULL),
	"issue_month"	TEXT,
	"issue_day"	INTEGER,
	"printing_house_id"	INTEGER,
	"issue_number_start"	INTEGER,
	"issue_number_end"	INTEGER,
	PRIMARY KEY("issue_id")
);
INSERT INTO "publication_types" VALUES (1,'daily');
INSERT INTO "publication_types" VALUES (2,'weekly');
INSERT INTO "publication_types" VALUES (3,'bi-weekly');
INSERT INTO "publication_types" VALUES (4,'monthly');
INSERT INTO "issue_types" VALUES (1,'regular issue');
INSERT INTO "issue_types" VALUES (2,'special issue');
INSERT INTO "authors" VALUES (1,'Q259190','Nayif','Havatme','Author');
INSERT INTO "authors" VALUES (2,NULL,'Erdoğan','Güçbilmez','Author');
INSERT INTO "authors" VALUES (3,'Q735569','Mehmet Emin','Bozarslan','Translator');
INSERT INTO "authors" VALUES (4,'Q2029380','Yusuf','Aslan','Author');
INSERT INTO "authors" VALUES (5,NULL,'A. Kerim',NULL,'Author');
INSERT INTO "authors" VALUES (6,'Q3123838','Gérard','Chaliand','Author');
INSERT INTO "authors" VALUES (7,NULL,'Minu','İnkaya','Author');
INSERT INTO "cities" VALUES (1,'Ankara');
INSERT INTO "cities" VALUES (2,'İstanbul');
INSERT INTO "cities" VALUES (3,'Adana');
INSERT INTO "cities" VALUES (4,'Ören');
INSERT INTO "cities" VALUES (5,'Zonguldak');
INSERT INTO "cities" VALUES (6,'Malatya');
INSERT INTO "cities" VALUES (7,'Tunceli');
INSERT INTO "cities" VALUES (8,'London');
INSERT INTO "cities" VALUES (9,'Ordu');
INSERT INTO "cities" VALUES (10,'Fatsa');
INSERT INTO "publications" VALUES (1,'Aylık Ant Dergisi',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (2,'Aydınlık Sosyalist Dergi',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (3,'Proleter Devrimci Aydınlık',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (4,'Haftalık Ant Dergisi',2,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (5,'Türk Solu',2,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (6,'Kurtuluş Yolu',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (7,'DİSK Gazetesi',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (8,'DİSK Gazetesi (2)',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (9,'İleri',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (10,'Kavga',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (11,'Proleter',4,'Türkiye Sosyal Tarih Araştırma Vakfı',3);
INSERT INTO "publications" VALUES (12,'Yeni Gerçek',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (13,'Haşhaş',3,'Türkiye Sosyal Tarih Araştırma Vakfı',4);
INSERT INTO "publications" VALUES (14,'Sosyalist',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (15,'Sömürücüye Yumruk',3,'Türkiye Sosyal Tarih Araştırma Vakfı',5);
INSERT INTO "publications" VALUES (16,'Devrimci TİP Haberleri',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (17,'TİP Haberleri',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (18,'İstanbul Tekstil İşçilerinin Sesi',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (19,'Tekstil Gazetesi',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (20,'Ezilenler',3,'Türkiye Sosyal Tarih Araştırma Vakfı',7);
INSERT INTO "publications" VALUES (21,'Fakirin Dostu',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (22,'FKF Mektubu',2,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (23,'Tüm',2,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (24,'Örgüt',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (25,'Kimya-İş',2,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (26,'Durum',3,'Türkiye Sosyal Tarih Araştırma Vakfı',NULL);
INSERT INTO "publications" VALUES (27,'Ekmek',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (28,'Emek',2,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (29,'Gençlik',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (30,'İşçi Birliği',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (31,'İşçi Köylü',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (32,'Kardaş',4,'Türkiye Sosyal Tarih Araştırma Vakfı',8);
INSERT INTO "publications" VALUES (33,'Katkı',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (34,'Köylü',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (35,'Köylü Birliği',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (36,'Kurtuluş',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (37,'Öncü İşçi',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (38,'Parti Gazetesi',3,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (39,'Partizan',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (40,'Sosyalist Parti',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "publications" VALUES (41,'Türkiye Defteri',4,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (42,'Türkiye Solu',3,'Türkiye Sosyal Tarih Araştırma Vakfı',2);
INSERT INTO "publications" VALUES (43,'Emek (2)',4,'Türkiye Sosyal Tarih Araştırma Vakfı',1);
INSERT INTO "regular_features" VALUES (1,'Aydınlık''ta Dünya ve Türkiye');
INSERT INTO "printing_houses" VALUES (1,'Hermon Matbaası',2);
INSERT INTO "printing_houses" VALUES (2,'Haşmet Matbaası',2);
INSERT INTO "printing_houses" VALUES (3,'Tur Matbaası',2);
INSERT INTO "printing_houses" VALUES (4,'Bilmen Matbaası',2);
INSERT INTO "printing_houses" VALUES (5,'Talat Matbaası',2);
INSERT INTO "printing_houses" VALUES (6,'Sile Matbaası',2);
INSERT INTO "printing_houses" VALUES (7,'İş Matbaacılık ve Ticaret',1);
INSERT INTO "printing_houses" VALUES (8,'TÖYKO Matbaası',1);
INSERT INTO "printing_houses" VALUES (9,'San Matbaası',1);
INSERT INTO "printing_houses" VALUES (10,'Baylan Basım ve Ciltevi',1);
INSERT INTO "printing_houses" VALUES (11,'TİSA Matbaacılık Sanayii',1);
INSERT INTO "printing_houses" VALUES (12,'Ulusal Basımevi',1);
INSERT INTO "printing_houses" VALUES (13,'İleri Sanat Matbaası',2);
INSERT INTO "printing_houses" VALUES (14,'Osmanbey Matbaası',2);
INSERT INTO "printing_houses" VALUES (15,'Dilek Matbaası',2);
INSERT INTO "printing_houses" VALUES (16,'Vatan Gazetecilik ve Matbaacılık İşletmeciliği',2);
INSERT INTO "printing_houses" VALUES (17,'Sebat Matbaası',6);
INSERT INTO "printing_houses" VALUES (18,'Tan Matbaası',2);
INSERT INTO "printing_houses" VALUES (19,'Uğur Basımevi',9);
INSERT INTO "printing_houses" VALUES (20,'Yeşil Fatsa Matbaası',10);
INSERT INTO "printing_houses" VALUES (21,'Not specified',NULL);
INSERT INTO "printing_houses" VALUES (22,'Şenyuva Matbaası',1);
INSERT INTO "printing_houses" VALUES (23,'Güzel İstanbul Matbaası',2);
INSERT INTO "printing_houses" VALUES (24,'Son Telgraf Matbaası',2);
INSERT INTO "printing_houses" VALUES (25,'Yüksel Matbaası',2);
INSERT INTO "printing_houses" VALUES (26,'Ulusoğlu Matbaası',1);
INSERT INTO "articles" VALUES (NULL,1,'Filistin Devrimi''nin Sorunları ve Eylül Dersleri',1,NULL,1,13,77,82,NULL);
INSERT INTO "articles" VALUES (NULL,2,'Fateh Bazı ''Büyük'' Devletlerin Filistin Devrimini Boğma Tertibini Lanetliyor','',NULL,3,'10-24',425,426,NULL);
INSERT INTO "articles" VALUES (NULL,3,'Aydınlık''ta Dünya ve Türkiye','',1,2,24,504,525,NULL);
INSERT INTO "articles" VALUES (NULL,4,'Filistin İhtilalini Kimse Durduramaz!','',NULL,3,'10-24',417,423,NULL);
INSERT INTO "articles" VALUES (NULL,5,'Filistin İkinci Dünya Kongresi','',NULL,3,'10-24',423,425,NULL);
INSERT INTO "articles" VALUES (NULL,6,'Filistin Araplarının Millî Kurtuluş Savaşı',2,NULL,2,3,227,244,NULL);
INSERT INTO "articles" VALUES (NULL,8,'Küçük Burjuvazinin Hezimeti ve Filistin Halk Savaşı',3,NULL,1,2,75,84,NULL);
INSERT INTO "articles" VALUES (NULL,9,'Küçük Burjuvazinin Hezimeti ve Filistin Halk Savaşı',1,NULL,1,2,75,84,NULL);
INSERT INTO "articles" VALUES (NULL,10,'El Feth''e Niye Gittim?',4,NULL,4,165,6,6,'Bugün Ortadoğu''da Amerikan imperyalizminin ileri karakolu olan İsrail''e karşı Arap halkları anti-emperyalist bir savaş yürütmektedirler. Bu savaş Asya’da, Afrika''da, Latin Amerika''da ve bütün dünyada emperyalizmin baskısı altında ezilen halkların yürüttüğü devrimci kavganın bir parcasi.

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
INSERT INTO "articles" VALUES (NULL,11,'Orta Doğuda Fedayi Harekatı ve Filistin Demokratik Halk Kurtuluş Cephesi',5,NULL,2,19,86,96,NULL);
INSERT INTO "articles" VALUES (NULL,12,'Arap Halklarının Kurtuluş Mücadelesini Hiçbir Güç Durduramıyacaktır','',NULL,3,'9-23',369,376,NULL);
INSERT INTO "articles" VALUES (NULL,13,'Aydınlık''ta Dünya ve Türkiye','',1,2,1,33,44,NULL);
INSERT INTO "articles" VALUES (NULL,14,'Aydınlık''ta Dünya ve Türkiye','',1,2,3,177,186,NULL);
INSERT INTO "articles" VALUES (NULL,15,'Aydınlık''ta Dünya ve Türkiye','',1,2,4,261,278,NULL);
INSERT INTO "articles" VALUES (NULL,16,'Aydınlık''ta Dünya ve Türkiye','',1,2,6,417,437,NULL);
INSERT INTO "articles" VALUES (NULL,17,'El Feth ve Göçmenler',6,NULL,5,86,15,15,NULL);
INSERT INTO "articles" VALUES (NULL,18,'El Feth ve Göçmenler',6,NULL,5,87,15,15,NULL);
INSERT INTO "articles" VALUES (NULL,19,'El Feth’in Zaferi',6,NULL,5,82,12,12,NULL);
INSERT INTO "articles" VALUES (NULL,20,'Filistin Halk Kurtuluş Cephesinde bölünmeler',6,NULL,5,85,13,13,NULL);
INSERT INTO "articles" VALUES (NULL,21,'Filistin Mukavemeti',6,NULL,5,81,10,11,NULL);
INSERT INTO "articles" VALUES (NULL,22,'Haziran 1967 den Sonra',6,NULL,5,83,14,14,NULL);
INSERT INTO "articles" VALUES (NULL,23,'Milli şahsiyetiçin savaş',6,NULL,5,84,14,14,NULL);
INSERT INTO "articles" VALUES (NULL,24,'Tartışmanın Özü',6,NULL,5,89,13,13,NULL);
INSERT INTO "articles" VALUES (NULL,25,'Ürdün''de Halk Savaşı','',NULL,8,3,1,3,NULL);
INSERT INTO "articles" VALUES (NULL,26,'Ürdün','',NULL,6,3,2,2,NULL);
INSERT INTO "articles" VALUES (NULL,27,'Ürdün','',NULL,6,2,2,2,NULL);
INSERT INTO "articles" VALUES (NULL,29,'Arap-İsrail Çatışması',7,NULL,6,1,2,2,NULL);
INSERT INTO "articles" VALUES (NULL,30,'Mısırda Karışıklık','',NULL,6,2,2,2,NULL);
INSERT INTO "articles" VALUES (NULL,31,'Emperyalizmin ve Kapitalizm Mutlaka Yok Edilecektir','',NULL,6,9,3,3,NULL);
INSERT INTO "articles" VALUES (NULL,32,'Proletaryanın Devrimci Partilerinin Önderliğinde Dünya Halklarının Mücadeleleri Hızla Gelişiyor',NULL,NULL,3,'3-17',347,352,NULL);
INSERT INTO "articles" VALUES (NULL,33,'11 Genç Tutuklandı',NULL,NULL,4,164,3,3,NULL);
INSERT INTO "articles" VALUES ('“El Feth’in Açıklaması.” Ant Haftalık Dergi, February 17, 1970.',34,'El Feth’in Açıklaması',NULL,NULL,4,164,2,2,NULL);
INSERT INTO "articles" VALUES (NULL,35,'El Feth Gönüllüleri',NULL,NULL,4,173,3,3,NULL);
INSERT INTO "articles" VALUES (NULL,36,'El Fetihe Katılan Gençlerin Bildirisi',NULL,1,2,17,394,406,NULL);
INSERT INTO "articles" VALUES (NULL,37,'Filistin Demokratik Halk Kurtuluş Cephesi',NULL,NULL,4,158,13,13,NULL);
INSERT INTO "issues" VALUES (2,2,'Aydınlık Sosyalist Dergi','1',1,1968,'11','',NULL,1,1);
INSERT INTO "issues" VALUES (3,2,'Aydınlık Sosyalist Dergi','2',1,1968,'12','',7,2,2);
INSERT INTO "issues" VALUES (4,2,'Aydınlık Sosyalist Dergi','3',1,1969,'1','',7,3,3);
INSERT INTO "issues" VALUES (5,2,'Aydınlık Sosyalist Dergi','4',1,1969,'2','',7,4,4);
INSERT INTO "issues" VALUES (6,2,'Aydınlık Sosyalist Dergi','5',1,1969,'3','',7,5,5);
INSERT INTO "issues" VALUES (7,2,'Aydınlık Sosyalist Dergi','6',1,1969,'4','',7,6,6);
INSERT INTO "issues" VALUES (8,2,'Aydınlık Sosyalist Dergi','7',1,1969,'5','',7,7,7);
INSERT INTO "issues" VALUES (9,2,'Aydınlık Sosyalist Dergi','8',1,1969,'6','',7,8,8);
INSERT INTO "issues" VALUES (10,2,'Aydınlık Sosyalist Dergi','9',1,1969,'7','',7,9,9);
INSERT INTO "issues" VALUES (11,2,'Aydınlık Sosyalist Dergi','10',1,1969,'8','',7,10,10);
INSERT INTO "issues" VALUES (12,2,'Aydınlık Sosyalist Dergi','11',1,1969,'9','',7,11,11);
INSERT INTO "issues" VALUES (13,2,'Aydınlık Sosyalist Dergi','12',1,1969,'10','',7,12,12);
INSERT INTO "issues" VALUES (14,2,'Aydınlık Sosyalist Dergi','13',1,1969,'11','',7,13,13);
INSERT INTO "issues" VALUES (15,2,'Aydınlık Sosyalist Dergi','14',1,1969,'12','',7,14,14);
INSERT INTO "issues" VALUES (16,2,'Aydınlık Sosyalist Dergi','15',1,1970,'1','',8,15,15);
INSERT INTO "issues" VALUES (17,2,'Aydınlık Sosyalist Dergi','16',1,1970,'2','',8,16,16);
INSERT INTO "issues" VALUES (18,2,'Aydınlık Sosyalist Dergi','17',1,1970,'3','',9,17,17);
INSERT INTO "issues" VALUES (19,2,'Aydınlık Sosyalist Dergi','18',1,1970,'4','',9,18,18);
INSERT INTO "issues" VALUES (20,2,'Aydınlık Sosyalist Dergi','19',1,1970,'5','',9,19,19);
INSERT INTO "issues" VALUES (21,2,'Aydınlık Sosyalist Dergi','20',1,1970,'6','',9,20,20);
INSERT INTO "issues" VALUES (22,2,'Aydınlık Sosyalist Dergi','21',1,1970,'7','',9,21,21);
INSERT INTO "issues" VALUES (23,2,'Aydınlık Sosyalist Dergi','22',1,1970,'8','',NULL,22,22);
INSERT INTO "issues" VALUES (24,2,'Aydınlık Sosyalist Dergi','23',1,1970,'9','',NULL,23,23);
INSERT INTO "issues" VALUES (25,2,'Aydınlık Sosyalist Dergi','24',1,1970,'10','',NULL,24,24);
INSERT INTO "issues" VALUES (26,2,'Aydınlık Sosyalist Dergi','25',1,1970,'11','',NULL,25,25);
INSERT INTO "issues" VALUES (27,2,'Aydınlık Sosyalist Dergi','26',1,1970,'12','',NULL,26,26);
INSERT INTO "issues" VALUES (28,2,'Aydınlık Sosyalist Dergi','27',1,1971,'1','',NULL,27,27);
INSERT INTO "issues" VALUES (29,2,'Aydınlık Sosyalist Dergi','28',1,1971,'2','',10,28,28);
INSERT INTO "issues" VALUES (30,2,'Aydınlık Sosyalist Dergi','29-30',1,1971,'3-4','',10,29,30);
INSERT INTO "issues" VALUES (31,3,'Proleter Devrimci Aydınlık','1-15',1,1970,'1','',7,1,15);
INSERT INTO "issues" VALUES (32,3,'Proleter Devrimci Aydınlık','2-16',1,1970,'2','',7,2,16);
INSERT INTO "issues" VALUES (33,3,'Proleter Devrimci Aydınlık','3-17',1,1970,'3','',7,3,17);
INSERT INTO "issues" VALUES (34,3,'Proleter Devrimci Aydınlık','4-18',1,1970,'4','',7,4,18);
INSERT INTO "issues" VALUES (35,3,'Proleter Devrimci Aydınlık','5-19',1,1970,'5','',7,5,19);
INSERT INTO "issues" VALUES (36,3,'Proleter Devrimci Aydınlık','6-20',1,1970,'6','',7,6,20);
INSERT INTO "issues" VALUES (37,3,'Proleter Devrimci Aydınlık','7-21',1,1970,'7','',7,7,21);
INSERT INTO "issues" VALUES (38,3,'Proleter Devrimci Aydınlık','8-22',1,1970,'8','',7,8,22);
INSERT INTO "issues" VALUES (39,3,'Proleter Devrimci Aydınlık','9-23',1,1970,'9','',7,9,23);
INSERT INTO "issues" VALUES (40,3,'Proleter Devrimci Aydınlık','10-24',1,1970,'10','',11,10,24);
INSERT INTO "issues" VALUES (41,3,'Proleter Devrimci Aydınlık','11-25',1,1970,'11','',11,11,25);
INSERT INTO "issues" VALUES (42,3,'Proleter Devrimci Aydınlık','12-26',1,1970,'12','',11,12,26);
INSERT INTO "issues" VALUES (43,3,'Proleter Devrimci Aydınlık','13-27',1,1971,'1','',NULL,13,27);
INSERT INTO "issues" VALUES (44,3,'Proleter Devrimci Aydınlık','14-28',1,1971,'2','',12,14,28);
INSERT INTO "issues" VALUES (45,3,'Proleter Devrimci Aydınlık','15-29',1,1971,'2','',12,15,29);
INSERT INTO "issues" VALUES (46,3,'Proleter Devrimci Aydınlık','16-30',1,1971,'2','',12,16,30);
INSERT INTO "issues" VALUES (47,3,'Proleter Devrimci Aydınlık','17-31',1,1971,'2','',12,17,31);
INSERT INTO "issues" VALUES (48,3,'Proleter Devrimci Aydınlık','18-32',1,1971,'3','',12,18,32);
INSERT INTO "issues" VALUES (49,3,'Proleter Devrimci Aydınlık','19-33',1,1971,'3','',12,19,33);
INSERT INTO "issues" VALUES (50,3,'Proleter Devrimci Aydınlık','20-34',1,1971,'3','',12,20,34);
INSERT INTO "issues" VALUES (51,3,'Proleter Devrimci Aydınlık','21-35',1,1971,'3','',12,21,35);
INSERT INTO "issues" VALUES (52,3,'Proleter Devrimci Aydınlık','22-36',1,1971,'3','',12,22,36);
INSERT INTO "issues" VALUES (53,3,'Proleter Devrimci Aydınlık','23-37',1,1971,'4','',12,23,37);
INSERT INTO "issues" VALUES (54,3,'Proleter Devrimci Aydınlık','24-38',1,1971,'4','',12,24,38);
INSERT INTO "issues" VALUES (55,3,'Proleter Devrimci Aydınlık','25-39',1,1971,'4','',12,25,39);
INSERT INTO "issues" VALUES (56,3,'Proleter Devrimci Aydınlık','26-40',1,1971,'4','',12,26,40);
INSERT INTO "issues" VALUES (57,1,'Aylık Ant Dergisi','1',1,1970,'5','',13,1,1);
INSERT INTO "issues" VALUES (58,1,'Aylık Ant Dergisi','2',1,1970,'6','',13,2,2);
INSERT INTO "issues" VALUES (59,1,'Aylık Ant Dergisi','3',1,1970,'7','',NULL,3,3);
INSERT INTO "issues" VALUES (60,1,'Aylık Ant Dergisi','4',1,1970,'8','',NULL,4,4);
INSERT INTO "issues" VALUES (61,1,'Aylık Ant Dergisi','5',1,1970,'9','',14,5,5);
INSERT INTO "issues" VALUES (62,1,'Aylık Ant Dergisi','6',1,1970,'10','',14,6,6);
INSERT INTO "issues" VALUES (63,1,'Aylık Ant Dergisi','7',1,1970,'11','',14,7,7);
INSERT INTO "issues" VALUES (64,1,'Aylık Ant Dergisi','8',1,1970,'12','',14,8,8);
INSERT INTO "issues" VALUES (65,1,'Aylık Ant Dergisi','9',1,1971,'1','',14,9,9);
INSERT INTO "issues" VALUES (66,1,'Aylık Ant Dergisi','10',1,1971,'2','',14,10,10);
INSERT INTO "issues" VALUES (67,1,'Aylık Ant Dergisi','11',1,1971,'3','',14,11,11);
INSERT INTO "issues" VALUES (68,1,'Aylık Ant Dergisi','12',1,1971,'4','',14,12,12);
INSERT INTO "issues" VALUES (69,1,'Aylık Ant Dergisi','13',1,1971,'5','',14,13,13);
INSERT INTO "issues" VALUES (70,4,'Haftalık Ant Dergisi','1',1,1967,'1',3,18,1,1);
INSERT INTO "issues" VALUES (71,4,'Haftalık Ant Dergisi','2',1,1967,'1',10,18,2,2);
INSERT INTO "issues" VALUES (72,4,'Haftalık Ant Dergisi','3',1,1967,'1',17,18,3,3);
INSERT INTO "issues" VALUES (73,4,'Haftalık Ant Dergisi','4',1,1967,'1',24,18,4,4);
INSERT INTO "issues" VALUES (74,4,'Haftalık Ant Dergisi','5',1,1967,'1',31,18,5,5);
INSERT INTO "issues" VALUES (75,4,'Haftalık Ant Dergisi','6',1,1967,'2',7,18,6,6);
INSERT INTO "issues" VALUES (76,4,'Haftalık Ant Dergisi','7',1,1967,'2',14,18,7,7);
INSERT INTO "issues" VALUES (77,4,'Haftalık Ant Dergisi','8',1,1967,'2',21,18,8,8);
INSERT INTO "issues" VALUES (78,4,'Haftalık Ant Dergisi','9',1,1967,'2',28,18,9,9);
INSERT INTO "issues" VALUES (79,4,'Haftalık Ant Dergisi','10',1,1967,'3',7,18,10,10);
INSERT INTO "issues" VALUES (80,4,'Haftalık Ant Dergisi','11',1,1967,'3',14,18,11,11);
INSERT INTO "issues" VALUES (81,4,'Haftalık Ant Dergisi','12',1,1967,'3',21,18,12,12);
INSERT INTO "issues" VALUES (82,4,'Haftalık Ant Dergisi','13',1,1967,'3',28,18,13,13);
INSERT INTO "issues" VALUES (83,4,'Haftalık Ant Dergisi','14',1,1967,'4',4,18,14,14);
INSERT INTO "issues" VALUES (84,4,'Haftalık Ant Dergisi','15',1,1967,'4',11,18,15,15);
INSERT INTO "issues" VALUES (85,4,'Haftalık Ant Dergisi','16',1,1967,'4',18,18,16,16);
INSERT INTO "issues" VALUES (86,4,'Haftalık Ant Dergisi','17',1,1967,'4',25,18,17,17);
INSERT INTO "issues" VALUES (87,4,'Haftalık Ant Dergisi','18',1,1967,'5',2,18,18,18);
INSERT INTO "issues" VALUES (88,4,'Haftalık Ant Dergisi','19',1,1967,'5',9,18,19,19);
INSERT INTO "issues" VALUES (89,4,'Haftalık Ant Dergisi','20',1,1967,'5',16,18,20,20);
INSERT INTO "issues" VALUES (90,4,'Haftalık Ant Dergisi','21',1,1967,'5',23,18,21,21);
INSERT INTO "issues" VALUES (91,4,'Haftalık Ant Dergisi','22',1,1967,'5',30,18,22,22);
INSERT INTO "issues" VALUES (92,4,'Haftalık Ant Dergisi','23',1,1967,'6',6,18,23,23);
INSERT INTO "issues" VALUES (93,4,'Haftalık Ant Dergisi','24',1,1967,'6',13,18,24,24);
INSERT INTO "issues" VALUES (94,4,'Haftalık Ant Dergisi','25',1,1967,'6',20,18,25,25);
INSERT INTO "issues" VALUES (95,4,'Haftalık Ant Dergisi','26',1,1967,'6',27,18,26,26);
INSERT INTO "issues" VALUES (96,4,'Haftalık Ant Dergisi','27',1,1967,'7',4,18,27,27);
INSERT INTO "issues" VALUES (97,4,'Haftalık Ant Dergisi','28',1,1967,'7',11,18,28,28);
INSERT INTO "issues" VALUES (98,4,'Haftalık Ant Dergisi','29',1,1967,'7',18,18,29,29);
INSERT INTO "issues" VALUES (99,4,'Haftalık Ant Dergisi','30',1,1967,'7',25,18,30,30);
INSERT INTO "issues" VALUES (100,4,'Haftalık Ant Dergisi','31',1,1967,'8',1,18,31,31);
INSERT INTO "issues" VALUES (101,4,'Haftalık Ant Dergisi','32',1,1967,'8',8,18,32,32);
INSERT INTO "issues" VALUES (102,4,'Haftalık Ant Dergisi','33',1,1967,'8',15,18,33,33);
INSERT INTO "issues" VALUES (103,4,'Haftalık Ant Dergisi','34',1,1967,'8',22,18,34,34);
INSERT INTO "issues" VALUES (104,4,'Haftalık Ant Dergisi','35',1,1967,'8',29,18,35,35);
INSERT INTO "issues" VALUES (105,4,'Haftalık Ant Dergisi','36',1,1967,'9',5,18,36,36);
INSERT INTO "issues" VALUES (106,4,'Haftalık Ant Dergisi','37',1,1967,'9',12,18,37,37);
INSERT INTO "issues" VALUES (107,4,'Haftalık Ant Dergisi','38',1,1967,'9',19,18,38,38);
INSERT INTO "issues" VALUES (108,4,'Haftalık Ant Dergisi','39',1,1967,'9',26,18,39,39);
INSERT INTO "issues" VALUES (109,4,'Haftalık Ant Dergisi','40',1,1967,'10',3,18,40,40);
INSERT INTO "issues" VALUES (110,4,'Haftalık Ant Dergisi','41',1,1967,'10',10,18,41,41);
INSERT INTO "issues" VALUES (111,4,'Haftalık Ant Dergisi','42',1,1967,'10',17,16,42,42);
INSERT INTO "issues" VALUES (112,4,'Haftalık Ant Dergisi','43',1,1967,'10',24,16,43,43);
INSERT INTO "issues" VALUES (113,4,'Haftalık Ant Dergisi','44',1,1967,'10',31,16,44,44);
INSERT INTO "issues" VALUES (114,4,'Haftalık Ant Dergisi','45',1,1967,'11',7,16,45,45);
INSERT INTO "issues" VALUES (115,4,'Haftalık Ant Dergisi','46',1,1967,'11',14,16,46,46);
INSERT INTO "issues" VALUES (116,4,'Haftalık Ant Dergisi','47',1,1967,'11',21,16,47,47);
INSERT INTO "issues" VALUES (117,4,'Haftalık Ant Dergisi','48',1,1967,'11',28,16,48,48);
INSERT INTO "issues" VALUES (118,4,'Haftalık Ant Dergisi','49',1,1967,'12',5,16,49,49);
INSERT INTO "issues" VALUES (119,4,'Haftalık Ant Dergisi','50',1,1967,'12',12,16,50,50);
INSERT INTO "issues" VALUES (120,4,'Haftalık Ant Dergisi','51',1,1967,'12',19,16,51,51);
INSERT INTO "issues" VALUES (121,4,'Haftalık Ant Dergisi','52',1,1967,'12',26,16,52,52);
INSERT INTO "issues" VALUES (122,4,'Haftalık Ant Dergisi','53',1,1968,'1',2,16,53,53);
INSERT INTO "issues" VALUES (123,4,'Haftalık Ant Dergisi','54',1,1968,'1',9,16,54,54);
INSERT INTO "issues" VALUES (124,4,'Haftalık Ant Dergisi','55',1,1968,'1',16,16,55,55);
INSERT INTO "issues" VALUES (125,4,'Haftalık Ant Dergisi','56',1,1968,'1',23,16,56,56);
INSERT INTO "issues" VALUES (126,4,'Haftalık Ant Dergisi','57',1,1968,'1',30,16,57,57);
INSERT INTO "issues" VALUES (127,4,'Haftalık Ant Dergisi','58',1,1968,'2',6,16,58,58);
INSERT INTO "issues" VALUES (128,4,'Haftalık Ant Dergisi','59',1,1968,'2',13,16,59,59);
INSERT INTO "issues" VALUES (129,4,'Haftalık Ant Dergisi','60',1,1968,'2',20,16,60,60);
INSERT INTO "issues" VALUES (130,4,'Haftalık Ant Dergisi','61',1,1968,'2',27,16,61,61);
INSERT INTO "issues" VALUES (131,4,'Haftalık Ant Dergisi','62',1,1968,'3',5,16,62,62);
INSERT INTO "issues" VALUES (132,4,'Haftalık Ant Dergisi','63',1,1968,'3',12,16,63,63);
INSERT INTO "issues" VALUES (133,4,'Haftalık Ant Dergisi','64',1,1968,'3',19,16,64,64);
INSERT INTO "issues" VALUES (134,4,'Haftalık Ant Dergisi','65',1,1968,'3',26,16,65,65);
INSERT INTO "issues" VALUES (135,4,'Haftalık Ant Dergisi','66',1,1968,'4',2,16,66,66);
INSERT INTO "issues" VALUES (136,4,'Haftalık Ant Dergisi','67',1,1968,'4',9,16,67,67);
INSERT INTO "issues" VALUES (137,4,'Haftalık Ant Dergisi','68',1,1968,'4',16,16,68,68);
INSERT INTO "issues" VALUES (138,4,'Haftalık Ant Dergisi','69',1,1968,'4',23,16,69,69);
INSERT INTO "issues" VALUES (139,4,'Haftalık Ant Dergisi','70',1,1968,'4',30,16,70,70);
INSERT INTO "issues" VALUES (140,4,'Haftalık Ant Dergisi','71',1,1968,'5',7,16,71,71);
INSERT INTO "issues" VALUES (141,4,'Haftalık Ant Dergisi','72',1,1968,'5',14,16,72,72);
INSERT INTO "issues" VALUES (142,4,'Haftalık Ant Dergisi','73',1,1968,'5',21,16,73,73);
INSERT INTO "issues" VALUES (143,4,'Haftalık Ant Dergisi','74',1,1968,'5',28,16,74,74);
INSERT INTO "issues" VALUES (144,4,'Haftalık Ant Dergisi','75',1,1968,'6',4,16,75,75);
INSERT INTO "issues" VALUES (145,4,'Haftalık Ant Dergisi','76',1,1968,'6',11,16,76,76);
INSERT INTO "issues" VALUES (146,4,'Haftalık Ant Dergisi','77',1,1968,'6',18,16,77,77);
INSERT INTO "issues" VALUES (147,4,'Haftalık Ant Dergisi','78',1,1968,'6',25,16,78,78);
INSERT INTO "issues" VALUES (148,4,'Haftalık Ant Dergisi','79',1,1968,'7',2,16,79,79);
INSERT INTO "issues" VALUES (149,4,'Haftalık Ant Dergisi','80',1,1968,'7',9,16,80,80);
INSERT INTO "issues" VALUES (150,4,'Haftalık Ant Dergisi','81',1,1968,'7',16,16,81,81);
INSERT INTO "issues" VALUES (151,4,'Haftalık Ant Dergisi','82',1,1968,'7',23,16,82,82);
INSERT INTO "issues" VALUES (152,4,'Haftalık Ant Dergisi','83',1,1968,'7',30,16,83,83);
INSERT INTO "issues" VALUES (153,4,'Haftalık Ant Dergisi','84',1,1968,'8',6,16,84,84);
INSERT INTO "issues" VALUES (154,4,'Haftalık Ant Dergisi','85',1,1968,'8',13,16,85,85);
INSERT INTO "issues" VALUES (155,4,'Haftalık Ant Dergisi','86',1,1968,'8',20,16,86,86);
INSERT INTO "issues" VALUES (156,4,'Haftalık Ant Dergisi','87',1,1968,'8',27,16,87,87);
INSERT INTO "issues" VALUES (157,4,'Haftalık Ant Dergisi','88',1,1968,'9',3,16,88,88);
INSERT INTO "issues" VALUES (158,4,'Haftalık Ant Dergisi','89',1,1968,'9',10,16,89,89);
INSERT INTO "issues" VALUES (159,4,'Haftalık Ant Dergisi','90',1,1968,'9',17,16,90,90);
INSERT INTO "issues" VALUES (160,4,'Haftalık Ant Dergisi','91',1,1968,'9',24,16,91,91);
INSERT INTO "issues" VALUES (161,4,'Haftalık Ant Dergisi','92',1,1968,'10',1,16,92,92);
INSERT INTO "issues" VALUES (162,4,'Haftalık Ant Dergisi','93',1,1968,'10',8,16,93,93);
INSERT INTO "issues" VALUES (163,4,'Haftalık Ant Dergisi','94',1,1968,'10',15,16,94,94);
INSERT INTO "issues" VALUES (164,4,'Haftalık Ant Dergisi','95',1,1968,'10',22,16,95,95);
INSERT INTO "issues" VALUES (165,4,'Haftalık Ant Dergisi','96',1,1968,'10',29,16,96,96);
INSERT INTO "issues" VALUES (166,4,'Haftalık Ant Dergisi','97',1,1968,'11',5,16,97,97);
INSERT INTO "issues" VALUES (167,4,'Haftalık Ant Dergisi','98',1,1968,'11',12,16,98,98);
INSERT INTO "issues" VALUES (168,4,'Haftalık Ant Dergisi','99',1,1968,'11',19,16,99,99);
INSERT INTO "issues" VALUES (169,4,'Haftalık Ant Dergisi','100',1,1968,'11',26,16,100,100);
INSERT INTO "issues" VALUES (170,4,'Haftalık Ant Dergisi','101',1,1968,'12',3,16,101,101);
INSERT INTO "issues" VALUES (171,4,'Haftalık Ant Dergisi','102',1,1968,'12',10,16,102,102);
INSERT INTO "issues" VALUES (172,4,'Haftalık Ant Dergisi','103',1,1968,'12',17,16,103,103);
INSERT INTO "issues" VALUES (173,4,'Haftalık Ant Dergisi','104',1,1968,'12',24,16,104,104);
INSERT INTO "issues" VALUES (174,4,'Haftalık Ant Dergisi','105',1,1968,'12',31,16,105,105);
INSERT INTO "issues" VALUES (175,4,'Haftalık Ant Dergisi','106',1,1969,'1',7,16,106,106);
INSERT INTO "issues" VALUES (176,4,'Haftalık Ant Dergisi','107',1,1969,'1',14,16,107,107);
INSERT INTO "issues" VALUES (177,4,'Haftalık Ant Dergisi','108',1,1969,'1',21,16,108,108);
INSERT INTO "issues" VALUES (178,4,'Haftalık Ant Dergisi','109',1,1969,'1',28,16,109,109);
INSERT INTO "issues" VALUES (179,4,'Haftalık Ant Dergisi','110',1,1969,'2',4,16,110,110);
INSERT INTO "issues" VALUES (180,4,'Haftalık Ant Dergisi','111',1,1969,'2',11,16,111,111);
INSERT INTO "issues" VALUES (181,4,'Haftalık Ant Dergisi','112',1,1969,'2',18,16,112,112);
INSERT INTO "issues" VALUES (182,4,'Haftalık Ant Dergisi','113',1,1969,'2',25,16,113,113);
INSERT INTO "issues" VALUES (183,4,'Haftalık Ant Dergisi','114',1,1969,'3',4,16,114,114);
INSERT INTO "issues" VALUES (184,4,'Haftalık Ant Dergisi','115',1,1969,'3',11,16,115,115);
INSERT INTO "issues" VALUES (185,4,'Haftalık Ant Dergisi','116',1,1969,'3',18,16,116,116);
INSERT INTO "issues" VALUES (186,4,'Haftalık Ant Dergisi','117',1,1969,'3',25,16,117,117);
INSERT INTO "issues" VALUES (187,4,'Haftalık Ant Dergisi','118',1,1969,'4',1,16,118,118);
INSERT INTO "issues" VALUES (188,4,'Haftalık Ant Dergisi','119',1,1969,'4',8,16,119,119);
INSERT INTO "issues" VALUES (189,4,'Haftalık Ant Dergisi','120',1,1969,'4',15,16,120,120);
INSERT INTO "issues" VALUES (190,4,'Haftalık Ant Dergisi','121',1,1969,'4',22,16,121,121);
INSERT INTO "issues" VALUES (191,4,'Haftalık Ant Dergisi','122',1,1969,'4',29,16,122,122);
INSERT INTO "issues" VALUES (192,4,'Haftalık Ant Dergisi','123',1,1969,'5',6,16,123,123);
INSERT INTO "issues" VALUES (193,4,'Haftalık Ant Dergisi','124',1,1969,'5',13,16,124,124);
INSERT INTO "issues" VALUES (194,4,'Haftalık Ant Dergisi','125',1,1969,'5',20,16,125,125);
INSERT INTO "issues" VALUES (195,4,'Haftalık Ant Dergisi','126',1,1969,'5',27,16,126,126);
INSERT INTO "issues" VALUES (196,4,'Haftalık Ant Dergisi','127',1,1969,'6',3,16,127,127);
INSERT INTO "issues" VALUES (197,4,'Haftalık Ant Dergisi','128',1,1969,'6',10,16,128,128);
INSERT INTO "issues" VALUES (198,4,'Haftalık Ant Dergisi','129',1,1969,'6',17,16,129,129);
INSERT INTO "issues" VALUES (199,4,'Haftalık Ant Dergisi','130',1,1969,'6',24,16,130,130);
INSERT INTO "issues" VALUES (200,4,'Haftalık Ant Dergisi','131',1,1969,'7',1,16,131,131);
INSERT INTO "issues" VALUES (201,4,'Haftalık Ant Dergisi','132',1,1969,'7',8,16,132,132);
INSERT INTO "issues" VALUES (202,4,'Haftalık Ant Dergisi','133',1,1969,'7',15,16,133,133);
INSERT INTO "issues" VALUES (203,4,'Haftalık Ant Dergisi','134',1,1969,'7',22,16,134,134);
INSERT INTO "issues" VALUES (204,4,'Haftalık Ant Dergisi','135',1,1969,'7',29,16,135,135);
INSERT INTO "issues" VALUES (205,4,'Haftalık Ant Dergisi','136',1,1969,'8',5,16,136,136);
INSERT INTO "issues" VALUES (206,4,'Haftalık Ant Dergisi','137',1,1969,'8',12,16,137,137);
INSERT INTO "issues" VALUES (207,4,'Haftalık Ant Dergisi','138',1,1969,'8',19,16,138,138);
INSERT INTO "issues" VALUES (208,4,'Haftalık Ant Dergisi','139',1,1969,'8',26,16,139,139);
INSERT INTO "issues" VALUES (209,4,'Haftalık Ant Dergisi','140',1,1969,'9',2,16,140,140);
INSERT INTO "issues" VALUES (210,4,'Haftalık Ant Dergisi','141',1,1969,'9',9,16,141,141);
INSERT INTO "issues" VALUES (211,4,'Haftalık Ant Dergisi','142',1,1969,'9',16,16,142,142);
INSERT INTO "issues" VALUES (212,4,'Haftalık Ant Dergisi','143',1,1969,'9',23,16,143,143);
INSERT INTO "issues" VALUES (213,4,'Haftalık Ant Dergisi','144',1,1969,'9',30,16,144,144);
INSERT INTO "issues" VALUES (214,4,'Haftalık Ant Dergisi','145',1,1969,'10',7,16,145,145);
INSERT INTO "issues" VALUES (215,4,'Haftalık Ant Dergisi','146',1,1969,'10',14,16,146,146);
INSERT INTO "issues" VALUES (216,4,'Haftalık Ant Dergisi','147',1,1969,'10',21,16,147,147);
INSERT INTO "issues" VALUES (217,4,'Haftalık Ant Dergisi','148',1,1969,'10',28,16,148,148);
INSERT INTO "issues" VALUES (218,4,'Haftalık Ant Dergisi','149',1,1969,'11',4,16,149,149);
INSERT INTO "issues" VALUES (219,4,'Haftalık Ant Dergisi','150',1,1969,'11',11,16,150,150);
INSERT INTO "issues" VALUES (220,4,'Haftalık Ant Dergisi','151',1,1969,'11',18,16,151,151);
INSERT INTO "issues" VALUES (221,4,'Haftalık Ant Dergisi','152',1,1969,'11',25,16,152,152);
INSERT INTO "issues" VALUES (222,4,'Haftalık Ant Dergisi','153',1,1969,'12',2,16,153,153);
INSERT INTO "issues" VALUES (223,4,'Haftalık Ant Dergisi','154',1,1969,'12',9,16,154,154);
INSERT INTO "issues" VALUES (224,4,'Haftalık Ant Dergisi','155',1,1969,'12',16,16,155,155);
INSERT INTO "issues" VALUES (225,4,'Haftalık Ant Dergisi','156',1,1969,'12',23,16,156,156);
INSERT INTO "issues" VALUES (226,4,'Haftalık Ant Dergisi','157',1,1969,'12',30,16,157,157);
INSERT INTO "issues" VALUES (227,4,'Haftalık Ant Dergisi','158',1,1970,'1',6,16,158,158);
INSERT INTO "issues" VALUES (228,4,'Haftalık Ant Dergisi','159',1,1970,'1',13,16,159,159);
INSERT INTO "issues" VALUES (229,4,'Haftalık Ant Dergisi','160',1,1970,'1',20,16,160,160);
INSERT INTO "issues" VALUES (230,4,'Haftalık Ant Dergisi','161',1,1970,'2',27,16,161,161);
INSERT INTO "issues" VALUES (231,4,'Haftalık Ant Dergisi','162',1,1970,'2',3,16,162,162);
INSERT INTO "issues" VALUES (232,4,'Haftalık Ant Dergisi','163',1,1970,'2',10,16,163,163);
INSERT INTO "issues" VALUES (233,4,'Haftalık Ant Dergisi','164',1,1970,'2',17,16,164,164);
INSERT INTO "issues" VALUES (234,4,'Haftalık Ant Dergisi','165',1,1970,'2',24,16,165,165);
INSERT INTO "issues" VALUES (235,4,'Haftalık Ant Dergisi','166',1,1970,'3',3,16,166,166);
INSERT INTO "issues" VALUES (236,4,'Haftalık Ant Dergisi','167',1,1970,'3',10,16,167,167);
INSERT INTO "issues" VALUES (237,4,'Haftalık Ant Dergisi','168',1,1970,'3',17,16,168,168);
INSERT INTO "issues" VALUES (238,4,'Haftalık Ant Dergisi','169',1,1970,'3',24,16,169,169);
INSERT INTO "issues" VALUES (239,4,'Haftalık Ant Dergisi','170',1,1970,'3',31,16,170,170);
INSERT INTO "issues" VALUES (240,4,'Haftalık Ant Dergisi','171',1,1970,'4',7,16,171,171);
INSERT INTO "issues" VALUES (241,4,'Haftalık Ant Dergisi','172',1,1970,'4',14,16,172,172);
INSERT INTO "issues" VALUES (242,4,'Haftalık Ant Dergisi','173',1,1970,'4',21,16,173,173);
INSERT INTO "issues" VALUES (243,5,'Türk Solu','1',1,1967,'11',17,23,1,1);
INSERT INTO "issues" VALUES (244,5,'Türk Solu','2',1,1967,'11',24,23,2,2);
INSERT INTO "issues" VALUES (245,5,'Türk Solu','3',1,1967,'12',1,23,3,3);
INSERT INTO "issues" VALUES (246,5,'Türk Solu','4',1,1967,'12',8,23,4,4);
INSERT INTO "issues" VALUES (247,5,'Türk Solu','5',1,1967,'12',15,23,5,5);
INSERT INTO "issues" VALUES (248,5,'Türk Solu','6',1,1967,'12',22,23,6,6);
INSERT INTO "issues" VALUES (249,5,'Türk Solu','7',1,1967,'12',29,23,7,7);
INSERT INTO "issues" VALUES (250,5,'Türk Solu','8',1,1968,'1',9,24,8,8);
INSERT INTO "issues" VALUES (251,5,'Türk Solu','9',1,1968,'1',16,24,9,9);
INSERT INTO "issues" VALUES (252,5,'Türk Solu','10',1,1968,'1',23,24,10,10);
INSERT INTO "issues" VALUES (253,5,'Türk Solu','11',1,1968,'1',30,24,11,11);
INSERT INTO "issues" VALUES (254,5,'Türk Solu','12',1,1968,'2',6,24,12,12);
INSERT INTO "issues" VALUES (255,5,'Türk Solu','13',1,1968,'2',13,24,13,13);
INSERT INTO "issues" VALUES (256,5,'Türk Solu','14',1,1968,'2',20,24,14,14);
INSERT INTO "issues" VALUES (257,5,'Türk Solu','15',1,1968,'2',27,24,15,15);
INSERT INTO "issues" VALUES (258,5,'Türk Solu','16',1,1968,'3',5,24,16,16);
INSERT INTO "issues" VALUES (259,5,'Türk Solu','17',1,1968,'3',10,24,17,17);
INSERT INTO "issues" VALUES (260,5,'Türk Solu','18',1,1968,'3',19,24,18,18);
INSERT INTO "issues" VALUES (261,5,'Türk Solu','19',1,1968,'3',26,24,19,19);
INSERT INTO "issues" VALUES (262,5,'Türk Solu','20',1,1968,'4',2,24,20,20);
INSERT INTO "issues" VALUES (263,5,'Türk Solu','21',1,1968,'4',9,24,21,21);
INSERT INTO "issues" VALUES (264,5,'Türk Solu','22',1,1968,'4',16,24,22,22);
INSERT INTO "issues" VALUES (265,5,'Türk Solu','23',1,1968,'4',23,24,23,23);
INSERT INTO "issues" VALUES (266,5,'Türk Solu','24',1,1968,'4',29,24,24,24);
INSERT INTO "issues" VALUES (267,5,'Türk Solu','25',1,1968,'5',7,24,25,25);
INSERT INTO "issues" VALUES (268,5,'Türk Solu','26',1,1968,'5',14,24,26,26);
INSERT INTO "issues" VALUES (269,5,'Türk Solu','27',1,1968,'5',21,24,27,27);
INSERT INTO "issues" VALUES (270,5,'Türk Solu','28',1,1968,'5',28,24,28,28);
INSERT INTO "issues" VALUES (271,5,'Türk Solu','29',1,1968,'6',4,24,29,29);
INSERT INTO "issues" VALUES (272,5,'Türk Solu','30',1,1968,'6',11,24,30,30);
INSERT INTO "issues" VALUES (273,5,'Türk Solu','31',1,1968,'6',18,24,31,31);
INSERT INTO "issues" VALUES (274,5,'Türk Solu','32',1,1968,'6',25,24,32,32);
INSERT INTO "issues" VALUES (275,5,'Türk Solu','33',1,1968,'7',2,24,33,33);
INSERT INTO "issues" VALUES (276,5,'Türk Solu','34',1,1968,'7',9,24,34,34);
INSERT INTO "issues" VALUES (277,5,'Türk Solu','35',1,1968,'7',16,24,35,35);
INSERT INTO "issues" VALUES (278,5,'Türk Solu','36',1,1968,'7',23,24,36,36);
INSERT INTO "issues" VALUES (279,5,'Türk Solu','37',1,1968,'7',30,24,37,37);
INSERT INTO "issues" VALUES (280,5,'Türk Solu','38',1,1968,'8',6,24,38,38);
INSERT INTO "issues" VALUES (281,5,'Türk Solu','39',1,1968,'8',13,24,39,39);
INSERT INTO "issues" VALUES (282,5,'Türk Solu','40',1,1968,'8',20,24,40,40);
INSERT INTO "issues" VALUES (283,5,'Türk Solu','41',1,1968,'8',27,24,41,41);
INSERT INTO "issues" VALUES (284,5,'Türk Solu','42',1,1968,'9',3,24,42,42);
INSERT INTO "issues" VALUES (285,5,'Türk Solu','43',1,1968,'9',10,24,43,43);
INSERT INTO "issues" VALUES (286,5,'Türk Solu','44',1,1968,'9',17,24,44,44);
INSERT INTO "issues" VALUES (287,5,'Türk Solu','45',1,1968,'9',24,24,45,45);
INSERT INTO "issues" VALUES (288,5,'Türk Solu','46',1,1968,'10',1,24,46,46);
INSERT INTO "issues" VALUES (289,5,'Türk Solu','47',1,1968,'10',8,25,47,47);
INSERT INTO "issues" VALUES (290,5,'Türk Solu','48',1,1968,'10',15,25,48,48);
INSERT INTO "issues" VALUES (291,5,'Türk Solu','49',1,1968,'10',22,25,49,49);
INSERT INTO "issues" VALUES (292,5,'Türk Solu','50',1,1968,'10',29,25,50,50);
INSERT INTO "issues" VALUES (293,5,'Türk Solu','51',1,1968,'11',5,25,51,51);
INSERT INTO "issues" VALUES (294,5,'Türk Solu','52',1,1968,'11',NULL,25,52,52);
INSERT INTO "issues" VALUES (295,5,'Türk Solu','53',1,1968,'11',19,25,53,53);
INSERT INTO "issues" VALUES (296,5,'Türk Solu','54',1,1968,'11',26,25,54,54);
INSERT INTO "issues" VALUES (297,5,'Türk Solu','55',1,1968,'12',3,25,55,55);
INSERT INTO "issues" VALUES (298,5,'Türk Solu','56',1,1968,'12',10,25,56,56);
INSERT INTO "issues" VALUES (299,5,'Türk Solu','57',1,1968,'12',17,25,57,57);
INSERT INTO "issues" VALUES (300,5,'Türk Solu','58',1,1968,'12',26,25,58,58);
INSERT INTO "issues" VALUES (301,5,'Türk Solu','59',1,1968,'12',31,25,59,59);
INSERT INTO "issues" VALUES (302,5,'Türk Solu','60',1,1969,'1',7,5,60,60);
INSERT INTO "issues" VALUES (303,5,'Türk Solu','61',1,1969,'1',14,5,61,61);
INSERT INTO "issues" VALUES (304,5,'Türk Solu','62',1,1969,'1',21,5,62,62);
INSERT INTO "issues" VALUES (305,5,'Türk Solu','63',1,1969,'1',28,5,63,63);
INSERT INTO "issues" VALUES (306,5,'Türk Solu','64',1,1969,'2',4,5,64,64);
INSERT INTO "issues" VALUES (307,5,'Türk Solu','65',1,1969,'2',11,5,65,65);
INSERT INTO "issues" VALUES (308,5,'Türk Solu','66',1,1969,'2',18,5,66,66);
INSERT INTO "issues" VALUES (309,5,'Türk Solu','67',1,1969,'2',25,5,67,67);
INSERT INTO "issues" VALUES (310,5,'Türk Solu','68',1,1969,'3',4,5,68,68);
INSERT INTO "issues" VALUES (311,5,'Türk Solu','69',1,1969,'3',11,5,69,69);
INSERT INTO "issues" VALUES (312,5,'Türk Solu','70',1,1969,'3',18,5,70,70);
INSERT INTO "issues" VALUES (313,5,'Türk Solu','71',1,1969,'3',25,5,71,71);
INSERT INTO "issues" VALUES (314,5,'Türk Solu','72',1,1969,'4',1,5,72,72);
INSERT INTO "issues" VALUES (315,5,'Türk Solu','73',1,1969,'4',8,NULL,73,73);
INSERT INTO "issues" VALUES (316,5,'Türk Solu','74',1,1969,'4',15,2,74,74);
INSERT INTO "issues" VALUES (317,5,'Türk Solu','75',1,1969,'4',22,2,75,75);
INSERT INTO "issues" VALUES (318,5,'Türk Solu','76',1,1969,'4',29,2,76,76);
INSERT INTO "issues" VALUES (319,5,'Türk Solu','77',1,1969,'5',6,NULL,77,77);
INSERT INTO "issues" VALUES (320,5,'Türk Solu','78',1,1969,'5',13,NULL,78,78);
INSERT INTO "issues" VALUES (321,5,'Türk Solu','79',1,1969,'5',20,NULL,79,79);
INSERT INTO "issues" VALUES (322,5,'Türk Solu','80',1,1969,'5',27,NULL,80,80);
INSERT INTO "issues" VALUES (323,5,'Türk Solu','81',1,1969,'6',3,NULL,81,81);
INSERT INTO "issues" VALUES (324,5,'Türk Solu','82',1,1969,'6',10,NULL,82,82);
INSERT INTO "issues" VALUES (325,5,'Türk Solu','83',1,1969,'6',17,NULL,83,83);
INSERT INTO "issues" VALUES (326,5,'Türk Solu','84',1,1969,'6',24,NULL,84,84);
INSERT INTO "issues" VALUES (327,5,'Türk Solu','85',1,1969,'7',1,NULL,85,85);
INSERT INTO "issues" VALUES (328,5,'Türk Solu','86',1,1969,'7',8,NULL,86,86);
INSERT INTO "issues" VALUES (329,5,'Türk Solu','87',1,1969,'7',15,NULL,87,87);
INSERT INTO "issues" VALUES (330,5,'Türk Solu','88',1,1969,'7',22,NULL,88,88);
INSERT INTO "issues" VALUES (331,5,'Türk Solu','89',1,1969,'7',29,NULL,89,89);
INSERT INTO "issues" VALUES (332,5,'Türk Solu','90',1,1969,'8',5,NULL,90,90);
INSERT INTO "issues" VALUES (333,5,'Türk Solu','91',1,1969,'8',12,NULL,91,91);
INSERT INTO "issues" VALUES (334,5,'Türk Solu','92',1,1969,'8',19,NULL,92,92);
INSERT INTO "issues" VALUES (335,5,'Türk Solu','93',1,1969,'8',26,NULL,93,93);
INSERT INTO "issues" VALUES (336,5,'Türk Solu','94',1,1969,'9',2,NULL,94,94);
INSERT INTO "issues" VALUES (337,5,'Türk Solu','95',1,1969,'9',9,NULL,95,95);
INSERT INTO "issues" VALUES (338,5,'Türk Solu','96',1,1969,'9',16,NULL,96,96);
INSERT INTO "issues" VALUES (339,5,'Türk Solu','97',1,1969,'9',23,NULL,97,97);
INSERT INTO "issues" VALUES (340,5,'Türk Solu','98',1,1969,'9',30,NULL,98,98);
INSERT INTO "issues" VALUES (341,5,'Türk Solu','99',1,1969,'10',7,NULL,99,99);
INSERT INTO "issues" VALUES (342,5,'Türk Solu','100',1,1969,'10',14,NULL,100,100);
INSERT INTO "issues" VALUES (343,5,'Türk Solu','101',1,1969,'10',21,NULL,101,101);
INSERT INTO "issues" VALUES (344,5,'Türk Solu','102',1,1969,'10',28,NULL,102,102);
INSERT INTO "issues" VALUES (345,5,'Türk Solu','103',1,1969,'11',4,NULL,103,103);
INSERT INTO "issues" VALUES (346,5,'Türk Solu','104',1,1969,'11',11,NULL,104,104);
INSERT INTO "issues" VALUES (347,5,'Türk Solu','105',1,1969,'11',18,NULL,105,105);
INSERT INTO "issues" VALUES (348,5,'Türk Solu','106',1,1969,'11',25,NULL,106,106);
INSERT INTO "issues" VALUES (349,5,'Türk Solu','107',1,1969,'12',2,NULL,107,107);
INSERT INTO "issues" VALUES (350,5,'Türk Solu','108',1,1969,'12',9,NULL,108,108);
INSERT INTO "issues" VALUES (351,5,'Türk Solu','109',1,1969,'12',16,NULL,109,109);
INSERT INTO "issues" VALUES (352,5,'Türk Solu','110',1,1969,'12',23,NULL,110,110);
INSERT INTO "issues" VALUES (353,5,'Türk Solu','111',1,1969,'12',30,NULL,111,111);
INSERT INTO "issues" VALUES (354,5,'Türk Solu','112',1,1970,'1',6,NULL,112,112);
INSERT INTO "issues" VALUES (355,5,'Türk Solu','113',1,1970,'1',13,NULL,113,113);
INSERT INTO "issues" VALUES (356,5,'Türk Solu','114',1,1970,'1',20,NULL,114,114);
INSERT INTO "issues" VALUES (357,5,'Türk Solu','115',1,1970,'1',27,NULL,115,115);
INSERT INTO "issues" VALUES (358,5,'Türk Solu','116',1,1970,'2',3,NULL,116,116);
INSERT INTO "issues" VALUES (359,5,'Türk Solu','117',1,1970,'2',10,NULL,117,117);
INSERT INTO "issues" VALUES (360,5,'Türk Solu','118',1,1970,'2',17,NULL,118,118);
INSERT INTO "issues" VALUES (361,5,'Türk Solu','119',1,1970,'2',24,NULL,119,119);
INSERT INTO "issues" VALUES (362,5,'Türk Solu','120',1,1970,'3',3,NULL,120,120);
INSERT INTO "issues" VALUES (363,5,'Türk Solu','121',1,1970,'3',10,NULL,121,121);
INSERT INTO "issues" VALUES (364,5,'Türk Solu','122',1,1970,'3',17,NULL,122,122);
INSERT INTO "issues" VALUES (365,5,'Türk Solu','123',1,1970,'3',24,NULL,123,123);
INSERT INTO "issues" VALUES (366,5,'Türk Solu','124',1,1970,'3',31,NULL,124,124);
INSERT INTO "issues" VALUES (367,5,'Türk Solu','125',1,1970,'4',7,NULL,125,125);
INSERT INTO "issues" VALUES (368,5,'Türk Solu','126',1,1970,'4',14,NULL,126,126);
INSERT INTO "issues" VALUES (369,4,'Haftalık Ant Dergisi','0',2,1967,'1',3,18,0,0);
INSERT INTO "issues" VALUES (370,6,'Kurtuluş Yolu','1',1,1968,'12',1,1,1,1);
INSERT INTO "issues" VALUES (371,6,'Kurtuluş Yolu','2',1,1968,'12',15,1,2,2);
INSERT INTO "issues" VALUES (372,6,'Kurtuluş Yolu','3',1,1969,'1',1,1,3,3);
INSERT INTO "issues" VALUES (373,6,'Kurtuluş Yolu','4',1,1969,'1',17,1,4,4);
INSERT INTO "issues" VALUES (374,6,'Kurtuluş Yolu','5',1,1969,NULL,NULL,NULL,5,5);
INSERT INTO "issues" VALUES (375,6,'Kurtuluş Yolu','6',1,1969,'2',15,1,6,6);
INSERT INTO "issues" VALUES (376,6,'Kurtuluş Yolu','7',1,1969,'3',1,1,7,7);
INSERT INTO "issues" VALUES (377,6,'Kurtuluş Yolu','8',1,1970,'5',16,1,8,8);
INSERT INTO "issues" VALUES (378,6,'Kurtuluş Yolu','9',1,1970,'6',5,1,9,9);
INSERT INTO "issues" VALUES (379,6,'Kurtuluş Yolu','10',1,1970,NULL,NULL,NULL,10,10);
INSERT INTO "issues" VALUES (380,6,'Kurtuluş Yolu','11',1,1970,'8',6,NULL,11,11);
INSERT INTO "issues" VALUES (381,6,'Kurtuluş Yolu','12',1,1970,'8',31,2,12,12);
INSERT INTO "issues" VALUES (382,6,'Kurtuluş Yolu','13',1,1970,'9',25,2,13,13);
INSERT INTO "issues" VALUES (383,6,'Kurtuluş Yolu','14',1,1970,'10',15,2,14,14);
INSERT INTO "issues" VALUES (384,6,'Kurtuluş Yolu','15',1,1970,NULL,NULL,NULL,15,15);
INSERT INTO "issues" VALUES (385,6,'Kurtuluş Yolu','16',1,1970,'11',23,3,16,16);
INSERT INTO "issues" VALUES (386,6,'Kurtuluş Yolu','0',2,1970,'6',16,NULL,0,0);
INSERT INTO "issues" VALUES (387,7,'DİSK Gazetesi','1',1,1967,'4',19,16,1,1);
INSERT INTO "issues" VALUES (388,7,'DİSK Gazetesi','2',1,1967,'5',22,16,2,2);
INSERT INTO "issues" VALUES (389,7,'DİSK Gazetesi','3',1,1967,NULL,NULL,16,3,3);
INSERT INTO "issues" VALUES (390,7,'DİSK Gazetesi','4',1,1967,'12',12,16,4,4);
INSERT INTO "issues" VALUES (391,7,'DİSK Gazetesi','5',1,1968,'1',6,16,5,5);
INSERT INTO "issues" VALUES (393,8,'DİSK Gazetesi (2)','1',1,1970,'8',20,12,1,1);
INSERT INTO "issues" VALUES (394,8,'DİSK Gazetesi (2)','2',1,1970,'9',10,12,2,2);
INSERT INTO "issues" VALUES (395,8,'DİSK Gazetesi (2)','3',1,1970,'10',1,12,3,3);
INSERT INTO "issues" VALUES (396,8,'DİSK Gazetesi (2)','4',1,1970,'11',13,12,4,4);
INSERT INTO "issues" VALUES (397,9,'İleri','1',1,1968,NULL,NULL,21,1,1);
INSERT INTO "issues" VALUES (398,9,'İleri','2',1,1968,'12',10,21,2,2);
INSERT INTO "issues" VALUES (399,9,'İleri','3',1,1969,'1','',21,3,3);
INSERT INTO "issues" VALUES (400,9,'İleri','4',1,1969,'3',11,21,4,4);
INSERT INTO "issues" VALUES (401,9,'İleri','5',1,1969,'5',23,21,5,5);
INSERT INTO "issues" VALUES (402,9,'İleri','6',1,1969,'6',16,22,6,6);
INSERT INTO "issues" VALUES (403,10,NULL,'2',1,1967,'1',18,NULL,2,2);
INSERT INTO "issues" VALUES (404,10,NULL,'3',1,1967,'1',25,NULL,3,3);
INSERT INTO "issues" VALUES (405,10,NULL,'4',1,1967,'4',15,26,4,4);
INSERT INTO "issues" VALUES (406,10,NULL,'6',1,1967,'5',16,26,6,6);
INSERT INTO "issues" VALUES (407,10,NULL,'5',1,1967,NULL,NULL,NULL,5,5);
INSERT INTO "issues" VALUES (408,10,NULL,'1',1,1967,NULL,NULL,NULL,1,1);
INSERT INTO "issues" VALUES (409,10,NULL,'0',2,1967,NULL,NULL,26,0,0);
INSERT INTO "issues" VALUES (410,11,NULL,'1',1,1967,'11',15,NULL,1,1);
INSERT INTO "issues" VALUES (411,11,NULL,'2',1,1967,'12',15,NULL,2,2);
INSERT INTO "issues" VALUES (412,11,NULL,'3',1,1968,'1',15,NULL,3,3);
INSERT INTO "issues" VALUES (413,11,NULL,'4',1,1968,'2',15,NULL,4,4);
INSERT INTO "issues" VALUES (414,11,NULL,'5',1,1968,'3',15,NULL,5,5);
INSERT INTO "issues" VALUES (415,11,NULL,'6',1,1968,'4',15,NULL,6,6);
INSERT INTO "issues" VALUES (416,11,NULL,'7',1,1968,'5',15,NULL,7,7);
INSERT INTO "issues" VALUES (417,11,NULL,'8',1,1968,NULL,NULL,NULL,8,8);
INSERT INTO "issues" VALUES (418,11,NULL,'9',1,1969,'5',10,NULL,9,9);
INSERT INTO "issues" VALUES (419,11,NULL,'10',1,1969,'6',15,NULL,10,10);
INSERT INTO "issues" VALUES (420,11,NULL,'11',1,1969,'7',20,NULL,11,11);
INSERT INTO "issues" VALUES (421,11,NULL,'12',1,1969,NULL,NULL,NULL,12,12);
INSERT INTO "issues" VALUES (422,11,NULL,'13',1,1969,'10',9,NULL,13,13);
INSERT INTO "issues" VALUES (423,12,NULL,'1',1,1967,'9','',NULL,1,1);
INSERT INTO "issues" VALUES (424,12,NULL,'2',1,1967,'10','',NULL,2,2);
INSERT INTO "issues" VALUES (425,12,NULL,'3',1,1967,'11','',NULL,3,3);
INSERT INTO "issues" VALUES (426,12,NULL,'4',1,1967,'12','',NULL,4,4);
INSERT INTO "issues" VALUES (427,12,NULL,'5',1,1968,'1','',NULL,5,5);
INSERT INTO "issues" VALUES (428,12,NULL,'6',1,1968,'2-3','',NULL,6,6);
INSERT INTO "issues" VALUES (429,12,NULL,'7',1,1968,'4','',NULL,7,7);
INSERT INTO "issues" VALUES (430,12,NULL,'8',1,1968,'5','',NULL,8,8);
INSERT INTO "issues" VALUES (431,12,NULL,'9',1,1968,'6-7','',NULL,9,9);
INSERT INTO "issues" VALUES (432,13,NULL,'1',1,1968,'','',NULL,1,1);
INSERT INTO "issues" VALUES (433,13,NULL,'2',1,1968,NULL,NULL,NULL,2,2);
INSERT INTO "issues" VALUES (434,13,NULL,'3',1,1968,NULL,NULL,NULL,3,3);
INSERT INTO "issues" VALUES (435,13,NULL,'4',1,1968,'2',1,NULL,4,4);
INSERT INTO "issues" VALUES (436,13,NULL,'5',1,1968,'2',15,17,5,5);
INSERT INTO "issues" VALUES (437,16,NULL,'1',1,1969,'9',25,15,1,1);
INSERT INTO "issues" VALUES (438,16,NULL,'2',1,1969,'10',10,15,2,2);
INSERT INTO "issues" VALUES (439,16,NULL,'3',1,1969,'11',8,15,3,3);
INSERT INTO "issues" VALUES (440,16,NULL,'4',1,1969,'11',27,15,4,4);
INSERT INTO "issues" VALUES (441,16,NULL,'5',1,1969,'12',26,15,5,5);
INSERT INTO "issues" VALUES (442,17,NULL,'1',1,1967,'11',19,NULL,1,1);
INSERT INTO "issues" VALUES (443,17,NULL,'2',1,1967,'12',1,NULL,2,2);
INSERT INTO "issues" VALUES (444,17,NULL,'3',1,1967,'12',16,NULL,3,3);
INSERT INTO "issues" VALUES (445,17,NULL,'4',1,1968,'1',1,NULL,4,4);
INSERT INTO "issues" VALUES (446,17,NULL,'5',1,1968,'1',1,NULL,5,5);
INSERT INTO "issues" VALUES (447,17,NULL,'6',1,1968,'2',1,NULL,6,6);
INSERT INTO "issues" VALUES (448,17,NULL,'7',1,1968,'2',16,NULL,7,7);
INSERT INTO "issues" VALUES (449,17,NULL,'8',1,1968,'2',23,NULL,8,8);
INSERT INTO "issues" VALUES (450,17,NULL,'9',1,1968,'2',23,NULL,9,9);
INSERT INTO "issues" VALUES (451,17,NULL,'10',1,1968,'3',9,NULL,10,10);
INSERT INTO "issues" VALUES (452,17,NULL,'11',1,1968,'4',1,NULL,11,11);
INSERT INTO "issues" VALUES (453,17,NULL,'12',1,1968,'4',16,NULL,12,12);
INSERT INTO "issues" VALUES (454,17,NULL,'13',1,1968,'5',3,NULL,13,13);
INSERT INTO "issues" VALUES (455,17,NULL,'14',1,1968,'5',16,NULL,14,14);
INSERT INTO "issues" VALUES (456,17,NULL,'15',1,1968,'6',2,NULL,15,15);
INSERT INTO "issues" VALUES (457,17,NULL,'16',1,1968,'7',1,NULL,16,16);
INSERT INTO "issues" VALUES (458,17,NULL,'17',1,1968,'7',16,NULL,17,17);
INSERT INTO "issues" VALUES (459,17,NULL,'18',1,1968,'8',1,NULL,18,18);
INSERT INTO "issues" VALUES (460,17,NULL,'19',1,1968,'8',15,NULL,19,19);
INSERT INTO "issues" VALUES (461,17,NULL,'20',1,1968,'9',1,NULL,20,20);
INSERT INTO "issues" VALUES (462,17,NULL,'10',2,1968,'3',9,NULL,10,10);
INSERT INTO "issues" VALUES (463,17,NULL,'21-22',1,1968,'10',6,NULL,21,22);
INSERT INTO "issues" VALUES (464,17,NULL,'23-24',1,1968,'12',16,NULL,23,24);
INSERT INTO "issues" VALUES (465,17,NULL,'25',1,1969,'1',1,NULL,25,25);
INSERT INTO "issues" VALUES (466,17,NULL,'26',1,1969,'1',16,NULL,26,26);
INSERT INTO "issues" VALUES (467,17,NULL,'27-28',1,1969,'4',10,NULL,27,28);
INSERT INTO "issues" VALUES (468,17,NULL,'29-30',1,1969,'4',25,NULL,29,30);
INSERT INTO "issues" VALUES (469,17,NULL,'31-32',1,1969,'5',22,NULL,31,32);
INSERT INTO "issues" VALUES (470,17,NULL,'33-34',1,1969,'6',26,NULL,33,34);
INSERT INTO "issues" VALUES (471,17,NULL,'35-36',1,1969,'8',21,NULL,35,36);
INSERT INTO "issues" VALUES (472,17,NULL,'37-38',1,1969,'7',21,NULL,37,38);
INSERT INTO "issues" VALUES (473,17,NULL,'39-40',1,1969,'11',14,NULL,39,40);
INSERT INTO "issues" VALUES (474,19,NULL,'1',1,1968,'7',1,NULL,1,1);
INSERT INTO "issues" VALUES (475,19,NULL,'2',1,1968,'7',NULL,NULL,2,2);
INSERT INTO "issues" VALUES (476,19,NULL,'3',1,1968,'8',1,NULL,3,3);
INSERT INTO "issues" VALUES (477,19,NULL,'4',1,1968,'8',15,4,4,4);
INSERT INTO "issues" VALUES (478,19,NULL,'5',1,1968,'9',NULL,NULL,5,5);
INSERT INTO "issues" VALUES (479,19,NULL,'6',1,1968,'10',7,5,6,6);
INSERT INTO "issues" VALUES (480,19,NULL,'7',1,1968,'10',15,5,7,7);
INSERT INTO "issues" VALUES (481,19,NULL,'8',1,1968,'11',15,5,8,8);
INSERT INTO "issues" VALUES (482,19,NULL,'9',1,1969,NULL,NULL,NULL,9,9);
INSERT INTO "issues" VALUES (483,19,NULL,'10',1,1969,NULL,NULL,NULL,10,10);
INSERT INTO "issues" VALUES (484,19,NULL,'11',1,1969,NULL,NULL,NULL,11,11);
INSERT INTO "issues" VALUES (485,19,NULL,'12',1,1969,NULL,NULL,NULL,12,12);
INSERT INTO "issues" VALUES (486,19,NULL,'13',1,1969,NULL,NULL,NULL,13,13);
INSERT INTO "issues" VALUES (487,19,NULL,'14',1,1969,'6',1,6,14,14);
INSERT INTO "issues" VALUES (488,19,NULL,'15',1,1969,'7',1,6,15,15);
INSERT INTO "issues" VALUES (489,19,NULL,'16',1,1969,'7',15,6,16,16);
INSERT INTO "issues" VALUES (490,19,NULL,'17',1,1969,'8',1,6,17,17);
INSERT INTO "issues" VALUES (491,19,NULL,'18',1,1969,'8',15,6,18,18);
INSERT INTO "issues" VALUES (492,19,NULL,'19',1,1969,'9',1,6,19,19);
INSERT INTO "issues" VALUES (493,19,NULL,'20',1,1969,'9',15,6,20,20);
INSERT INTO "issues" VALUES (494,19,NULL,'21',1,1969,'10',1,NULL,21,21);
INSERT INTO "issues" VALUES (495,19,NULL,'22',1,1969,'10',15,NULL,22,22);
INSERT INTO "issues" VALUES (496,19,NULL,'23',1,1969,'11',1,NULL,23,23);
INSERT INTO "issues" VALUES (497,19,NULL,'24',1,1969,'11',15,NULL,24,24);
INSERT INTO "issues" VALUES (498,19,NULL,'25',1,1969,'12',1,NULL,25,25);
INSERT INTO "issues" VALUES (499,19,NULL,'26',1,1969,'12',15,NULL,26,26);
INSERT INTO "issues" VALUES (500,19,NULL,'27',1,1970,'1',15,NULL,27,27);
INSERT INTO "issues" VALUES (501,19,NULL,'28',1,1970,'2',1,NULL,28,28);
INSERT INTO "issues" VALUES (502,19,NULL,'29',1,1970,'3',5,NULL,29,29);
INSERT INTO "issues" VALUES (503,19,NULL,'30',1,1970,'3',15,NULL,30,30);
INSERT INTO "issues" VALUES (504,19,NULL,'31',1,1970,'4',1,NULL,31,31);
INSERT INTO "issues" VALUES (505,19,NULL,'32',1,1970,'4',15,NULL,32,32);
INSERT INTO "issues" VALUES (506,19,NULL,'33',1,1970,'5',1,NULL,33,33);
INSERT INTO "issues" VALUES (507,19,NULL,'34',1,1970,'5',15,NULL,34,34);
INSERT INTO "issues" VALUES (508,19,NULL,'35',1,1970,'6',1,NULL,35,35);
INSERT INTO "issues" VALUES (509,19,NULL,'36',1,1970,'6',15,NULL,36,36);
INSERT INTO "issues" VALUES (510,19,NULL,'37',1,1970,'7',1,NULL,37,37);
INSERT INTO "issues" VALUES (511,19,NULL,'38',1,1970,'7',15,NULL,38,38);
INSERT INTO "issues" VALUES (512,19,NULL,'39',1,1970,'8',1,NULL,39,39);
INSERT INTO "issues" VALUES (513,19,NULL,'40',1,1970,'8',15,NULL,40,40);
INSERT INTO "issues" VALUES (514,19,NULL,'41',1,1970,'9',1,NULL,41,41);
INSERT INTO "issues" VALUES (515,19,NULL,'42',1,1970,'9',15,NULL,42,42);
INSERT INTO "issues" VALUES (516,19,NULL,'43',1,1970,'10',1,NULL,43,43);
INSERT INTO "issues" VALUES (517,19,NULL,'44',1,1970,'10',15,NULL,44,44);
INSERT INTO "issues" VALUES (518,19,NULL,'45',1,1970,'11',1,NULL,45,45);
INSERT INTO "issues" VALUES (519,19,NULL,'46',1,1970,'11',15,NULL,46,46);
INSERT INTO "issues" VALUES (520,19,NULL,'47',1,1970,'12',1,NULL,47,47);
INSERT INTO "issues" VALUES (521,19,NULL,'48',1,1970,'12',15,NULL,48,48);
INSERT INTO "issues" VALUES (522,19,NULL,'49',1,1971,'1',1,NULL,49,49);
INSERT INTO "issues" VALUES (523,19,NULL,'50',1,1971,'1',15,NULL,50,50);
INSERT INTO "issues" VALUES (524,19,NULL,'51',1,1971,'2',1,NULL,51,51);
INSERT INTO "issues" VALUES (525,19,NULL,'52',1,1971,'2',15,NULL,52,52);
INSERT INTO "issues" VALUES (526,19,NULL,'53',1,1971,'3',1,NULL,53,53);
INSERT INTO "issues" VALUES (527,19,NULL,'54',1,1971,'3',15,NULL,54,54);
INSERT INTO "issues" VALUES (528,19,NULL,'55',1,1971,'4',1,NULL,55,55);
INSERT INTO "issues" VALUES (529,19,NULL,'56',1,1971,'11',15,NULL,56,56);
INSERT INTO "issues" VALUES (530,19,NULL,'57',1,1971,'12',NULL,NULL,57,57);
INSERT INTO "issues" VALUES (531,14,NULL,'1',1,1967,'1',20,NULL,1,1);
INSERT INTO "issues" VALUES (532,14,NULL,'2',1,1967,'2',7,NULL,2,2);
INSERT INTO "issues" VALUES (533,14,NULL,'3',1,1967,'3',4,NULL,3,3);
INSERT INTO "issues" VALUES (534,14,NULL,'4',1,1967,'4',12,NULL,4,4);
INSERT INTO "issues" VALUES (535,14,NULL,'5',1,1967,'5',30,NULL,5,5);
INSERT INTO "issues" VALUES (536,14,NULL,'6',1,1967,'6',20,NULL,6,6);
INSERT INTO "issues" VALUES (537,14,NULL,'7',1,1967,'7',12,NULL,7,7);
INSERT INTO "issues" VALUES (538,14,NULL,'1',1,1970,'12',8,NULL,1,1);
INSERT INTO "issues" VALUES (539,14,NULL,'2',1,1971,'12',15,NULL,2,2);
INSERT INTO "issues" VALUES (540,14,NULL,'3',1,1971,'12',22,NULL,3,3);
INSERT INTO "issues" VALUES (541,14,NULL,'4',1,1971,'12',29,NULL,4,4);
INSERT INTO "issues" VALUES (542,14,NULL,'12',1,1971,NULL,NULL,NULL,12,12);
INSERT INTO "issues" VALUES (543,14,NULL,'6',1,1971,'1',12,NULL,6,6);
INSERT INTO "issues" VALUES (544,14,NULL,'7',1,1971,'1',26,NULL,7,7);
INSERT INTO "issues" VALUES (545,14,NULL,'8',1,1971,NULL,NULL,NULL,8,8);
INSERT INTO "issues" VALUES (546,14,NULL,'9-16',1,1971,'2',16,NULL,9,16);
INSERT INTO "issues" VALUES (547,14,NULL,'10-17',1,1971,'2',23,NULL,10,17);
INSERT INTO "issues" VALUES (548,14,NULL,'18',1,1971,'3',2,NULL,18,18);
INSERT INTO "issues" VALUES (549,14,NULL,'19',1,1971,'3',9,NULL,19,19);
INSERT INTO "issues" VALUES (550,14,NULL,'20',1,1971,'3',16,NULL,20,20);
INSERT INTO "issues" VALUES (551,14,NULL,'21',1,1971,'3',23,NULL,21,21);
INSERT INTO "issues" VALUES (552,14,NULL,'22',1,1971,'3',30,NULL,22,22);
INSERT INTO "issues" VALUES (553,14,NULL,'23',1,1971,'4',6,NULL,23,23);
INSERT INTO "issues" VALUES (554,14,NULL,'24',1,1971,'4',13,NULL,24,24);
INSERT INTO "issues" VALUES (555,14,NULL,'25',1,1971,'4',20,NULL,25,25);
INSERT INTO "issues" VALUES (556,14,NULL,'26',1,1971,'4',27,NULL,26,26);
INSERT INTO "issues" VALUES (557,15,NULL,'1',1,1967,'10',4,NULL,1,1);
INSERT INTO "issues" VALUES (558,15,NULL,'2',1,1967,'10',16,NULL,2,2);
INSERT INTO "issues" VALUES (559,15,NULL,'3',1,1967,'11',7,NULL,3,3);
INSERT INTO "issues" VALUES (560,15,NULL,'4',1,1967,'11',24,NULL,4,4);
INSERT INTO "issues" VALUES (561,15,NULL,'5',1,1967,'12',NULL,NULL,5,5);
INSERT INTO "issues" VALUES (562,15,NULL,'6',1,1967,'12',28,NULL,6,6);
INSERT INTO "issues" VALUES (563,15,NULL,'7',1,1968,'1',17,NULL,7,7);
INSERT INTO "issues" VALUES (564,15,NULL,'8',1,1968,'2',1,NULL,8,8);
INSERT INTO "issues" VALUES (565,15,NULL,'9',1,1968,'2',21,NULL,9,9);
INSERT INTO "issues" VALUES (566,15,NULL,'10',1,1968,'3',7,NULL,10,10);
INSERT INTO "issues" VALUES (567,15,NULL,'11',1,1968,'5',14,NULL,11,11);
INSERT INTO "issues" VALUES (568,15,NULL,'12',1,1968,'5',30,NULL,12,12);
INSERT INTO "issues" VALUES (569,15,NULL,'13',1,1968,'7',26,NULL,13,13);
INSERT INTO "issues" VALUES (570,15,NULL,'14',1,1968,'8',26,NULL,14,14);
INSERT INTO "issues" VALUES (571,15,NULL,'15',1,1968,'10',26,NULL,15,15);
INSERT INTO "issues" VALUES (572,15,NULL,'16',1,1968,'12',10,NULL,16,16);
INSERT INTO "issues" VALUES (573,15,NULL,'17',1,1968,'12',25,NULL,17,17);
INSERT INTO "issues" VALUES (574,15,NULL,'18',1,1969,'2',6,NULL,18,18);
INSERT INTO "issues" VALUES (575,15,NULL,'19',1,1969,'3',8,NULL,19,19);
INSERT INTO "issues" VALUES (576,15,NULL,'20',1,1969,'5','',NULL,20,20);
INSERT INTO "issues" VALUES (577,15,NULL,'21',1,1969,'6','',NULL,21,21);
INSERT INTO "issues" VALUES (578,15,NULL,'22',1,1969,'8',26,NULL,22,22);
INSERT INTO "issues" VALUES (579,15,NULL,'23',1,1969,'9',25,NULL,23,23);
INSERT INTO "issues" VALUES (580,15,NULL,'24',1,1969,'11',22,NULL,24,24);
INSERT INTO "issues" VALUES (581,15,NULL,'25',1,1970,'1',19,NULL,25,25);
INSERT INTO "issues" VALUES (582,15,NULL,'26',1,1970,'3',20,NULL,26,26);
INSERT INTO "issues" VALUES (583,15,NULL,'27',1,1970,'6',8,NULL,27,27);
INSERT INTO "issues" VALUES (584,15,NULL,'28',1,1970,'8',14,NULL,28,28);
INSERT INTO "issues" VALUES (585,15,NULL,'29',2,1970,'9',10,NULL,29,29);
INSERT INTO "issues" VALUES (586,15,NULL,'30',2,1970,'10',28,NULL,30,30);
INSERT INTO "issues" VALUES (587,15,NULL,'31',1,1971,'1',23,NULL,31,31);
INSERT INTO "issues" VALUES (588,15,NULL,'32',1,1971,'2',27,NULL,32,32);
INSERT INTO "issues" VALUES (589,15,NULL,'33',1,1971,'4',23,NULL,33,33);
INSERT INTO "issues" VALUES (590,15,NULL,'0',2,1968,'12',25,NULL,0,0);
INSERT INTO "issues" VALUES (591,18,NULL,'1',1,NULL,NULL,NULL,NULL,1,1);
INSERT INTO "issues" VALUES (592,18,NULL,'2',1,NULL,NULL,NULL,NULL,2,2);
INSERT INTO "issues" VALUES (593,18,NULL,'3',1,1967,'6',17,NULL,3,3);
INSERT INTO "issues" VALUES (594,18,NULL,'4',1,1967,'7',5,NULL,4,4);
INSERT INTO "issues" VALUES (595,18,NULL,'5',1,NULL,NULL,NULL,NULL,5,5);
INSERT INTO "issues" VALUES (596,18,NULL,'6',1,NULL,NULL,NULL,NULL,6,6);
INSERT INTO "issues" VALUES (597,18,NULL,'7',1,NULL,NULL,NULL,NULL,7,7);
INSERT INTO "issues" VALUES (598,18,NULL,'8',1,1967,'9',18,NULL,8,8);
INSERT INTO "issues" VALUES (599,18,NULL,'9',1,1967,'10',10,NULL,9,9);
INSERT INTO "issues" VALUES (600,18,NULL,'10',1,NULL,NULL,NULL,NULL,10,10);
INSERT INTO "issues" VALUES (601,18,NULL,'11',1,NULL,NULL,NULL,NULL,11,11);
INSERT INTO "issues" VALUES (602,18,NULL,'12',1,1967,'12',5,NULL,12,12);
INSERT INTO "issues" VALUES (603,18,NULL,'13',1,1967,'12',30,NULL,13,13);
INSERT INTO "issues" VALUES (604,18,NULL,'14',1,NULL,NULL,NULL,NULL,14,14);
INSERT INTO "issues" VALUES (605,18,NULL,'15',1,1968,'2',15,NULL,15,15);
INSERT INTO "issues" VALUES (606,18,NULL,'16',1,1968,'3',15,NULL,16,16);
INSERT INTO "issues" VALUES (607,18,NULL,'17',1,1968,'4',1,NULL,17,17);
INSERT INTO "issues" VALUES (608,18,NULL,'18',1,1968,'4',16,NULL,18,18);
INSERT INTO "issues" VALUES (609,18,NULL,'19',1,1968,'5',4,NULL,19,19);
INSERT INTO "issues" VALUES (610,18,NULL,'20',1,1968,'5',30,NULL,20,20);
INSERT INTO "issues" VALUES (611,18,NULL,'21',1,1968,'6',22,NULL,21,21);
INSERT INTO "issues" VALUES (612,20,NULL,'1',1,1968,'12',25,19,1,1);
INSERT INTO "issues" VALUES (613,20,NULL,'2',1,1969,'1',15,19,2,2);
INSERT INTO "issues" VALUES (614,20,NULL,'3',1,NULL,NULL,NULL,NULL,3,3);
INSERT INTO "issues" VALUES (615,20,NULL,'4',1,NULL,NULL,NULL,NULL,4,4);
INSERT INTO "issues" VALUES (616,20,NULL,'5',1,NULL,NULL,NULL,NULL,5,5);
INSERT INTO "issues" VALUES (617,20,NULL,'6',1,1969,'4',1,19,6,6);
INSERT INTO "issues" VALUES (618,20,NULL,'7',1,1969,'4',15,20,7,7);
INSERT INTO "issues" VALUES (619,20,NULL,'8',1,1969,'5',1,20,8,8);
INSERT INTO "issues" VALUES (620,21,NULL,'1',1,NULL,NULL,NULL,NULL,1,1);
INSERT INTO "issues" VALUES (621,21,NULL,'2',1,NULL,NULL,NULL,NULL,2,2);
INSERT INTO "issues" VALUES (622,21,NULL,'3',1,NULL,NULL,NULL,NULL,3,3);
INSERT INTO "issues" VALUES (623,21,NULL,'4',1,1969,'12',4,NULL,4,4);
INSERT INTO "issues" VALUES (624,22,NULL,'1',1,1968,'11',4,21,1,1);
INSERT INTO "issues" VALUES (625,22,NULL,'2',1,1968,'11',11,21,2,2);
INSERT INTO "issues" VALUES (626,32,NULL,'1',1,NULL,NULL,NULL,NULL,1,1);
INSERT INTO "issues" VALUES (627,32,NULL,'2',1,NULL,NULL,NULL,NULL,2,2);
INSERT INTO "issues" VALUES (628,32,NULL,'3',1,NULL,NULL,NULL,NULL,3,3);
INSERT INTO "issues" VALUES (629,32,NULL,'4',1,NULL,NULL,NULL,NULL,4,4);
INSERT INTO "issues" VALUES (630,32,NULL,'5',1,NULL,NULL,NULL,NULL,5,5);
INSERT INTO "issues" VALUES (631,32,NULL,'6',1,NULL,NULL,NULL,NULL,6,6);
INSERT INTO "issues" VALUES (632,32,NULL,'7',1,NULL,NULL,NULL,NULL,7,7);
INSERT INTO "issues" VALUES (633,32,NULL,'8',1,NULL,NULL,NULL,NULL,8,8);
INSERT INTO "issues" VALUES (634,32,NULL,'9',1,NULL,NULL,NULL,NULL,9,9);
INSERT INTO "issues" VALUES (635,32,NULL,'10',1,NULL,NULL,NULL,NULL,10,10);
INSERT INTO "issues" VALUES (636,32,NULL,'11',1,NULL,NULL,NULL,NULL,11,11);
INSERT INTO "issues" VALUES (637,32,NULL,'12',1,NULL,NULL,NULL,NULL,12,12);
INSERT INTO "issues" VALUES (638,32,NULL,'13',1,NULL,NULL,NULL,NULL,13,13);
INSERT INTO "issues" VALUES (639,32,NULL,'14',1,NULL,NULL,NULL,NULL,14,14);
INSERT INTO "issues" VALUES (640,32,NULL,'15',1,1970,NULL,NULL,NULL,15,15);
INSERT INTO "issues" VALUES (641,32,NULL,'15',2,1970,NULL,NULL,NULL,15,15);
INSERT INTO "issues" VALUES (642,23,NULL,'1',1,1968,'12',11,NULL,1,1);
INSERT INTO "issues" VALUES (643,23,NULL,'2',1,1968,'12',18,NULL,2,2);
INSERT INTO "issues" VALUES (644,23,NULL,'3',1,1968,'12',25,NULL,3,3);
INSERT INTO "issues" VALUES (645,23,NULL,'4',1,1969,'1',1,NULL,4,4);
INSERT INTO "issues" VALUES (646,24,NULL,'Not specified',1,1968,'5',26,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (647,26,NULL,'1',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (648,26,NULL,'2',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (649,26,NULL,'3',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (650,26,NULL,'4',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (651,26,NULL,'5',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (652,26,NULL,'6',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (653,26,NULL,'7',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (654,26,NULL,'8',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (655,26,NULL,'9',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (656,26,NULL,'10',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (657,26,NULL,'11',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (658,26,NULL,'12',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (659,26,NULL,'13',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (660,26,NULL,'14',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (661,26,NULL,'15',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (662,26,NULL,'16',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (663,26,NULL,'17',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (664,26,NULL,'18',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (665,26,NULL,'19',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (666,26,NULL,'20',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (667,26,NULL,'21',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (668,26,NULL,'22',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (669,26,NULL,'23',1,1969,'12',15,'',1,1);
INSERT INTO "issues" VALUES (670,26,NULL,'24',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (671,26,NULL,'25',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (672,26,NULL,'26',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (673,26,NULL,'27',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (674,26,NULL,'28',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (675,26,NULL,'29',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (676,26,NULL,'30',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (677,26,NULL,'31',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (678,26,NULL,'32',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (679,26,NULL,'33',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (680,26,NULL,'34',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (681,26,NULL,'35',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (682,26,NULL,'36',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (683,26,NULL,'37',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (684,26,NULL,'38',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (685,26,NULL,'39',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (686,26,NULL,'40',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (687,26,NULL,'41',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (688,26,NULL,'42',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (689,26,NULL,'43',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (690,26,NULL,'44',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (691,26,NULL,'45',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (692,26,NULL,'46',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (693,26,NULL,'47',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (694,26,NULL,'48',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (695,26,NULL,'49',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (696,26,NULL,'50',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (697,26,NULL,'51',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (698,26,NULL,'52',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (699,26,NULL,'53',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (700,26,NULL,'54',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (701,26,NULL,'55',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (702,26,NULL,'56',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (703,26,NULL,'57',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (704,26,NULL,'58',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (705,26,NULL,'59',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (706,26,NULL,'60',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (707,26,NULL,'61',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (708,26,NULL,'62',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (709,26,NULL,'63',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (710,26,NULL,'64',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (711,26,NULL,'65',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (712,26,NULL,'66',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (713,26,NULL,'67',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (714,26,NULL,'68',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (715,26,NULL,'69',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (716,26,NULL,'70',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (717,26,NULL,'71',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (718,26,NULL,'72',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (719,26,NULL,'73',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (720,26,NULL,'74',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (721,26,NULL,'75',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (722,26,NULL,'76',1,1972,'3',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (723,26,NULL,'77',1,1972,'3',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (724,26,NULL,'0',2,1973,'10',20,'',NULL,NULL);
INSERT INTO "issues" VALUES (725,26,NULL,'78',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (726,26,NULL,'79',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (727,26,NULL,'80',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (728,26,NULL,'81',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (729,26,NULL,'82',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (730,26,NULL,'83',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (731,26,NULL,'84',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (732,26,NULL,'85',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (733,26,NULL,'86',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (734,26,NULL,'87',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (735,26,NULL,'88',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (736,26,NULL,'89',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (737,26,NULL,'90',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (738,26,NULL,'91',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (739,26,NULL,'92',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (740,26,NULL,'93',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (741,26,NULL,'94',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (742,26,NULL,'95',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (743,26,NULL,'96',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (744,26,NULL,'97',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (745,26,NULL,'98',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (746,26,NULL,'99',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (747,26,NULL,'100',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (748,26,NULL,'101',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (749,26,NULL,'102',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (750,26,NULL,'103',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (751,26,NULL,'104',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (752,26,NULL,'105',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (753,26,NULL,'106',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (754,26,NULL,'107',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (755,26,NULL,'108',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (756,26,NULL,'109',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (757,26,NULL,'110',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (758,26,NULL,'111',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (759,26,NULL,'112',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (760,26,NULL,'113',1,1974,'1',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (761,26,NULL,'114',1,1974,'2',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (762,26,NULL,'115',1,1974,'2',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (763,26,NULL,'116',1,1974,'3',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (764,26,NULL,'117',1,1974,'3',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (765,26,NULL,'118',1,1974,'4',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (766,26,NULL,'119',1,1974,'4',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (767,26,NULL,'120',1,1974,'5',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (768,26,NULL,'121',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (769,26,NULL,'122',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (770,26,NULL,'123',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (771,26,NULL,'124',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (772,26,NULL,'125',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (773,26,NULL,'126',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (774,26,NULL,'127',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (775,26,NULL,'128',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (776,26,NULL,'129',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (777,26,NULL,'130',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (778,26,NULL,'131',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (779,26,NULL,'132',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (780,26,NULL,'133',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (781,26,NULL,'134',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (782,26,NULL,'135',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (783,26,NULL,'136',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (784,26,NULL,'137',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (785,26,NULL,'138',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (786,26,NULL,'139',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (787,26,NULL,'140',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (788,26,NULL,'141',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (789,26,NULL,'142',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (790,26,NULL,'143',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (791,26,NULL,'144',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (792,26,NULL,'145',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (793,26,NULL,'146',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (794,26,NULL,'147',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (795,26,NULL,'148',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (796,26,NULL,'149',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (797,26,NULL,'150',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (798,26,NULL,'151',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (799,26,NULL,'152',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (800,26,NULL,'153',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (801,26,NULL,'154',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (802,26,NULL,'155',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (803,26,NULL,'156',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (804,26,NULL,'157',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (805,26,NULL,'158',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (806,26,NULL,'159',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (807,26,NULL,'160',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (808,26,NULL,'161',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (809,26,NULL,'162',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (810,26,NULL,'163',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (811,26,NULL,'164',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (812,26,NULL,'165',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (813,26,NULL,'166',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (814,26,NULL,'167',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (815,26,NULL,'168',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (816,26,NULL,'169',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (817,26,NULL,'170',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (818,26,NULL,'171',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (819,26,NULL,'172',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (820,26,NULL,'173',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (821,26,NULL,'174',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (822,26,NULL,'175',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (823,26,NULL,'176',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (824,26,NULL,'177',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (825,26,NULL,'178',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (826,26,NULL,'179',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (827,26,NULL,'180',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (828,26,NULL,'181',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (829,26,NULL,'182',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (830,26,NULL,'183',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (831,26,NULL,'184',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (832,26,NULL,'185',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (833,26,NULL,'186',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (834,26,NULL,'187',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (835,26,NULL,'188',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (836,26,NULL,'189',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (837,26,NULL,'190',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (838,26,NULL,'191',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (839,26,NULL,'192',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (840,26,NULL,'193',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (841,26,NULL,'194',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (842,26,NULL,'195',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (843,26,NULL,'196',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (844,26,NULL,'197',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (845,26,NULL,'198',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (846,26,NULL,'199',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (847,26,NULL,'200',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (848,26,NULL,'201',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (849,26,NULL,'202',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (850,26,NULL,'203',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (851,26,NULL,'204',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (852,26,NULL,'205',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (853,26,NULL,'206',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (854,26,NULL,'207',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (855,26,NULL,'208',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (856,26,NULL,'209',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (857,26,NULL,'210',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (858,26,NULL,'211',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (859,26,NULL,'212',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (860,26,NULL,'213',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (861,26,NULL,'214',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (862,26,NULL,'215',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (863,26,NULL,'216',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (864,26,NULL,'217',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (865,26,NULL,'218',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (866,26,NULL,'219',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (867,26,NULL,'220',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (868,26,NULL,'221',1,1974,'5',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (869,26,NULL,'222',1,1974,'6',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (870,26,NULL,'223',1,1974,'6',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (871,26,NULL,'224',1,1974,'7',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (872,26,NULL,'125',1,1974,'7',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (873,26,NULL,'126-127',1,1974,'8',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (874,26,NULL,'128',1,1974,'9',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (875,26,NULL,'0',2,1974,'9',11,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (876,26,NULL,'129',1,1974,'9',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (877,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (878,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (879,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (880,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (881,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (882,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (883,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (884,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (885,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (886,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (887,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (888,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (889,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (890,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (891,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (892,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (893,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (894,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (895,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (896,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (897,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (898,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (899,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (900,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (901,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (902,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (903,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (904,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (905,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (906,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (907,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (908,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (909,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (910,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (911,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (912,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (913,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (914,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (915,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (916,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (917,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (918,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (919,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (920,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (921,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (922,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (923,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (924,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (925,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (926,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (927,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (928,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (929,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (930,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (931,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (932,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (933,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (934,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (935,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (936,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (937,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (938,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (939,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (940,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (941,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (942,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (943,26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (944,26,NULL,'298',1,1982,'4',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (945,27,NULL,'1',1,1969,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (946,27,NULL,'2',1,1969,'6',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (947,27,NULL,'3',1,1969,'7',5,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (948,43,NULL,'1',1,1970,'6',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (949,43,NULL,'2',1,1970,'7',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (950,43,NULL,'3',1,1970,'8',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (951,43,NULL,'4',1,1970,'9',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (952,43,NULL,'5',1,1970,'10',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (953,43,NULL,'6',1,1970,'11',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (954,43,NULL,'7',1,1970,'12',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (955,43,NULL,'8',1,1971,'1',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (956,43,NULL,'9',1,1971,'2',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (957,43,NULL,'10',1,1971,'3',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (958,43,NULL,'11',1,1971,'4',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (959,43,NULL,'12',1,1971,'5',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (960,29,NULL,'1',1,1969,'11','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (961,29,NULL,'2',1,1969,'12','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (962,29,NULL,'3-4',1,1970,'1-2','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (963,29,NULL,'5',1,1970,'3','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (964,29,NULL,'6',1,1970,'4','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (965,29,NULL,'7',1,1970,'5-6','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (966,29,NULL,'8',1,1970,'7','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (967,29,NULL,'9',1,1970,'8','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (968,29,NULL,'10',1,1970,'9-10','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (969,33,NULL,'1',1,1970,'9',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (970,33,NULL,'2',1,1970,'10',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (971,33,NULL,'3',1,1970,'11',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (972,33,NULL,'4',1,1970,'12',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (973,33,NULL,'5',1,1971,'1',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (974,33,NULL,'6',1,1971,'2',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (975,33,NULL,'7',1,1971,'3',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (976,33,NULL,'8',1,1971,'4',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (977,33,NULL,'9',1,1974,'12','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (978,33,NULL,'10',1,1975,'1','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (979,33,NULL,'11',1,1975,'2','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (980,33,NULL,'12',1,1975,'3','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (981,33,NULL,'13',1,1975,'4','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (982,33,NULL,'14-15',1,1975,'5-6','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (983,33,NULL,'16-17',1,1975,'7-8','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (984,33,NULL,'18',1,1975,'9','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (985,33,NULL,'19',1,1975,'10','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (986,33,NULL,'20',1,1975,'11','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (987,33,NULL,'21',1,1975,'12','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (988,33,NULL,'22',1,1976,'1','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (989,33,NULL,'23',1,1976,'2',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (990,33,NULL,'24',1,1976,'3',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (991,33,NULL,'25',1,1976,'4',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (992,33,NULL,'26',1,1976,'8',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (993,33,NULL,'27',1,1976,'9',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (994,33,NULL,'28',1,1976,'12',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (995,33,NULL,'29',1,1977,'3',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (996,33,NULL,'30',1,1977,'4',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (997,33,NULL,'31',1,1977,'5',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (998,33,NULL,'32',1,1977,'9',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (999,33,NULL,'33',1,1977,'10',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1000,33,NULL,'34',1,1977,'11',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1001,33,NULL,'35',1,1978,'3',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1002,33,NULL,'36',1,1978,'8',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1003,33,NULL,'37',1,1980,'7',NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1004,25,NULL,'1',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1005,25,NULL,'2',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1006,25,NULL,'3',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1007,25,NULL,'4',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1008,25,NULL,'5',1,1968,'10',18,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1009,25,NULL,'6',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1010,25,NULL,'7',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1011,25,NULL,'8',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1012,25,NULL,'9',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1013,25,NULL,'10',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1014,25,NULL,'11',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1015,25,NULL,'12',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1016,25,NULL,'13',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1017,25,NULL,'14',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1018,25,NULL,'15',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1019,25,NULL,'16',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1020,25,NULL,'17',1,1971,'12',6,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1021,25,NULL,'18',1,1972,'1',17,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1022,25,NULL,'19',1,1972,'6',17,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1023,25,NULL,'20',1,1972,'7',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1024,25,NULL,'21',1,1972,'8',17,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1025,25,NULL,'22',1,1972,'9',23,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1026,25,NULL,'23',1,1972,'11',4,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1027,25,NULL,'24',1,1972,'12',5,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1028,25,NULL,'25',1,1973,'1',9,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1029,25,NULL,'26',1,1973,'2',20,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1030,25,NULL,'27',1,1973,'4',20,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1031,25,NULL,'28',1,1973,'5',17,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1032,25,NULL,'29',1,1973,'6',20,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1033,25,NULL,'30',1,1973,'7',31,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1034,25,NULL,'31',1,1973,'9',10,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1035,25,NULL,'32',1,1973,'10',10,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1036,25,NULL,'33',1,1973,'10',10,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1037,25,NULL,'34',1,1973,'11',12,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1038,25,NULL,'35',1,1973,'12',5,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1039,25,NULL,'36',1,1974,'1',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1040,25,NULL,'37',1,1974,'2',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1041,25,NULL,'38',1,1974,'3',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1042,25,NULL,'39',1,1974,'4',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1043,25,NULL,'40',1,1974,'5',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1044,25,NULL,'41',1,1974,'6','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1045,25,NULL,'42',1,1974,'7','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1046,25,NULL,'43',1,1974,'8','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1047,25,NULL,'44',1,1974,'9','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1048,25,NULL,'45',1,1974,'10','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1049,25,NULL,'46',1,1974,'11','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1050,25,NULL,'47',1,1974,'12','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1051,25,NULL,'48',1,1975,'1','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1052,25,NULL,'49',1,1975,'2','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1053,25,NULL,'50',1,1975,'3-4','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1054,25,NULL,'51',1,1975,'5','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1055,25,NULL,'52',1,1975,'6','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1056,25,NULL,'0',2,1975,'6','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1057,25,NULL,'0',2,1975,'','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1058,36,NULL,'1',1,1970,'5','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1059,36,NULL,'2',1,1970,'6','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1060,36,NULL,'3',1,1970,'7','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1061,36,NULL,'4',1,1970,'8','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1062,36,NULL,'5',1,1970,'10','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1063,36,NULL,'6',1,1970,'11','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1064,36,NULL,'7',1,1970,'12','',NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1065,36,NULL,'8',1,1971,'3',15,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1066,36,NULL,'9',1,1971,'4',1,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1067,34,NULL,'1',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1068,34,NULL,'2',1,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1069,34,NULL,'3',1,1969,'6',11,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1070,34,NULL,'4',1,1969,'6',27,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1071,35,NULL,'1',1,1969,'8',5,NULL,NULL,NULL);
INSERT INTO "issues" VALUES (1072,35,NULL,'2',1,1969,'9',24,NULL,NULL,NULL);
CREATE VIEW "publications_view" AS
SELECT 
    PUB.publication_id, PUB.publication_title, CIT.city_name AS publication_location, PTY.publication_type,
    
	CASE
		WHEN(MAX(ISS.issue_year) - MIN(ISS.issue_year) + 1) < 2 THEN (MAX(ISS.issue_year) - MIN(ISS.issue_year) + 1) || ' year' 
		WHEN(MAX(ISS.issue_year) - MIN(ISS.issue_year) + 1) > 1 THEN (MAX(ISS.issue_year) - MIN(ISS.issue_year) + 1)|| ' years' 
	END AS life_span,
	
	MIN(ISS.issue_year) AS first_year, 
    MAX(ISS.issue_year) AS last_year,
    COUNT(ISS.issue_number) AS 'total_issues'
	FROM publications AS PUB
LEFT JOIN issues AS ISS ON PUB.publication_id = ISS.publication_id
LEFT JOIN publication_types AS PTY ON PUB.publication_type_id = PTY.publication_type_id
LEFT JOIN cities AS CIT ON PUB.city_id = CIT.city_id
GROUP BY PUB.publication_title
ORDER BY PUB.publication_title ASC;
CREATE VIEW printing_facilities_view AS
SELECT DISTINCT PRH.printing_house_id, PRH.printing_house_name, CIT.city_name, PUB.publication_title
FROM printing_houses AS PRH
LEFT JOIN cities AS CIT 
on PRH.printing_house_location = CIT.city_id
LEFT JOIN issues AS ISS
on ISS.printing_house_id = PRH.printing_house_id
LEFT JOIN publications AS PUB 
on PUB.publication_id = ISS.publication_id;
CREATE VIEW articles_view AS
SELECT ART.article_id, ART.article_title, 
AUT.author_type, 

CASE
	WHEN AUT.author_first_name IS NOT NULL OR AUT.author_last_name IS NOT NULL THEN COALESCE(AUT.author_first_name, '') ||' '|| COALESCE(AUT.author_last_name, '')
	WHEN AUT.author_first_name IS NULL AND AUT.author_last_name IS NULL THEN NULL
END AS "author",

PU.publication_title, ART.issue_number,

CASE 
    WHEN ISS.issue_month IS NOT NULL AND ISS.issue_year IS NOT NULL THEN ISS.issue_year || '-' || printf('%02d', ISS.issue_month)
    WHEN ISS.issue_month IS NULL THEN COALESCE('', '') || '' || COALESCE(ISS.issue_year, '')
    WHEN ISS.issue_year IS NULL THEN COALESCE(ISS.issue_month, '') || '-' || COALESCE('', '')
END AS issue_date,

CASE
	WHEN ART.page_start = ART.page_end THEN ART.page_start
	WHEN ART.page_start != ART.page_end THEN ART.page_start||'-'||ART.page_end 
END AS "pages", 

RFT.regular_feature_title,
ART.article_text
FROM articles as ART
LEFT JOIN regular_features AS RFT on ART.regular_feature_id = RFT.regular_feature_id
LEFT JOIN publications AS PU on ART.publication_id=PU.publication_id
LEFT JOIN authors AS AUT on ART.author_id=AUT.author_id
LEFT JOIN issues AS ISS on ART.publication_id=ISS.publication_id AND ART.issue_number=ISS.issue_number
ORDER BY ART.article_title ASC, issue_date ASC;
CREATE VIEW issues_view as
SELECT PUB.publication_id, PUB.publication_title, ISS.issue_number, IST.issue_type,
ISS.issue_year, ISS.issue_month, ISS.issue_day, PRH.printing_house_name
FROM publications as PUB
LEFT JOIN issues as ISS on ISS.publication_id = PUB.publication_id
LEFT JOIN issue_types as IST on ISS.issue_type_id = IST.issue_type_id
LEFT JOIN printing_houses as PRH on ISS.printing_house_id = PRH.printing_house_id
ORDER BY PUB.publication_id, ISS.issue_number_start ASC;
COMMIT;
