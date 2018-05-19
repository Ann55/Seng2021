--
-- File generated with SQLiteStudio v3.1.1 on Tue May 15 21:08:42 2018
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: AuthorizedUsers
CREATE TABLE AuthorizedUsers (userID VARCHAR (15), Password VARCHAR (15), Role VARCHAR (15), Email VARCHAR (20));
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user001', 'pbkdf2:sha1:1000$zQQEUYBq$538190c294e48ce0d6a6c71440e8419fd051a39d', 'UNSWstudent', 'user001@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user002', 'pbkdf2:sha1:1000$3VGe8rGg$5782153d249d69e82fac12efa518f6541a65e2c3', 'UNSWstudent', 'user002@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user003', 'pbkdf2:sha1:1000$9XIWAzr0$bca08969531961b3ffb4bd1e2f147422b7d66ea5', 'UNSWstudent', 'user003@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user004', 'pbkdf2:sha1:1000$QK8ad6yO$482d5ab1bf1f1d314acbebec1210d6589d98b801', 'UNSWstudent', 'user004@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user005', 'pbkdf2:sha1:1000$gXuoEanM$92eb7af2d21e798566c6c3983245c84747d1cadd', 'UNSWstudent', 'user005@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user006', 'pbkdf2:sha1:1000$FJ8rrXpf$a82365c536717ee0f99d0da7810928c6a32af8b6', 'UNSWstudent', 'user006@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user007', 'pbkdf2:sha1:1000$Ymeu9vJa$5b5520ce10b1d5801a3153b7ac5573cd64cde9c2', 'UNSWstudent', 'user007@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user008', 'pbkdf2:sha1:1000$L8vDgP0S$43544c6907f3a261bb7c94fc27b034aeb6001632', 'UNSWstudent', 'user008@hotmail.com');
INSERT INTO AuthorizedUsers (userID, Password, Role, Email) VALUES ('user009', 'pbkdf2:sha1:1000$hs1YnVIz$aa7387a4a40fe222d18494c4c50940290419c7e0', 'UNSWstudent', 'user009@hotmail.com');

-- Table: UNSWSocietyAbout
CREATE TABLE UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded);
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswbsoc', '45277909073', 'inspire. engage. empower.\nFirst Years Guide 2017: issuu.com/unswbusinesssociety/docs/fyg\n\n', '8891', 'http://unswbsoc.com/', '10154550864664074', '51', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/14205965_10154550864664074_9053444386677762168_o.png?_nc_cat=0&oh=a20f6ce78ee9a252b539d815dc4c5e37&oe=5B36AA7A', '10154550864664074', 'https://www.facebook.com/unswbsoc/', 'info@unswbsoc.com', '11 March 1957');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('Marksoc', '769587416423767', 'This is the official page for the Greenwich Marketing Society. \nFollow us @uogmarketingsoc\nStay updated with latest events and Marketing news! \n', '304', 'http://uogmarketingsociety.com/', '1078369088878930', '257', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/14633058_1078369088878930_4249590965197931744_n.jpg?_nc_cat=0&oh=14465d827c8d43a72785fa66a2929c2b&oe=5B280F47', '1078369088878930', 'https://www.facebook.com/Marksoc/', 'uogmarketingsoc@gmail.com', NULL);
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('cooksoc', '2002232400098677', 'A community for people to share their passion for cooking. CookSoc hosts events such as Food Sales, Social Dinners & Cooking Classes.', '116', 'https://orgsync.com/117903/', '2033434656978451', '0', '46', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/30261693_2033434663645117_1500799991428415488_o.jpg?_nc_cat=0&oh=6565cc523d1ef4a99b6f07df98597a93&oe=5B6001FA', '2033434656978451', 'https://www.facebook.com/cooksoc/', 'secretary.unswcookingsociety@gmail.com', NULL);
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswuspoliticssociety', '2014267452187763', 'We''re passionate about U.S. Politics because of its impact around the World and Australia. Join the conversation and make a difference! ', '582', '', '2014267452187763', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/26240667_2014267452187763_7664955781850410875_o.jpg?_nc_cat=0&oh=97236df8c10f250ea0814793170390d9&oe=5B51CA46', '2014267452187763', 'https://www.facebook.com/unswuspoliticssociety/', '[''unswuspoliticssociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswanimationsociety', '1856218104444386', 'Animation Society of UNSW! We''re all about animation!', '16', '', '1856218104444386', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/30710701_1856218107777719_6313479269443960832_o.jpg?_nc_cat=0&oh=f235a5f611525b17ef730f365593d7b1&oe=5B80B572', '1856218104444386', 'https://www.facebook.com/unswanimationsociety/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWFilmSociety', '1961690400728383', '', '555', 'https://orgsync.com/81172/chapter', '1961690400728383', '0', '92', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/20157695_1961690400728383_293754665310890487_o.jpg?_nc_cat=0&oh=788991c69bced8f0cd7122093922ecb3&oe=5B853AA4', '1961690400728383', 'https://www.facebook.com/UNSWFilmSociety/', '[''unswfilmsociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWBOOTYSOCIETY', '1592580944336527', 'SIGN THE PETITION BITCHES

https://www.change.org/p/unsw-it-change-the-moodle-girl-to-mia-khalifa', '66', 'https://www.change.org/p/unsw-it-change-the-moodle-girl-to-mia-khalifa', '1592580944336527', '0', '40', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/11143178_1592580944336527_6910079287792241097_o.jpg?_nc_cat=0&oh=53b55137bc309ecd3c0ac6d7f0ae227b&oe=5B887931', '1592580944336527', 'https://www.facebook.com/UNSWBOOTYSOCIETY/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWNeurosciSoc', '152245782127222', 'The Official Facebook page for the UNSW Neuroscience Society. Follow us for information about upcoming society events and neuroscience news.', '75', '', '152245782127222', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/29178972_152245782127222_3139756833983179985_n.png?_nc_cat=0&oh=b9263d2e1513ae5af9e933b39e5006a6&oe=5B533111', '152245782127222', 'https://www.facebook.com/UNSWNeurosciSoc/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWLaw', '1399631963447827', 'The Official Page for the University of New South Wales Law School.

CRICOS Provider Number: 00098G', '9386', 'http://www.law.unsw.edu.au/', '1399631963447827', '0', '25', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/20369772_1399631963447827_4023607777041487074_o.jpg?_nc_cat=0&oh=3c81dada0a5c4a732d41a29a255e9530&oe=5B97E9EC', '1399631963447827', 'https://www.facebook.com/UNSWLaw/', '[''law@unsw.edu.au'']', '1971');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmemesoc', '404974323203880', 'A new society of unsw......THE MEME SOCIETY', '71', '', '404974323203880', '0', '9', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/17553432_404974323203880_7878389934615945371_n.png?_nc_cat=0&oh=edb69cec23edc2bb46c0551ae4dcfac9&oe=5B7F94DA', '404974323203880', 'https://www.facebook.com/unswmemesoc/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWPoker', '498689133540592', 'UNSW Poker Society is designed to provide members with events which will help them meet new people and develop their poker skills at the same time.', '232', 'https://docs.google.com/forms/d/1mI2CdNBWDdWknpC-Fq9UdS5GCo0k7JiLB2eng1SXMdo/viewform', '498689133540592', '0', '18', 'https://scontent.xx.fbcdn.net/v/t31.0-8/p720x720/1077104_498689133540592_1537538040_o.jpg?_nc_cat=0&oh=1c9c4265d998036226527b3c74c9fd1c&oe=5B92CADA', '498689133540592', 'https://www.facebook.com/UNSWPoker/', '[''pokersociety.unsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('fredhollowsunsw', '922860161167556', 'FredSoc UNSW is committed to raising awareness and helping The Fred Hollows Foundation.', '894', 'http://www.fredhollowsunsw.wordpress.com/', '922860161167556', '0', '52', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/12800308_922860161167556_6351453171955226127_n.jpg?_nc_cat=0&oh=292a8e7876a268b77686e941a5bd1d9d&oe=5B8D22D1', '922860161167556', 'https://www.facebook.com/fredhollowsunsw/', '[''fredhollowsunsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('knitsocunsw', '456363828029888', 'The UNSW Knitting Society is a community of yarn enthusiasts who bond over the age-old craft of knitting and crochet. Like our page to keep updated!!', '175', '', '456363828029888', '0', '63', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/18403909_456363828029888_2662777196516231571_o.png?_nc_cat=0&oh=9c9c697249d645b6a571edac856df072&oe=5B92F16F', '456363828029888', 'https://www.facebook.com/knitsocunsw/', '[''knitsocunsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWbusiness', '10154674429449142', 'Where great minds do business.', '29593', 'http://www.business.unsw.edu.au/', '10154674429449142', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/19238114_10154674429449142_2399975798146155078_o.jpg?_nc_cat=0&oh=af3c0307d2489243977ff6baf31591db&oe=5B9BFA3F', '10154674429449142', 'https://www.facebook.com/UNSWbusiness/', '[''studybusiness@unsw.edu.au'']', '2007');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmts', '579917949056936', 'The UNSW Musical Theatre Society (UNSW MTS) is a student run society affiliated with Arc@UNSW within the University of New South Wales.  It is dedicated to producing a number of musicals each year, organising cabarets, and open mic nights.', '798', 'http://unswmts.org', '579917949056936', '0', '0', 'https://scontent.xx.fbcdn.net/v/l/t1.0-9/q84/s720x720/30740110_579917949056936_485698569915900253_n.jpg?_nc_cat=0&oh=04ad632e248fc62cf2fdacc66a7652c7&oe=5B5206D6', '579917949056936', 'https://www.facebook.com/unswmts/', '[''executive@unswmts.org'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('MSOUNSW', '923253807812818', 'Stronger Than Yesterday', '1661', 'http://www.unswmso.org', '923253807812818', '650', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/20451754_923253807812818_575289887345146352_o.jpg?_nc_cat=0&oh=cc05cc82e2f52cce243ef1fd65f43a9b&oe=5B9A212D', '923253807812818', 'https://www.facebook.com/MSOUNSW/', '[''info@unswmso.org'']', '2003');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('BDSocUNSW', '697744363766946', 'UNSW BD Soc hopes to keep the Bangladeshi culture alive within UNSW by hosting events and spreading the rich culture and traditions of Bangladesh. ', '272', '', '697744363766946', '0', '63', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/22496167_697744363766946_7020522391261742539_o.jpg?_nc_cat=0&oh=f4f64d1ece6c0b2ec2d48a1df3f89863&oe=5B964F12', '697744363766946', 'https://www.facebook.com/BDSocUNSW/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('tss.unsw', '1775458985869153', 'Join now! TSS 2017 	http://www.facebook.com/groups/tssmembers/ ', '698', 'http://www.facebook.com/groups/tssmembers/', '1775458985869153', '0', '10', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31681170_1775458992535819_1603155066456375296_o.png?_nc_cat=0&oh=b3ff9b6f54dc12ee62629930104b8cdc&oe=5B803C26', '1775458985869153', 'https://www.facebook.com/tss.unsw/', '[''tss.unsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWCarSociety', '999959266773198', 'A place where car enthusiasts of UNSW can share their passion.

Follow our page and group for more.
https://www.facebook.com/groups/UNSWCarSociety/
', '260', 'https://www.facebook.com/groups/UNSWCarSociety/', '999959266773198', '600', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/q82/s720x720/20232165_999959266773198_1351770896871752676_o.jpg?_nc_cat=0&oh=ae9324f133406b1cf82041386330a355&oe=5B8EA819', '999959266773198', 'https://www.facebook.com/UNSWCarSociety/', '[''unswcarsociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswhistorysociety', '216072472320634', 'Welcome to the UNSW History Society. In this society we post memes, discuss history related topics and planning meet ups for trivia, excursions and more', '151', '', '216072472320634', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32190838_216072475653967_4402169602398748672_n.png?_nc_cat=0&oh=4ad3f9f14a44b98308d00239e85d50fb&oe=5B8A818B', '216072472320634', 'https://www.facebook.com/unswhistorysociety/', '[''unswhistorysociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('mssunsw', '1895070453878772', 'We will update our outing activities, events and general meeting date in here.', '5183', 'https://www.facebook.com/mssunsw', '1895070453878772', '0', '74', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/28336085_1895070453878772_7736350652896723667_o.jpg?_nc_cat=0&oh=b30765b9b3fea9b3cd868de8b2c264b5&oe=5B5265EC', '1895070453878772', 'https://www.facebook.com/mssunsw/', '[''mss.unsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWindigenoussociety', '930218370344990', 'The UNSW Indigenous Society is a student run organisation that aims to support Indigenous students throughout their degrees, while inviting the broader university community to engage and learn more about our First Nations Peoples and Cultures.', '584', '', '930218370344990', '0', '47', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/10305250_930218370344990_7653246811634561578_n.jpg?_nc_cat=0&oh=a08a0bea37150420a228c206eba2e52f&oe=5B85AF46', '930218370344990', 'https://www.facebook.com/UNSWindigenoussociety/', '[''unswindigenoussociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('EXOSOC', '2122457414705128', 'Official page for the UNSW Exotic Beer Society (EXOSOC)

The only UNSW Society dedicated to the world''s favourite beverage.
', '436', 'https://orgsync.com/81108/chapter', '2122457414705128', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32076322_2122457418038461_8045182878868307968_n.png?_nc_cat=0&oh=57cc5db3e4c2e2b83cf88f7f8f83debc&oe=5B84874E', '2122457414705128', 'https://www.facebook.com/EXOSOC/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UnswAnjaliTamilSociety', '1095002400552138', 'Based at the University of New South Wales, the society is all about having fun, making friends, and getting in touch with your Tamil roots. JOIN TODAY! ', '1391', '', '1095002400552138', '0', '58', 'https://scontent.xx.fbcdn.net/v/t31.0-8/q81/s720x720/12593696_1095002400552138_3530458762425626384_o.jpg?_nc_cat=0&oh=9303b1b883f58c2c4dd1b00bb2372c8e&oe=5B551F4B', '1095002400552138', 'https://www.facebook.com/UnswAnjaliTamilSociety/', '[''anjalitamilsociety@hotmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWPhysocSociety', '1216768611734259', 'PHYSOC is the Physics Student Society at the University of New South Wales.
Located in G35. Independently run by UNSW Arc.', '481', 'http://ugrad.phys.unsw.edu.au/physoc/current/', '1216768611734259', '600', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/16830841_1216768611734259_3500734563124978480_n.png?_nc_cat=0&oh=e73f7b0040b9f8e28fbe000fbb696f51&oe=5B913C6E', '1216768611734259', 'https://www.facebook.com/UNSWPhysocSociety/', '[''unswphysoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmetalsoc', '2040541669548705', 'The UNSW Metal Society provides a medium for which fans of heavy music can gather, discuss and appreciate their music of choice. Whether you''re a seasoned headbanger. a hardcore kid or just interested in heavy music, we are the society to join!           ', '136', 'https://orgsync.com/169265/chapter', '2040541669548705', '0', '10', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/27993733_2040541669548705_4731265539442307876_o.jpg?_nc_cat=0&oh=b5f271b6bbab4820c7faf215c2788d5f&oe=5B838D10', '2040541669548705', 'https://www.facebook.com/unswmetalsoc/', '[''unswmetalsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWVinniesSociety', '448246718642905', 'Vinnies Society UNSW is an Arc-affiliated student club which represents the interests of The St Vincent de Paul Society. Founded in 2013, we are open to all interested UNSW Students!', '940', 'http://www.vinnies.org.au', '448246718642905', '0', '21', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/1553445_448246718642905_7687724575138662991_o.jpg?_nc_cat=0&oh=b2fd9f6b788c79dcb506f391162c1e43&oe=5B53C056', '448246718642905', 'https://www.facebook.com/UNSWVinniesSociety/', '[''unswvinniessoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unit.unsw', '2068516276750398', 'We seek to provide students interested in finance with education, and career and networking opportunities at UNSW', '3690', 'http://unit.org.au', '2068516276750398', '0', '59', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/29872427_2068516276750398_6757339932074014965_o.jpg?_nc_cat=0&oh=c7d3745cd11c76f2c1c55840c5575161&oe=5B97C442', '2068516276750398', 'https://www.facebook.com/unit.unsw/', '[''unsw@unit.org.au'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswfilosoc', '1822625507777563', 'Our society aims to promote a healthy relationship between Filipinos from the Philippines, the "filos" that grew up in Australia and the UNSW community', '253', 'https://orgsync.com/81204/chapter', '1822625507777563', '56', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/21993030_1822625507777563_170315511756101316_o.jpg?_nc_cat=0&oh=c95f216268076b51d8bc3be40e25f71b&oe=5B53C19C', '1822625507777563', 'https://www.facebook.com/unswfilosoc/', '[''filosocunsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('eeunsw', '1936747136356610', 'Electrical Engineering and Telecommunications Society UNSW', '1835', 'http://elsoc.net/', '1936747136356610', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32089818_1936747139689943_806291405864435712_n.jpg?_nc_cat=0&oh=2ca0b92fef75163aadc1a70f5456f646&oe=5B54DFE4', '1936747136356610', 'https://www.facebook.com/eeunsw/', '', '1954');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('d2mg.hiphop.unsw', '1789712974393567', 'D2MG represents all the elements of hip hop: dance, DJ, MC and graffiti. Keeping it real since 2002.', '1274', 'http://d2mg.org', '1789712974393567', '0', '50', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/27973440_1789712974393567_7153403752552706643_n.jpg?_nc_cat=0&oh=526e3281f064440bab2f9b03ba33d725&oe=5B54A032', '1789712974393567', 'https://www.facebook.com/d2mg.hiphop.unsw/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswminecraft', '715157741949340', 'A society dedicated to the video game Minecraft at UNSW!', '56', 'http://unswminecraft.com', '715157741949340', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/11041033_715157741949340_4813791020063602686_n.png?_nc_cat=0&oh=7be1004189512a7e84af85435350235f&oe=5B9612A2', '715157741949340', 'https://www.facebook.com/unswminecraft/', '[''execs@unswminecraft.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSW.OGSoc', '1687972204786444', 'Welcome to the official page for UNSW O&GSoc. Any views expressed on a MedSoc aligned page by an individual unless ratified by the MedSoc Council are not necessarily representative of the position of UNSW, UNSW MedSoc, our sponsors or partner societies.', '310', 'http://medsoc.org.au/cms/special-interest-groups/og-soc/', '1687972204786444', '0', '35', 'https://scontent.xx.fbcdn.net/v/t1.0-0/p180x540/13102848_1687972204786444_6743534556001238593_n.jpg?_nc_cat=0&oh=3debb70b6819b682a8b00b125c30bd0f&oe=5B55211B', '1687972204786444', 'https://www.facebook.com/UNSW.OGSoc/', '[''oandgsociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWStatSoc', '341403206365065', 'A Statistics Society at the University Of New South Wales. ', '310', 'statsoc.unsw.edu.au', '341403206365065', '0', '76', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/27992916_341403206365065_2074084359273860252_o.jpg?_nc_cat=0&oh=a31fa8d196afdab8fd7b090510b62f23&oe=5B8FBD94', '341403206365065', 'https://www.facebook.com/UNSWStatSoc/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswsecsoc', '831504343596481', 'The Security Society is a community aimed at spreading awareness and enthusiasm for computer security.', '411', 'http://unswsecurity.com/', '831504343596481', '0', '72', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/11061969_831504343596481_8362206273172363734_o.jpg?_nc_cat=0&oh=4e61f1681f130745d0bb8ed330407f17&oe=5B9759F5', '831504343596481', 'https://www.facebook.com/unswsecsoc/', '[''execs@unswsecurity.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('fishsocunsw', '461119790885988', 'University of New South Wales Fishing Society 

For all fishing enthusiasts from amateurs to professionals. 

', '356', 'https://orgsync.com/152501/chapter', '461119790885988', '0', '25', 'https://scontent.xx.fbcdn.net/v/t31.0-0/p480x480/17854752_461119790885988_415393715502607238_o.jpg?_nc_cat=0&oh=8316603a09a9a728c5608bad8d4be121&oe=5B557BCF', '461119790885988', 'https://www.facebook.com/fishsocunsw/', '[''unswfishsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswgolf', '655515877908974', 'The UNSW Golf Society is an Arc-affiliated club that caters for golfers of all levels. We run a wide range of events from putt-putt to competitions.', '246', 'http://www.facebook.com/groups/unswgolfsoc/', '655515877908974', '0', '73', 'https://scontent.xx.fbcdn.net/v/t31.0-0/p180x540/10985008_655515877908974_2307974070442504757_o.jpg?_nc_cat=0&oh=031207c3b35d852bcfae3c47ec7ea620&oe=5B9C2C3A', '655515877908974', 'https://www.facebook.com/unswgolf/', '[''unswgolfsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswnepsoc', '982679368451096', 'Representative body for all Nepalese at UNSW promoting Nepalese diversity and culture.
Be an official member today https://orgsync.com/116093/chapter ', '328', 'http://www.facebook.com/unswnepsoc', '982679368451096', '0', '62', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/11885072_982679368451096_2574242843504634254_n.jpg?_nc_cat=0&oh=dd883ec671318cea755f558f66ca60a4&oe=5B7DC9C5', '982679368451096', 'https://www.facebook.com/unswnepsoc/', '[''unswnepsoc@gmail.com'']', 'Sudip SharmaSapkota
Amit Pant
Shirshak Adhikari');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('csesoc', '1788710584495239', 'UNSW Computer Society and Engineering Society', '2378', 'http://www.csesoc.unsw.edu.au', '1788710584495239', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/28061454_1788710584495239_1358893797929304977_o.png?_nc_cat=0&oh=955f972af507e1cbfc28d3484eb88792&oe=5B8914B1', '1788710584495239', 'https://www.facebook.com/csesoc/', '[''csesoc@cse.unsw.edu.au'']', 'October 2006');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmarksoc', '1550502081694387', 'The UNSW Marketing Society is a student-run society that aims to empower all marketing students so that they can achieve their career goals. ', '1222', 'http://www.unswmarksoc.org', '1550502081694387', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/27709469_1550502081694387_6048014162755608936_o.jpg?_nc_cat=0&oh=dd5e70c8f994236f1e215a3fd18b25b9&oe=5B9883D7', '1550502081694387', 'https://www.facebook.com/unswmarksoc/', '[''general@unswmarksoc.org'']', '2003');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswdisneysociety', '810569235722553', '', '302', '', '', '', '', '', '', 'https://www.facebook.com/unswdisneysociety/', '[''unswdisneyclub@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWPuzzleSoc', '154958441832549', 'Welcome to PuzzleSoc!
A society for people who like puzzles, riddles, escape rooms and all other forms of brain teasers. Is this you? ', '356', '', '154958441832549', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/28828851_154958441832549_6259558619383554648_o.png?_nc_cat=0&oh=7a945b444ca435f230eea1aed8666fff&oe=5B9259B7', '154958441832549', 'https://www.facebook.com/UNSWPuzzleSoc/', '[''unswpuzzlesoc@gmail.com'']', '16 Jan 2018');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswissociety', '1425850014155567', 'The constituent society for all undergraduate students studying Information Systems at University of New South Wales Business School.', '1042', 'http://www.bitsa.org.au', '1425850014155567', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/17212245_1425850014155567_1383103275545836793_o.png?_nc_cat=0&oh=bf1c97eaacd066d95e12ca5282aedd4d&oe=5B5207E8', '1425850014155567', 'https://www.facebook.com/unswissociety/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswlatindancesoc', '1899016520171110', 'Latin Dance Society  brings the community of UNSW together through the joys of social Latin dancing.', '1161', 'https://orgsync.com/81353/chapter', '1899016520171110', '0', '50', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/29025720_1899016526837776_7655852013405601792_o.jpg?_nc_cat=0&oh=589264cc278cddea99587d33b14e6d3b&oe=5B526DAD', '1899016520171110', 'https://www.facebook.com/unswlatindancesoc/', '[''latindanceunsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWCrimSoc', '2064044260492699', 'The UNSW Criminology Society is the social, professional development and student affairs organisation of all criminology students at UNSW. 

Sign up on Org Sync: 
https://orgsync.com/join/90468/unsw-criminology-society
', '1026', 'https://unswcrimsoc.wixsite.com/unswcrimsoc', '2064044260492699', '0', '45', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/26756483_2064044260492699_2077525455392949033_o.jpg?_nc_cat=0&oh=4cf27cee578cf81ab36c996ab2f74666&oe=5B97DAF6', '2064044260492699', 'https://www.facebook.com/UNSWCrimSoc/', '[''unswcrimsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('fabsoc.unsw', '1029038243939427', 'UNSW Fashion & Beauty Society 
IG: @fabsoc.unsw
To join on OrgSync: https://orgsync.com/81349/chapter
Our Constitution and Objectives can be found here: http://fabsocunsw.wixsite.com/fabsoc/about', '2824', 'www.unswfabsoc.tumblr.com', '1029038243939427', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31886551_1029038247272760_6854365451879710720_n.png?_nc_cat=0&oh=de5960353ac35390a6fe215e7aa3b977&oe=5B89B801', '1029038243939427', 'https://www.facebook.com/fabsoc.unsw/', '[''fabsoc.unsw@gmail.com'']', '2013');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWFinTechSociety', '507612336256150', 'We aspire to connect students and academics with the ideas, companies  and innovators that are reinventing the finance industry. ', '113', '', '507612336256150', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/22406195_507612336256150_1769055255793570911_n.png?_nc_cat=0&oh=9311d15d2e4cb6b9a4aa4a17836a9473&oe=5B8BDB78', '507612336256150', 'https://www.facebook.com/UNSWFinTechSociety/', '[''unswfintechsociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('RheumSoc', '1190139484446804', 'RheumSoc is a student-run organisation under the UNSW Medical Students Society. We aim to promote clinical rheumatological medicine to medical students.', '315', 'http://medsoc.org.au/cms/special-interest-groups/rheumatology-society/', '1190139484446804', '29', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/18588719_1190139484446804_8499570227352818890_o.png?_nc_cat=0&oh=cbf2ba22c4634eaa741625a571d54d52&oe=5B7FDBDE', '1190139484446804', 'https://www.facebook.com/RheumSoc/', '[''rheumsoc@medsoc.org.au'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswnegsoc', '408843962791005', 'We welcome all interested in developing one of the most useful yet underrated practical skills in life!', '375', 'https://orgsync.com/151861/chapter', '408843962791005', '0', '47', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/16486986_408843962791005_9177013869236172003_o.jpg?_nc_cat=0&oh=5c7ffd1ea853467830474d43fb75ab5f&oe=5B9468C3', '408843962791005', 'https://www.facebook.com/unswnegsoc/', '[''unswnegsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWFrenchSociety', '2061201604145719', 'The Official French Society of the University of New South Wales. Supported by Arc.

', '1019', 'https://orgsync.com/81221/chapter', '2061201604145719', '0', '49', 'https://scontent.xx.fbcdn.net/v/t31.0-0/p180x540/30815828_2061201604145719_3727354853831195693_o.jpg?_nc_cat=0&oh=038b4bacfae25be5ed4e9161768a2a81&oe=5B9988F8', '2061201604145719', 'https://www.facebook.com/UNSWFrenchSociety/', '[''frenchsocietyunsw@gmail.com '']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('artssocietyunsw', '760409064117945', 'UNSW Arts Society (ArtsSoc) caters to all students completing a single or combined degree within the Faculty of Arts and Social Sciences (FASS). ', '2597', '', '760409064117945', '93', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/16700246_760409064117945_1431002304998107252_o.jpg?_nc_cat=0&oh=8fb396aae98d03a7afe2c3200cad47ac&oe=5B8DC3F8', '760409064117945', 'https://www.facebook.com/artssocietyunsw/', '[''secretary@unswartssociety.org'']', 'The UNSW Arts Society was founded in the beginning of 2013 by a group of FASS students looking to better the university experience of FASS students.');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('thebookwormsoc', '1281181195313063', 'The Bookworm Society is a book-club for UNSW students.', '263', '', '1281181195313063', '0', '47', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/17917918_1281181195313063_1559891038171440381_o.jpg?_nc_cat=0&oh=0fd5bcd4ea364037b964c58514c4cd4e&oe=5B967F8D', '1281181195313063', 'https://www.facebook.com/thebookwormsoc/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswVishwaas', '558789327853881', 'The UNSW Indian Society is a student-run society that strives to promote culture, community and leadership in and among our fellow peers.
', '713', '', '558789327853881', '0', '48', 'https://scontent.xx.fbcdn.net/v/t1.0-9/p720x720/30708835_558789334520547_5088249735551123456_o.jpg?_nc_cat=0&oh=9f3345ac7b25a7e24ba829498c93af6d&oe=5B931736', '558789327853881', 'https://www.facebook.com/unswVishwaas/', '[''vishwaasunsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswscisoc', '581448042224370', '', '1499', 'http://www.unswscisoc.com', '581448042224370', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31542891_581448042224370_2115476916268191397_n.png?_nc_cat=0&oh=c40c7d20f20eb6715e3a8eb95924bbc8&oe=5B84AB7D', '581448042224370', 'https://www.facebook.com/unswscisoc/', '[''scisoc.unsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswrealsoc', '984071598420464', 'The Real Estate Society is a student run society established in 2015 .We aim to promote Real Estate students to the industry as premier graduates and cultivate an immersive participatory community that educates and connects students to the opportunities ', '752', '', '984071598420464', '0', '26', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31959702_984071601753797_6122678117573066752_o.jpg?_nc_cat=0&oh=9f07bf5925c7a9a739d389f382356aa4&oe=5B85CF4D', '984071598420464', 'https://www.facebook.com/unswrealsoc/', '[''executives.unswresoc@gmail.com'']', '2015');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unsw.mechatronics', '539996916386751', 'UNSW Mechatronics Society is a student run society which aims to provide pathways in both the UNSW and professional community.', '752', 'https://orgsync.com/81225/chapter', '539996916386751', '650', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/28619526_539996916386751_5265150981452808779_o.png?_nc_cat=0&oh=2938a96fea5fb9a95115417998eb83b9&oe=5B81C259', '539996916386751', 'https://www.facebook.com/unsw.mechatronics/', '[''mechatronics.unsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswcomintsoc', '1445174462232630', 'UNSW Commerce (International) Society is a community of students enrolled in the Bachelor of Commerce (International) program. ', '174', 'https://aworldlymindblog.com/', '1445174462232630', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/21368672_1445174462232630_6371058050005364895_o.jpg?_nc_cat=0&oh=09fdee0ec8ef2846f615dc412f30d0f2&oe=5B87A721', '1445174462232630', 'https://www.facebook.com/unswcomintsoc/', '[''comintsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswYES', '1588287011256587', 'UNSW Young Entrepreneurs Society helps students discover & learn about entrepreneurship & business success!', '1421', '', '1588287011256587', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/28168375_1588287011256587_6953027053504490971_n.png?_nc_cat=0&oh=c41d7cd095eafbe957d37abdb826c1de&oe=5B9168D7', '1588287011256587', 'https://www.facebook.com/unswYES/', '[''unsw.entsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWFlatters', '1344567652277529', 'Welcome to the UNSW Flat Earth Society''s official Facebook page! Like us and keep up to date on all the latest flat earth notes', '4986', '', '1344567652277529', '0', '54', 'https://scontent.xx.fbcdn.net/v/t1.0-9/17795863_1344567652277529_2937402351375375641_n.jpg?_nc_cat=0&oh=fe2ca485b572a5f65fc4c8ff296c070a&oe=5B4FD980', '1344567652277529', 'https://www.facebook.com/UNSWFlatters/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWCheersoc', '1616660495093040', 'Instagram/Snapchat: unswcheersoc

UNSW Cheer and Dance Society consists of competitive cheer and dance teams representing the University of New South Wales in Sydney, Australia.', '1109', '', '1616660495093040', '0', '17', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/26841429_1616660495093040_7143309300229272029_o.jpg?_nc_cat=0&oh=c2651d6787eb3f4dd7e234d2d3cec8a8&oe=5B4EDF77', '1616660495093040', 'https://www.facebook.com/UNSWCheersoc/', '[''unswcheersoc@hotmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('tricksocunsw', '778935435633454', 'UNSW Tricking Society is the hub for trickers at the University of New South Wales. ', '594', '', '778935435633454', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/28056093_778935435633454_7636513463542323234_n.jpg?_nc_cat=0&oh=3ce91b699d6ecb9183f5a64669773f7b&oe=5B8AD8DD', '778935435633454', 'https://www.facebook.com/tricksocunsw/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('wanderingsoc', '1939005956414202', 'A society where we do outdoor activities and try explore and enjoy the Australian wildlife as much as possible. Instagram : @unsw_wandersoc
', '416', '', '1939005956414202', '0', '67', 'https://scontent.xx.fbcdn.net/v/t1.0-0/p180x540/29512951_1939005956414202_6826612255080082878_n.jpg?_nc_cat=0&oh=3aa7a3428005ed31c707c1596dbb18ea&oe=5B9A96B3', '1939005956414202', 'https://www.facebook.com/wanderingsoc/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswpsychsoc', '999771653532161', 'A page for UNSW students part of the Psychology Society to be updated with the latest social, academic and sport events and happenings around campus!', '1069', 'http://www.psychsoc.unsw.edu.au', '999771653532161', '0', '39', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31662174_999771660198827_3724425395177521152_o.png?_nc_cat=0&oh=9387213bd9b0188ebaba04c0fa2e8744&oe=5B90E19D', '999771653532161', 'https://www.facebook.com/unswpsychsoc/', '[''psychsoc@unsw.edu.au'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('DataSoc', '1865557527080498', 'We are a society that aims to provide a cohesive platform for members to further or develop skills that are mathematical, analytical and computational. ', '1102', 'unswdata.weebly.com', '1865557527080498', '0', '43', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32313230_1865557533747164_2447745511743029248_o.png?_nc_cat=0&oh=1de8c5c0fff1e8ac9dc99175a83040d3&oe=5B5562C9', '1865557527080498', 'https://www.facebook.com/DataSoc/', '[''unswdata@gmail.com'']', '2017');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('asocunsw', '732571196938423', 'To guide and facilitate a supportive, social and united actuarial student community at UNSW. It''s completely free to join ASOC! 
http://asoc.unsw.edu.au/', '1909', 'http://asoc.unsw.edu.au', '732571196938423', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/22135467_732571196938423_4575335022014095395_o.jpg?_nc_cat=0&oh=f9d53b4a3119e924eda528cb7f1a50de&oe=5B852CC9', '732571196938423', 'https://www.facebook.com/asocunsw/', '[''mail@asoc.unsw.edu.au'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswrunsoc', '1845496819094541', 'UNSW Campus Runners aims to provide a platform for runners of all abilities to meet and connect with members who share an interest or passion for endurance running and to introduce new members to the lifestyle, culture and mindset of endurance running.', '913', '', '1845496819094541', '0', '51', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/22042377_1845496819094541_5303300882320707901_o.jpg?_nc_cat=0&oh=c6a2fffc1e5242d13e92a90e6611e251&oe=5B8FE8BF', '1845496819094541', 'https://www.facebook.com/unswrunsoc/', '[''unswcampusrunners@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unsw.medical.society', '1921210184556321', 'UNSW Medical Society is your student body comprising of 1600+ medical students over six years at the University of New South Wales, Sydney, Australia.', '3672', 'http://www.medsoc.org.au', '1921210184556321', '0', '37', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/30167238_1921210184556321_8722086020915079153_o.jpg?_nc_cat=0&oh=4dd161db490e99994e0590ff94d1adb0&oe=5B81AA80', '1921210184556321', 'https://www.facebook.com/unsw.medical.society/', '[''secretary@medsoc.org.au'']', '1961');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('Debating.UNSW', '776653052440256', 'The official page of the University of New South Wales Debating Society in Kensington, NSW. 

Our Student Club is proudly supported by Arc@UNSW. ', '1693', 'http://unswdebsoc.com', '776653052440256', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/12357162_776653052440256_7529980329373475734_o.png?_nc_cat=0&oh=03bdc6da6b8adedac4be06011531bc1d&oe=5B506B5E', '776653052440256', 'https://www.facebook.com/Debating.UNSW/', '[''unswdebsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswunitednations', '2026352180961688', 'The UNSW United Nations Society is a student run organisation which seeks to promote the ideals of the United Nations on campus and within our community. ', '1366', 'http://www.unswunsociety.org.au/', '2026352180961688', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31564257_2026352180961688_206721560054225650_n.jpg?_nc_cat=0&oh=aefc5d4e494d20444d053f9e513bf2ca&oe=5B914B62', '2026352180961688', 'https://www.facebook.com/unswunitednations/', '[''president@unswunsociety.org.au'']', '1995');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('turksocunsw', '972690776217783', 'Welcome to the official page of the Turkish Society of UNSW. Our aim is to unite the Turkish youth via social events.', '657', 'https://www.youtube.com/user/TURKSOC', '972690776217783', '0', '30', 'https://scontent.xx.fbcdn.net/v/t1.0-0/p180x540/30227091_972690782884449_1763065039712944128_o.jpg?_nc_cat=0&oh=a1cb39a90ce9de8ce222d7aca583d318&oe=5B8A3CAF', '972690776217783', 'https://www.facebook.com/turksocunsw/', '[''turksoc@gmail.com'']', '11th of October, 2012');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWOptomsoc', '1740089869631191', 'UNSW Optometry Student Society (UNSW Optomsoc) is the representative body for all UNSW Optometry and Vision Science students.', '650', 'http://www.optomsoc.com', '1740089869631191', '0', '36', 'https://scontent.xx.fbcdn.net/v/t31.0-0/q91/p180x540/24172865_1740089869631191_1182366785543012454_o.jpg?_nc_cat=0&oh=92f403760b3eaceab67bc881166b1cb8&oe=5B98E849', '1740089869631191', 'https://www.facebook.com/UNSWOptomsoc/', '[''unswoptomsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswbakesoc', '1636523986383235', 'BakeSoc is UNSW''s one & only baking society! Our goal is to provide a fun & friendly social environment for members of UNSW who love baking and/or eating baked goods, and to give teaching and instruction to those who want to improve their baking skills.', '2954', '', '1636523986383235', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31511012_1636523993049901_6542070824940077056_o.jpg?_nc_cat=0&oh=c45e53495d4565b443ce9fdfa1bdaaf1&oe=5B7DBBED', '1636523986383235', 'https://www.facebook.com/unswbakesoc/', '[''unswbakesoc@gmail.com'']', '9th November 2011');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswfx', '1671769412907386', 'The University of New South Wales''s FX Society is an organisation of individual traders specialising in foreign exchange capital market. ', '812', '', '1671769412907386', '0', '46', 'https://scontent.xx.fbcdn.net/v/t1.0-9/29214688_1671769416240719_5187093314037350400_n.png?_nc_cat=0&oh=c72f4f1828e9c4045c2153316466f6c6&oe=5B9711C6', '1671769412907386', 'https://www.facebook.com/unswfx/', '[''unswfxsoc@hotmail.com'']', '2015');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswbballsoc', '1852826798282768', 'The society for all things basketball. Official facebook page of the UNSW Basketball Society (Bballsoc). Stay updated on club news and events here!', '960', 'https://orgsync.com/81233/chapter', '1852826798282768', '0', '47', 'https://scontent.xx.fbcdn.net/v/t31.0-0/p180x540/14608811_1852826798282768_2802846689487920547_o.jpg?_nc_cat=0&oh=e69e446de272825e24f80f91816ebd5d&oe=5B82E012', '1852826798282768', 'https://www.facebook.com/unswbballsoc/', '[''unswbballsoc@outlook.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswsurgicalsociety', '1068639023220090', 'UNSW SurgSoc is a UNSW Medicine student-run body that promotes surgical interest & skill development through educational events, workshops & opportunities.', '1369', 'http://unswsurgsoc.org', '1068639023220090', '1200', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/14067710_1068639023220090_2748191643082505094_n.jpg?_nc_cat=0&oh=15359344714eaafa5dcd7082bdb3c759&oe=5B836AF5', '1068639023220090', 'https://www.facebook.com/unswsurgicalsociety/', '[''secretary@unswsurgsoc.org'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWLoLSociety', '1759362704131532', 'UNSW LoLSoc is a community which aims to provide an active casual and competitive gaming scene within our university and on a broader scale, throughout Sydney.', '3189', 'http://www.unswlolsoc.com', '1759362704131532', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/29542099_1759362704131532_2853570237383550716_n.jpg?_nc_cat=0&oh=39b250e5c7fd6422d51bff839981dbd0&oe=5B99F76C', '1759362704131532', 'https://www.facebook.com/UNSWLoLSociety/', '[''unswlolsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmsoc', '1934868073221652', 'The UNSW Management Society is the constituent club of the School of Management at the Australian School of Business.', '1816', 'www.unswmsoc.com', '1934868073221652', '0', '35', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/30656248_1934868079888318_7886157041809489920_o.jpg?_nc_cat=0&oh=64bc10720ad32b629161f2a66adf6cf0&oe=5B927980', '1934868073221652', 'https://www.facebook.com/unswmsoc/', '[''general@unswmsoc.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswVeggieSoc', '385146408211503', 'We hold weekly delicious, healthy and vegetarian lunch stalls! Find us between the Roundhouse & Blockhouse on Tuesdays 12PM - 2PM during semester.', '1384', 'https://orgsync.com/81143/chapter', '', '', '', '', '', 'https://www.facebook.com/unswVeggieSoc/', '[''unswvegetariansociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWCardioSoc', '1225161924175918', 'UNSW Cardiology Society is an organisation which aims to facilitate learning within the field of cardiovascular medicine for medical students.', '956', 'http://www.medsoc.org.au', '1225161924175918', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/12039465_1225161924175918_7854719148586823824_n.png?_nc_cat=0&oh=0298b56df6211d66c8d96920e61db413&oe=5B87CCB8', '1225161924175918', 'https://www.facebook.com/UNSWCardioSoc/', '[''president.cardiosociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('Cinematicsociety', '1027238620744079', 'We are a society based in UNSW that focuses on all aspects of film and media production.

✉️: cinematicsocietyunsw@gmail.com', '470', '', '1027238620744079', '0', '46', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/17390639_1027238620744079_8992465234392444694_o.jpg?_nc_cat=0&oh=dafea6f6e7067f98723ac35710b443f4&oe=5B88EEF6', '1027238620744079', 'https://www.facebook.com/Cinematicsociety/', '', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWArchSoc', '843427122509376', 'Arc affiliated society at the University of New South Wales for the Bachelor of Architectural Studies and Masters of Architecture program, with over 600 constituent members.', '765', '', '843427122509376', '0', '-6', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/28059452_843427122509376_9071246819430493245_n.jpg?_nc_cat=0&oh=563c874561d031e087e976c128336c48&oe=5B9662EF', '843427122509376', 'https://www.facebook.com/UNSWArchSoc/', '[''UNSWArchitectureSociety@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmediasociety', '930653807049663', 'UNSW Media Society represents media students from all streams, providing opportunities to network and gain further experience in the industry. ', '2049', '', '930653807049663', '0', '46', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/1614057_930653807049663_8098374271487453919_o.jpg?_nc_cat=0&oh=107bbea641bc7f35da36cbf869e9324f&oe=5B52C39C', '930653807049663', 'https://www.facebook.com/unswmediasociety/', '[''mediasocietyunsw@outlook.com'']', '2010');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('fmaa.unsw', '418548984987127', 'The FMAA is Australia''s largest careers & professionally focused student society.', '3345', 'http://www.fmaa.com.au/', '418548984987127', '100', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/10409025_418548984987127_3865707152589516555_n.jpg?_nc_cat=0&oh=3a8f1b1de9aa844556761ac393727d0c&oe=5B891501', '418548984987127', 'https://www.facebook.com/fmaa.unsw/', '[''unsw.info@fmaa.com.au'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswaisoc', '436199683459215', 'UNSW AISOC is a newly founded society that aims to foster a greater understanding of, and interest in Alternative Investments among students.', '612', 'https://www.unswaisoc.org', '436199683459215', '0', '15', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/30629750_436199683459215_3695227602349734578_n.jpg?_nc_cat=0&oh=5956ffc400f5e31e4a0efc935541c15b&oe=5B514C2F', '436199683459215', 'https://www.facebook.com/unswaisoc/', '[''aisoc.unsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWadsoc', '189968975077405', '', '765', 'https://www.arc.unsw.edu.au/clubs/adventurers-society', '189968975077405', '0', '36', 'https://scontent.xx.fbcdn.net/v/t31.0-0/q81/p480x480/26221185_189968975077405_8872617055913023030_o.jpg?_nc_cat=0&oh=3b6489929258cf8af78eabee08c0c086&oe=5B555EA9', '189968975077405', 'https://www.facebook.com/UNSWadsoc/', '[''adsocunsw@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('ACCSOCUNSW', '1709462905802544', 'A society dedicated to keeping our members informed about the job market and provide a social platform.', '2800', 'http://accsocunsw.com/', '1709462905802544', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/29744967_1709462905802544_1405786704584611565_o.jpg?_nc_cat=0&oh=96f842317bd1bf803831af8520ad9bd7&oe=5B979419', '1709462905802544', 'https://www.facebook.com/ACCSOCUNSW/', '[''info@accsocunsw.com'']', 'Rui Ge, Yaseen Iskander');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('aprsunsw', '1832023386808458', 'Aimed at Developing and Connecting Creative Minds', '1384', 'http://www.aprsunsw.com', '1832023386808458', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/q87/s720x720/27625158_1832023386808458_8726144636463028070_o.jpg?_nc_cat=0&oh=6fa0cfc05cfa9e9d354a72718b20c75a&oe=5B8AC449', '1832023386808458', 'https://www.facebook.com/aprsunsw/', '[''aprsunsw@gmail.com'']', 'August 2012');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswtacsoc', '2021145904592650', 'Welcome to The Tea & Coffee Society at The University of New South Wales!', '1663', 'https://www.facebook.com/groups/377342729050958/?fref=ts', '2021145904592650', '0', '11', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/28164469_2021145904592650_4473322988214682315_o.jpg?_nc_cat=0&oh=727afa3e78daa05aa66f04e78e2f1d3e&oe=5B8CCA6B', '2021145904592650', 'https://www.facebook.com/unswtacsoc/', '[''unswtacsoc@gmail.com'']', 'Adam Wilkinson 2013
');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswmathsoc', '1760537650636233', 'A society for those who are passionate about or have an interest in mathematics.', '3711', 'http://mathsoc.unsw.edu.au', '1760537650636233', '0', '46', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32148293_1760537653969566_2583760739390980096_o.jpg?_nc_cat=0&oh=4303e02a832826b83b8858d6c5e7dc56&oe=5B9C3D08', '1760537650636233', 'https://www.facebook.com/unswmathsoc/', '[''unswmathsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('FINSOCUNSW', '591360611219124', 'UNSW FINSOC', '1864', 'http://www.unswfinsoc.org.au', '591360611219124', '0', '46', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31562159_591360614552457_2929564984641847296_o.png?_nc_cat=0&oh=19597d6aad8290f23c04aaf58030c264&oe=5B557B24', '591360611219124', 'https://www.facebook.com/FINSOCUNSW/', '', '2015');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswsocialsoccer', '1602277349804835', 'UNSW Social Soccer Society plays casual pick-up football on the Alumni Lawn every Wednesday and Thursday from 3-5pm during semester! 

Head to our group for all event updates! 
https://www.facebook.com/groups/SocialSoccerSociety/ 
', '1472', 'http://www.unswsocialsoccer.com', '1602277349804835', '1200', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/20767866_1602277349804835_6761317656789536229_n.png?_nc_cat=0&oh=809ce272f85fd47cf537e7ca53922149&oe=5B8DB533', '1602277349804835', 'https://www.facebook.com/unswsocialsoccer/', '[''unswsoc3@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswquidditch', '1806940599328786', 'A society interested in participating in playing Muggle Quidditch games recreationally/competitively. this breath-taking sport is a combination of lacrosse, Olympic hand-ball, dodgeball, and magic-8-ball. Anyone can play!', '1363', 'unswquidditch.com', '1806940599328786', '0', '53', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/30419970_1806940599328786_2876901827721598030_o.jpg?_nc_cat=0&oh=97ceeb5f52e064ca5dc6f83f288e4a8e&oe=5B55201A', '1806940599328786', 'https://www.facebook.com/unswquidditch/', '[''exec@unswquidditch.com'']', '2011');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWEngSoc', '1687889861287860', '', '5601', 'https://www.unswengsoc.com/', '1687889861287860', '0', '45', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/31919468_1687889867954526_9024965855112331264_o.jpg?_nc_cat=0&oh=aa844dda8be41043684b2cb752b489f9&oe=5B9B98B8', '1687889861287860', 'https://www.facebook.com/UNSWEngSoc/', '[''contact@unswengsoc.com'']', '2011');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('cevsoc', '2052211741717653', 'Welcome to the Civil and Environmental Engineering Society of the University of New South Wales

Email to us: cevsoc@gmail.com
Join us on OrgSync: https://orgsync.com/81258/chapter', '1834', 'https://orgsync.com/81258/chapter', '2052211741717653', '850', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32073908_2052211745050986_3594291554010791936_o.jpg?_nc_cat=0&oh=56bc1c2a44cb848bfd05682d63d4afa7&oe=5B8AEEC6', '2052211741717653', 'https://www.facebook.com/cevsoc/', '[''cevsoc@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('wieunsw', '1516169688480332', 'Join the UNSW Women In Engineering Society today!

Membership form >> https://docs.google.com/forms/d/e/1FAIpQLSeOs1SLJiQ6D6_kVpMJitaB8olShWikqldZzO9i11AdTUDhLQ/viewform

Join our Facebook Group >>
https://www.facebook.com/groups/1810352802568621/', '1965', 'www.unswwie.weebly.com', '1516169688480332', '0', '46', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/27908151_1516169688480332_6472760698920393999_o.jpg?_nc_cat=0&oh=3f04b8aad9f55c3ff99c1a2ba9374fa7&oe=5B92BFE8', '1516169688480332', 'https://www.facebook.com/wieunsw/', '[''admin@unswwiesoc.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswlawsoc', '10156107106372418', 'The UNSW Law Society is the peak representative body for all students in the Faculty of Law. We seek to develop UNSW Law students professionally, personally and socially; helping students to aspire towards their professional and personal paths.', '5156', 'www.unswlawsoc.org', '10156107106372418', '0', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/28055756_10156107106372418_2619988225754633238_n.jpg?_nc_cat=0&oh=27006ccbd450462441b8fadea89fa1fb&oe=5B90150E', '10156107106372418', 'https://www.facebook.com/unswlawsoc/', '[''presidents@unswlawsoc.org'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('unswkpop', '978160502342023', 'Founded in 2011, we are a vibrant and dynamic group of students who share a common interest in Korean pop culture!', '1405', 'http://www.unswkpopsociety.blogspot.com/', '978160502342023', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/28828469_978160502342023_1251179502314641944_o.jpg?_nc_cat=0&oh=aafac202e23312bae6e075bd559c3d4a&oe=5B8216AA', '978160502342023', 'https://www.facebook.com/unswkpop/', '[''exec.unswkpop@gmail.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('ecosoc.unsw', '1031815140243968', 'The UNSW Economics Society (EcoSoc) is one of the leading Economics student organisations in Australia. It is based within UNSW Business School and works c', '2287', 'http://www.unswecosoc.com/', '1031815140243968', '0', '0', 'https://scontent.xx.fbcdn.net/v/t31.0-8/s720x720/12891520_1031815140243968_8297984645921301791_o.jpg?_nc_cat=0&oh=bccf163ece736fd33a0ca6ec09c95e0c&oe=5B968266', '1031815140243968', 'https://www.facebook.com/ecosoc.unsw/', '[''info@unswecosoc.com'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWEdSoc', '1719625868103682', 'Involve. Inspire. Innovate.
A student-led, constituent society of UNSW''s School of Education, representative of all students undertaking a degree in Education. 
 ', '953', '', '1719625868103682', '1100', '0', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/26219490_1719625868103682_9214736048165214759_n.jpg?_nc_cat=0&oh=61a382b9d06793f9a39a47246a46c508&oe=5B9977CF', '1719625868103682', 'https://www.facebook.com/UNSWEdSoc/', '[''edsoc.president@gmail.com'']', '2015');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('UNSWLawRevue', '163338683831076', 'Comedy sketch show with singing, acting, dancing, and a live band!

Join our FB group here if you''re keen to be a part of Revue this year!

https://www.facebook.com/groups/2219773519/?ref=br_rs', '1293', 'http://www.lawrevue.org', '916143248550612', '0', '66', 'https://scontent.xx.fbcdn.net/v/t1.0-9/s720x720/32239529_916143251883945_5561328894168006656_n.png?_nc_cat=0&oh=9e69ef729c89fe81967de672b1d3249e&oe=5B525B4B', '916143248550612', 'https://www.facebook.com/UNSWLawRevue/', '[''producers@lawrevue.org'']', '');
INSERT INTO UNSWSocietyAbout (username, id, about, fan_count, website, cover__cover_id, cover__offset_x, cover__offset_y, cover__source, cover__id, link, emails, founded) VALUES ('', '', '', '', '', '', '', '', '', '', '', '', '');

-- Table: UNSWSocietyEvents
CREATE TABLE UNSWSocietyEvents (fbEventsID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, data__id, data__description, username STRING, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To VARCHAR (255));
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (622, '1704436966292504', '🔥🔥🔥END OF SEM KPOPSOC MOVIE x DINNER 🔥🔥🔥

***

Still a LONER at uni, or want to say your LAST FAREWELL to your kpop buddies before the semester ends? 

Want to make a LOVE SCENARIO that you haven’t already made on UNSW Love Letters?  Or just sick of studying like a GOOD BOY over finals? 

What better solution than a movie and dinner!🎬🎥🎬🍱🥘🍱 We will be watching a movie at uni then heading over together to the city for a dinner at Myung Jang.

***

NOTE:
This event is for UNSW Kpop Society members.
Membership is $3 (Arc) / $6 (Non-Arc). You can sign up on the day. 

MOVIE: 🎬🎬🎬
When: Wednesday 16th of May, 5-7pm
Where: Matthews 310

DINNER:🥘🥘🥘
https://goo.gl/forms/qirshIp60eZBCtam1
When: Wednesday 16th of May, 7.30pm 
Where: Myung Jang (O Bal Tan)

***

Please fill in the form to secure your spot. Deadline is Sunday 13th of May 11.59PM.

See you all there! 😃', 'unswkpop', NULL, '-33.87585', '151.20763', '29', 0, '109', 'UNSW Kpopsoc: Movie X Dinner', '16 May', '17:00', '22:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (623, '170781393585282', 'Bring out the Bollywood fanatic in you and get the best seats in the house with your IndSoc fam.
Get your fraands, pick your snacks, but hang on!
YOU get to decide what we screen on Friday😍. 
Keep your eyes peeled for the movie poll we&#039;ll be droppin&#039; soon and be sure to vote✅. 

Also, stay tuned as we&#039;ll be offering snack combos so you could grab a quick bite or help yourself during the intermission(yes, of course😉!).

Event: IndSoc Movie Night
Venue: Central Lecture Block 2
Timings:5-8pm



Proudly sponsored by Arc.', 'unswVishwaas', NULL, '45.334588', '-75.6924083', 0, '30', '67', 'IndSoc Movie Night 2018', '11 May', '17:00', '20:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (624, '1906440469434612', 'Do you love Disney? And musicals? How about Disney musicals! MTS and Disney Society are proud to present the Lion King, so come and relax with some free food and bring your friends. Hope to see you all there!', 'unswdisneysociety', NULL, '-30.02567', '153.19558', 0, '12', '20', 'Movie Screening: LION KING', '10 May', '17:00', '19:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (625, '382096568939575', '', 'AFIllawarra', NULL, '-34.426245141', '150.89516945605', '5', 0, '20', 'Traveling French Film Festival 2018', '18 May', 0, 0, '18:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (626, '219747442091623', 'REGISTER FOR AUSTRALS TRIALS HERE: https://goo.gl/forms/nM9wxutlPqXFESx63

Registration to trial closes at 8pm on Wednesday 9 May.

The Australasian Intervarsity Debating Championships (Australs) will be held at the University of Malaya from 27 June to 5 July 2018. UNSW is currently sending 5 teams and 6 adjudicators, however we may be allocated more.

Australs is a great opportunity to debate or adjudicate at an international major tournament, with participants coming from across Australia and Asia. With 4-star hotel accommodation, socials every night, and multiple free days embedded within the schedule, it&#039;s also a convenient excuse for a holiday!

Tournament registration costs $730 for debaters and adjudicators, covering both food and accommodation for the tournament. Debsoc will be providing subsidies to all novices and pros who have met their service points requirements.

TRIAL DETAILS:

The trial policy can be found here: https://drive.google.com/file/d/1JG_ujI0zXGnpXsLzRgn1gmJCn1wFNoh7/view

Debater trials will be held on Sunday 13 May, with callback debates held on the same day. Debater trials will be on the 3rd floor of the Law Building, with check-in in Room 302. If are trialling to debate and you cannot make any of the trial times on the morning of Sunday 13 May, contact our VP (Externals) Jerson Balaton on Facebook or email (jerson.balaton&#064;gmail.com) to arrange a video trial.

Adjudicator trials will be held at internals on Monday 14 May.

All people trialling for the contingent will need to pay a $50 deposit to the following account:

Account Name: UNSW Debating Society
BSB: 062 303
Account number: 0090 3871

If you are selected for the contingent this deposit will go towards the $730 registration fee. If you are not selected it will be refunded.

You will be emailed on Sunday 6 May with information about the time of your trial debate and other details regarding trials.

If you have any questions, feel free to reach out to Jerson Balaton on Facbeook, or email at jerson.balaton&#064;gmail.com!', 'Debating.UNSW', NULL, '-33.77807', '151.02534', '17', 0, '31', 'UNSW Australs Debating Trials', '13 May', 0, 0, '8:30');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (627, '1668179776632700', 'The UNSW Law Society is proud to present the Allens Linklaters UNSW Law Ball 2018: Underground Escape

You may have been refused entry at the Berghain but we can guarantee that you won&#039;t be turned away from this marvellous, black tie event. Allow all your grungy, exposed-brick, industrial aesthetic dreams to come to life amidst a spectacular display of light and sound. 

Doltone House ATP is a unique, industrial-style venue located just a short walk away from Redfern Station. We&#039;re so excited to host the event at this stunning venue which is only around for a short while before it gets turned into offices #gentrification #zoning #landlaw.  

DETAILS
WHAT: UNSW Law Ball
WHERE: Doltone House Australian Technology Park, Eveleigh 
WHEN: Saturday 4 August 2018 - 7:00pm - 12:00am
AFTER PARTY: TBA 
DRESS: Formal 

TICKETS ON SALE 9AM MAY 25 

The Activities Portfolio is thrilled to announce that Doltone House ATP is our largest venue with the biggest capacity yet. However, Law Ball has frequently been known to sell out in under an hour so make sure you grab your tickets as soon as they become available. We&#039;ll be selling tickets for individuals, pairs, groups of 5 and tables of 10. We strongly recommend buying in tables of 10 if you want to guarantee that you&#039;ll sit with your friends.

Prices:
UNSW Law Students: $140 + booking fee ($143.80 total)
Non-UNSW Law Students $150 + booking fee ($154 total) 

The ticket includes unlimited drinks, a 2-course plated meal and dessert, as well as transport, entry and drinks at the after party.

This event is 18+ only. 

Contact:
Shivika - activities&#064;unswlawsoc.org
Nicola - events&#064;unswlawsoc.org', 'unswlawsoc', NULL, '-33.89615623424', '151.19511365891', '236', 0, '494', 'Allens Presents: UNSW Law Ball 2018 - Underground Escape', '4 August', '19:00', '0:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (628, '166321657359488', 'You&#039;re invited to sit with us and not only see but hear from those directly impacted.

All fields including but not limited to Law, Social work, criminology, medicine, education and business all play a role in the influences of working with our children and how these fields can support the needed change for the over-representation of Indigenous children being taken from their families and placed into out of home care. 

Grandmothers against Forced  Removals are calling on the child protection system to stop stealing Aboriginal children from their families. There are examples in the film that demonstrate the deep flaws [and horrific impact] of the child protection system, with unjust and uncalled for child removals driven by racism and discrimination.

GMAR advocate for a change of policy that would see children placed with extended Aboriginal family, more support for Aboriginal families through intervention and more investment in Aboriginal communities that allow for Aboriginal people to ensure they are making their own decisions without governmental control and racial regimes.

Special guest such as Grandmothers of Forced Removals (GMAR) founder Aunty Hazel Collins and daughter Helen Ryan will be present during this screening to provide insight and truth to UNSW and its surrounding communities followed by others. 


Please note this is a ticketed event, please register at the following for catering purposes;
- $5 for all students and people under 24 
- $20 for Adults 
 
https://www.eventbrite.com.au/e/after-the-apology-screening-and-special-panel-unsw-tickets-44468466380?aff=es2', 'vanessa.nessa.ness', NULL, '-33.917180329607', '151.2279384663', '75', 0, '140', 'UNSW + community - After the Apology special screening and panel', '21 May', '17:30', '20:30', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (629, '626249567714189', 'Skills workshops aim to give students tips and information to assist them in various stages of the clerkship application process and will feature topics listed below. Workshops are delivered by representatives from a sponsor firm and hence are tailored to the application process of the presenting firm, but are relevant to job applications in general. Students can apply the skills they learn at these workshops in the clerkship application process and in their future careers.

Skills workshop topics are as follows, and are presented by the firms indicated:

- CV and Cover Letter (MinterEllison)
- Commercial Awareness (Allen &amp; Overy)
- Cover Letter (Baker McKenzie) 
- Generalist Q&amp;A (Herbert Smith Freehills)
- Infrastructure Law (Pinsent Masons)
- Interview (Ashurst)
- Personal Branding (Allens)
- Resilience (King &amp; Wood Mallesons)
- Wellbeing (Corrs Chambers Westgarth)

Please note that each event will occur at 1-2pm in the UNSW Law Building, please refer to the event details above for dates and room locations for individual skills workshops.', 'unswlawsoc', NULL, '-33.917180329607', '151.2279384663', '12', 0, '194', 'Private Law Careers: Skills Workshop Series', '14 May', 0, 0, 'Mon 13:00 – 14:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (630, '401135087024950', 'The Firm Presentation series invites our corporate sponsors to speak about their firm and career opportunities available for students. Don&#039;t miss this invaluable opportunity to develop your professional skills, understanding of the private law industry and knowledge of specific law firms! 

This series allows prospective clerkship applicants to obtain insight and ask questions about our sponsor firms&#039; practice areas, culture and values. This event will allow all students regardless of their degree progression to be exposed to the opportunities at each of our sponsorship partners. 

Please note that the Firm Presentations are accompanied by the Private Law Careers: Skills Workshop Series to give students tips and information to assist them in various stages of the clerkship application process! 

The law firms attending the firm presentation and skills workshop series are as follows:

- Allen &amp; Overy
- Allens
- Ashurst
- Baker McKenzie
- Clayton Utz
- Clifford Chance
- Corrs Chambers Westgarth
- Gilbert + Tobin
- Herbert Smith Freehills
- Jones Day
- King &amp; Wood Mallesons
- MinterEllison
- North Rose Fulbright
- Pinsent Masons

Please note that each event will occur at 1-2pm in the UNSW Law Building, please refer to the event details above for dates and room locations for individual firm presentations.', 'unswlawsoc', NULL, '-33.917180329607', '151.2279384663', '9', 0, '302', 'Private Law Careers: Firm Presentation Series', '17 May', 0, 0, 'Thurs 13:00 – 14:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (631, '2200121016870485', 'Have you heard about the sheer greatness of Revue in Semester 1 and keen to join another show running next sem?

Law Revue is holding its official Launch Party on 24th May at Occidental! Whether you’re new or a return, come along and meet our amazing team and learn about everything Law Revue has to offer you both personally and professionally.

All students welcome! See you there!

WHAT: UNSW Law Revue Launch Party!!!
WHEN: Thursday 24th May &#064; 7pm
WHERE: Level 2 of The Occidental (43 York St, Sydney, NSW 2000) 
WHY: Come meet great people and learn about Law Revue! (did I mention there’s a bar tab?)', 'UNSWLawRevue', NULL, '-33.8668', '151.20557', '25', 0, '49', 'Law Revue: Launch Party', '24 May', '19:00', '23:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (632, '165506407447369', 'Considering applying for a clerkship this year? Want to find out more about the firms and opportunities available in a buzzing but relaxed environment? Then make sure you come along to the most anticipated Clerkship event of the year - Clerkship Cocktail Evening!
 
Clerkship Cocktail Evening is a fantastic networking opportunity for penultimate students to meet firm representatives and talk about their career options and the upcoming clerkship process over some drinks. This year, the evening will be hosted at the Tea Room in the Queen Victoria Building.
 
This event typically reaches capacity so register quickly to ensure you reserve your spot. Any registrations after capacity is reached will be put onto a waitlist. Penultimate students will be prioritised.
 
 
REGISTER HERE:
https://docs.google.com/forms/d/e/1FAIpQLSfo95txC30IpEm12GxljbvSZC_BdEmihokO3W7QNYXqc_FGrQ/viewform?usp=sf_link

Registrations close on Friday 4th May 11:59pm 
 
TIME: 6PM-8:30PM
DATE: Wednesday, 9th May
WHERE: The Tea Room, Queen Victoria Building
DRESS CODE: Corporate attire
 
 
The following firms will be attending:
 
Allen &amp; Overy
Allens Linklaters
Arnold Bloch Leibler
Ashurst
Baker McKenzie
Clayton Utz
Clyde &amp; Co 
College of Law
Corrs Chambers Westgarth
DLA Piper
Gilbert + Tobin
Herbert Smith Freehills
King &amp; Wood Mallesons
MinterEllison
Thomson Geer
White &amp; Case
 
For any further questions about the Clerkship Cocktail Evening, please contact Julie at julie.wong&#064;unswlawsoc.org', 'unswlawsoc', NULL, '-33.871080572818', '151.20669357945', 0, '82', '173', 'Clerkship Cocktail Evening', '9 May', '18:00', '20:30', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (633, '199805740811917', 'Luk &amp; Partners is located in Hong Kong, through its association with Morgan, Lewis &amp; Bockius, Luk &amp; Partners leverages the platform of a global law firm to serve seamlessly the legal needs of its clients, many of which are listed in major stock exchanges around the world, as they embark on cross-border investments, corporate transactions, and trade, and as they manage complex multijurisdictional compliance projects, investigations, and disputes.
Registration link: https://goo.gl/forms/ppU18JQLN6umMEAH3 
(For more information, please refer to our website: https://www.morganlewis.com/regions/luk-and-partners)', 'unswlawsoc', NULL, '-33.77807', '151.02534', '6', 0, '24', 'Luk &amp; Partners in Association with Morgan, Lewis &amp; Bockius Firm', '18 May', '13:00', '14:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (634, '242563199818147', 'Have you wondered about what kind of careers are in the government? Do you see yourself working for the good of the Australian society? Join us for the Careers in the Government Panel, where you will get to hear directly from professionals working in different government departments, including the Australian Government Solicitor, ACCC, ATO and more!

Our esteemed panellists will give you valuable insight into what their role involves, what they consider to be the pro and cons of the government, what they look for when employing graduates for the government department and other fascinating perspectives! You will also have the opportunity to ask questions directly to our panellists. If you have ever thought of a future in government, this is a must-attend event!

The Panel will Include: 
&gt; Louise Amundsen (Assistant National Manager - AGS, former  Principal Lawyer in the Royal Commission into Institutional Responses to Child Sexual Abuse) 
&gt; Sally Embleton (Lawyer - AGS)
&gt; Peter Thornton (Program Manager - Australian Taxation Office)
&gt; Blake Donald (Senior Investigator - ACCC)

Make sure you click ‘attending’ to find out more about each of our speakers and keep updated about the event! 

If you have any questions for the panel in general, please don&#039;t hesitate to email Sachin Kinger at publicinterestcareers&#064;unswlawsoc.org or Diana Lee at diana.lee&#064;unswlawsoc.org', 'unswlawsoc', NULL, '-33.77807', '151.02534', 0, '45', '121', 'Careers in the Government Panel', '10 May', '18:00', '20:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (635, '206758226776887', 'Corrs Chambers Westgarth is hosting a breakfast to give you an exclusive opportunity to come along, get a tour of the office, meet partners from various areas of practice and learn more about the firm culture! 

RSVP is essential and as spots are limited, will be on a first come first served basis with preference given to penultimate students. RSVP here: https://goo.gl/forms/MpDNFoKKbESgUBZD2

Date: Wednesday 23 May 2018 
Time: 7:45am for 8am breakfast, 8:20am start
Venue: Corrs Chambers Westgarth, Level 17, 8 Chifley 8-12 Chifley Square, Sydney', 'unswlawsoc', NULL, '-33.864249', '151.211523', '18', 0, '55', 'Corrs Chambers Westgarth Big Breakfast', '23 May', '7:45', '9:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (636, '218031152121489', 'UNSW Law students are invited to the Sydney offices of Allen &amp; Overy (Level 25, 85 Castlereagh St) to watch the Grand Final of the Allen &amp; Overy Private Law Moot, from 4:30pm–6:30pm on Monday 21 May. The Honourable Justice Robert McDougall of the Supreme Court of New South Wales, Mr Jamie Lee, King&#039;s College London, and Mr Michael Shepherd, Partner at Allen &amp; Overy, will preside.
 
All UNSW law students are welcome, but this event is a particularly valuable opportunity for those interested in commercial law careers or advocacy. The moot will be followed by a networking and cocktail event, where you can meet lawyers from Allen &amp; Overy, mooters and volunteer judges.
 
The event is open to all members of the public, but registration is essential. Please register by 5pm on Friday 11 May at bit.ly/AOPrivateLawMoot
 
The Allen &amp; Overy Private Law Moot is an intervarsity mooting competition hosted by UNSW Law. This prestigious competition, now in its fifth year, is Australia’s only national moot focused on commercial law topics. This year, 16 teams from universities across Australia, as well as Singapore, New Zealand, Pakistan and the South Pacific will be competing. The 2018 problem question focuses on complex issues in equity and remedies, and was written by Professor Simone Degeling and Jessica Hudson from UNSW Law.
 
To get to Allen &amp; Overy on the day, please enter the building via 85 Castlereagh Street and take the lift up to Sky Lobby on level 7, where there is another set of lifts up to reception on Level 25.
 
If you have any further questions, please email Veronica Sebesfi, Anne Wang and Christopher Chiam at privatelawmoot&#064;unswlawsoc.org.', 'unswlawsoc', NULL, '-33.87012', '151.20916', '15', 0, '27', 'Grand Final of the Allen &amp; Overy Private Law Moot', '21 May', '16:30', '18:30', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (637, '947396772098117', 'Join the UNSW Law Society and PwC as we host the inaugural Corporate Careers Panel. The morning will give a unique insight into what it’s really like to work with PwC and how exactly their leading legal practice functions within the firm. 

In attendance will be a Partner, Senior Associates and current Graduates who will be there to share first-hand experiences of their time working in Legal within a Professional Services firm.

DATE: Tuesday 8th May 2018
TIME: 8:30AM-10:00AM
WHERE: PwC Sydney, One International Tower, Watermans Quay, Barangaroo

RSVP for the event here: https://goo.gl/forms/P2qVUJ6wmAoxUP2s1', 'unswlawsoc', NULL, '-33.863743082583', '151.20215713978', 0, '18', '121', 'PwC&#039;s Corporate Careers Panel', '8 May', '8:30', '10:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (638, '2140357816193300', 'The Grand Final for the 2018 Clayton Utz Advanced Negotiations Competition is finally here! Come along to support two fantastic teams as they go head to head in what will be an impressive negotiation. A great opportunity to learn from the best, everyone is welcome to come along. 

Grand Finalists: TBA

Judges:
Alan Limbury 
Aaron Moss (Clayton Utz)
Carolyn Scott (Clayton Utz)

Location: Clayton Utz - 1 Bligh St, Sydney NSW 2000

Please arrive at 5.45pm for a 6pm start.

Hope to see you there!', 'unswlawsoc', NULL, '-33.86488', '151.2105', '6', 0, '20', 'Clayton Utz Advanced Negotiations Competition - Grand Final', '22 May', '18:00', '20:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (640, '1605640972882288', 'Wanna TUNE into some music from LawSoc’s most talented musicians? People may have told you it only leads to TREBLE but we’ve been told they’re pretty SHARP. Jokes may not be our FORTE but we guarantee The 2018 Law Band is definitely NOTE-WORTHY! 

Lawlapalooza is one of the major events on LawSoc’s social calendar, and you don’t want to miss it. Come down to Roundhouse and let the Law Band jazz your pants off for an evening! This year’s Lawlapalooza is a pure, unadulterated music concert – so ditch those thick law readings and come enjoy a night of FREE music with chilled drinks. Bring your friends or you might regret it

TIME: Friday 18th May 2018, 6PM - 9PM
LOCATION: Roundhouse, UNSW
COST: FREE!', 'unswlawsoc', NULL, '-28.5194', '153.5437', '49', 0, '50', 'Law Band presents: Lawlapalooza 2018', '18 May', '18:00', '21:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (641, '194667137823516', 'We are now back at the Roundhouse! 

Make your way down to our weekly Texas Hold&#039;em Freeroll tournament. 

Prizes will be awarded for the top 3 players of the night, which includes bar tabs + drink vouchers. 

This student club activity is proudly supported by Arc &#064; UNSW. For more information on Arc Clubs visit www.arc.unsw.edu.au. Invite all your friends!!!', 'SydneySkiez', NULL, '-28.5194', '153.5437', 0, '2', '2', 'Week 10: UNSW Poker Society Freeroll', '10 May', '17:00', '19:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (642, '370712376750881', 'ALWAYS WANTED TO BE A SUPERHERO?

Well, it only takes an hour to donate blood and it could SAVE someone&#039;s life!

Every blood donation can save THREE lives! Every few seconds, someone in Australia needs blood which means we all need to play our part.

So here&#039;s your chance to put on your cape and save people around the world because BSOC is holding its inaugural Red Cross Blood Drive during WEEK 10 (7TH-11TH OF MAY). There is a list of criteria you must fulfil in order to give blood, so fill out the registration form and enrolment form below before 
https://goo.gl/forms/TwM8jmtMaEvjBvaI3
REGISTRATION HAS BEEN EXTENDED TO FRIDAY 4TH OF MAY 6PM

Whether you&#039;re an A, B, AB or O, you&#039;re definitely the type to donate blood.

KEY FACTORS OF ELIGIBILITY:
- must be over 18
- cannot have been sick in the past two weeks
- must not have had a tattoo in the last 4 months
- cannot have a serious heart condition
- cannot be low in iron

Note: Spots are limited. First in, first served basis applies.', 'unswbsoc', NULL, '-33.8732', '151.20602', 0, '53', '104', 'UNSW Business Society Presents: Red Cross Blood Drive', '7 May', 0, 0, '12:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (643, '1625448937531364', 'Bachata Classes with Juan Ignacio Ruiz are held in the Business Lounge located on the 6th Floor of the Business Building. Access via the West Wing.

5-6pm: Intermediate
6-7pm: Beginners
7-8pm: Advanced (odd uni weeks)
            FREE Social (even uni weeks)

Come around 15 mins early to allow enough time for sign up so you can enjoy the full hour. 

Don&#039;t forget to bring your dancing shoes if you have them, other wise just wear something you can spin in :)

As the class progresses we only take new students in the first two weeks of class blocks: Week 2, 3, 7 and 8 of uni (people with some dance experience are excepted).

Don&#039;t forget to sign up on OrgSync so you can get the discounted price for the classes; 
Arc member: 
Single class: $10
Two classes: $15 (for the same style in the same week)
Block of 5 classes: $40 (this is for consecutive weeks)

Non arc member: $15
Full details of prices will be available on the day. 

See you there!', 'unswlatindancesoc', NULL, '-33.918447362459', '151.23543092581', '2', 0, '78', 'Bachata Wednesday', '16 May', 0, 0, 'Wed 17:00 – 20:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (644, '241555566411190', 'ANDDD the event that you have all been waiting for is back! Due to a sell out event last year, BSOC’s annual Ski Trip makes a big return for you to have an adventure of a lifetime, like Sid in Ice Age!

Come for a journey over 4 days with us where you will get to COOL down from your finals by joining us with one of the coldest winters on record! Whether you’re a seasoned pro skier, learning to snowboard for the first time, or have never even seen the snow before, then this is the event for YOU!

This event is also open to ALL students (not just UNSW) so make sure you spread the word and invite all of your friends because this is an event you will not want to miss!

So what’re you waiting for? Grab your mates and escape from the Ice Age with us as we head on south to Thredbo!

Ski you all there ❤️

#befreeandcometoski

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\

-\-\ INFO -\-\

DATE: Monday 25th - Thursday 28th June
LOCATION: Thredbo Resort
WHO: Open to everyone
PRICE: $595 ARC / $655 NON-ARC

INCLUSIONS:
❄️ 3 Nights accommodation
❄️ 3 Day Thredbo lift pass
❄️ Transport to and from Thredbo
❄️ Daily Mountain shuttle
❄️ 3 Day Ski Equipment Hire (Snowboard hire is an additional $15)
(Additional $50 for 3 x 2hr Ski/Board lessons)
❄️ 3 Hot Breakfasts
❄️ 2 Hot Dinners
❄️ Alcoholic and non-alcoholic beverages
❄️ Live entertainment and private function areas 
❄️ LOTS OF GOOD MEMS

Tickets will be available at our stall from 10AM - 3PM outside QLOUNGE for all of WEEK 9 (MONDAY 30th April - Friday 4th May).

A CASH deposit of $100 can be made at the stall, with the outstanding payment to be made at a later date via bank transfer.

If this payment arrangement isn’t possible for you, please email us on sports&#064;unswbsoc.com and we will seek an alternative course of payment for you, i.e. full cash payment if you don&#039;t own a bank account.', 'unswbsoc', NULL, '-36.502523488804', '148.30746973429', '147', 0, '511', 'UNSW Business Society Presents: Ice Age Ski Trip', '25 June', 0, 0, '3:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (645, '249278332311858', 'The VGen Team is currently electing a new PRESIDENT and SPONSORSHIP DIRECTOR for our 2018 EGM!!! 

Please come around to Room 219 of ASB to join us and have some FREE FOOD!!  
Will, the National Coordinator for VGen, will also be giving a talk to let you know more about what VGen does and what we stand for 

Role descriptions include (MUST BE AN ARC MEMBER TO APPLY): 
President: To oversee and coordinate the activities and administration of the club and to ensure the clubs work runs smoothly by delegating tasks. 
Sponsorship Director: To liaise with external sponsors and other internal portfolios to generate sponsorship connections.

To apply for these positions, please fill out the form below:  
https://goo.gl/forms/xsR1wc9DM0fVJdMM2', 'jackie.wang.144', NULL, '-33.91684847089', '151.22972026703', 0, '15', '16', 'VGen EGM 2018', '11 May', '12:00', '14:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (646, '1977983049185609', 'سینماایرانسا تقدیم می کند

سایه های بلند باد
فیلمی از بهمن فرمان آرا
براساس داستان «معصوم اول» هوشنگ گلشیری
با بازی فرامرز قریبیان، سعید نیک پور، حسین کسبیان

&quot;مترسكي با چهره اي سفيد و دو دست چوبي، كه دو پرنده به آن آويزان است، در كشتزار است. عبدالله ( فرامرز قريبيان)، كه تنها راننده ي روستا است، روي چهره ي سفيد مترسك چشم و دهان و بيني مي كشد و كلاه خود را سر آن مي گذارد. صبح روز بعد پيرزني به نام ننه صغري در مواجهه با مترسك از هوش مي رود. ننه صغري را كه حالتي سرسامي درد به شهر مي برند. شبي تقي آبيار (حسين كسبيان) در مواجهه با مترسك به حال و روز پيرزن مي افتد و او را نيز همراه همسرش براي مداوا با ميني بوس عبدالله به شهر مي فرستند. شبي ديگر نرگس (آتش خير) نامزد عبدالله و دختر كدخدا، از خانه بيرون مي رود و بامداد روز بعد او را با جامه ي سپيد كنار مترسك مي يابند...&quot;', 222644031221688, NULL, '-33.91798964372', '151.23580813408', 0, '9', '17', '‎Cinema IRANSA – سایه های بلند باد‎', '8 May', '18:00', '20:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (647, '382200818927970', 'Want to get involved with Model United Nations but have no prior experience? Want to brush up on your MUN skills, or get a MUN taster before signing up for AMUNC 2018?

Come along to our Introduction to MUN day, where you will learn everything you need to know about Model United Nations - from the rules of procedure to how to write a draft resolution!

We will then hold a demonstration MUN where you can participate or sit back and watch a MUN in action. 

The agenda:
1) Brief guide to MUN 
2) Demo MUN 
3) Q and A about MUN and AMUNC

Afterwards, we will head over to our launch event for dinner and drinks on us!', 'unswunitednations', NULL, '-31.49418', '152.72842', '17', 0, '62', 'Introduction to MUN', '14 May', '16:00', '18:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (648, '413926782406450', 'Are you worried about your WAM? Rather go out to GLAM up and forget about final exams? You could hit the books or you could hit the town for BSOC’s annual pub crawl – the night where the SCHOLARS and the STYLISH come together.

Don’t CRAM in the registration at the last minute! Register your attendance here for important information for the night: 

https://goo.gl/forms/UGVKcqoyy1Bd1om12

There will be opportunities on the night to get FREE drinks, so click ‘going’ on the event to keep yourself posted with updates!

DATE: Thursday 24th May 2018

LOCATIONS:
Side Bar (Meet at 7:00pm)
Scruffy Murphy&#039;s 
3 Wise Monkeys 
The Scary Canary 

DRESS CODE: Get your GLAM on or embrace your inner GEEK - feel free to be creative and wear a mixture of both! However, please ensure to wear hard soled shoes on the night. 

COST: No admission price. 

This is an 18+ ONLY event', 'unswbsoc', NULL, '49.24812', '-122.88306', '108', 0, '123', 'UNSW Business Society Presents: The Glam vs The Wam Pubcrawl', '24 May', '19:00', '22:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (649, '392079897942301', '‘Teh Tarik Session: Building a New Life in Australia ’ is a casual event where UNSW Malaysian students are encouraged to participate in a series of discussions. Our special guest for this session is the Aussizz Group, Immigration Agents &amp; Education Consultants. They will share information regarding the migration process to Australia as well as tips for graduated students to settle down in Australia. 

Date: 11th May 2018 (Friday)
Venue: CLB 1 UNSW
Time: 7.30 - 10 pm (7pm registration)
Attire: Smart Casual

Registration link: https://goo.gl/forms/SQE2Px8iySkxdgtt1

P.S. Light refreshments will be provided. Please register ASAP so that we can gauge the amount of food we will have to prepare.', 'MSOUNSW', NULL, '-33.917124725527', '151.23254739992', 0, '24', '89', 'Teh Tarik Session: Building a New Life in Australia', '11 May', '19:00', '22:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (650, '432641557173875', '🍺🍺 EXOSOC&#039;S SECOND BBQ IS HERE 🍺🍺

The world famous Exotic Beer Society BBQ&#039;s are back and kicking off on Friday 25th May at your beloved Sam Cracknell Pavilion. As always, we&#039;ll have complementary snags and beers for all Exotic Beer Society members. Feel free to drop by or kick back for the whole afternoon 🍻🍻🍻

A reminder that you do must have paid your membership fee in order to receive your free beers. We&#039;ll be accepting payments (plus any prospective new members!) at the BBQ so if you want to maximise that sweet membership value and score beer at every BBQ, be sure to get that sorted 👍

DETAILS
Date: Friday 25th May 
Time: 11am - 3pm
Cost: FREE!!! (to ExoSoc members)
Location: Sam Cracknell Pavilion (next to the Village Green, to the right of the Greenhouse entry)

Keen to see you all there.

FOR BEER AND GLORY', 'EXOSOC', NULL, '-33.917873712201', '151.22766726117', '33', 0, '55', 'ExoSoc End of Semester BBQ # 2', '25 May', '11:00', '15:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (651, '144547269731197', 'UNSW Anjali Tamil Society is proud to present our annual black-tie event: Anjali Ball 2018 “THE ROYAL BALL”

On the 3rd of August, we cordially invite you to experience an unforgettable night at ‘The Ballroom’ at Parra Villa Function Lounge. This is a SELL-OUT event and we cannot stress to you how amazing this night is going to be, so come join us for a classy night as Anjali celebrates another successful year! 

Venue: The Ballroom &#064; Parra Villa Function Lounge 
Date: Friday 3rd August 2018
Time: 7:30pm- 12.30am
Theme: Royalty
Dress Code: Formal (feel free to wear eastern or western outfits)
Ticket Price: EARLY BIRD - $65 | Ends 8th of July | NORMAL - $70. (Because Royalty doesn&#039;t have to be expensive ...)

We have made the event in Parramatta this year, because we know how much more accessible the venue is for everyone. It is only a short 2-minute stroll from Parramatta station, so don&#039;t miss out!

TO PURCHASE YOUR TICKETS: follow the link below:
http://www.qnectapp.com/buy/anjaliball2018

THE ALL – INCLUSIVE TICKET FEATURES:
 	- Professional photographer taking photos throughout the night
 	- 5-hour exclusive formal ball
 	- 3 course Indian Cuisine meal
 	- Enthralling live DJ
 	- Unlimited Red and white wine
 	- Unlimited tea, coffee, soft drinks

If you run into any issues, please feel free to contact:
 	- Ranjeev (0481 111 543)
 	- Tishani (0481 372 920)
 	- Sampavi (0457 999 076)
        - Abirami (0411 355 465)

Tickets are strictly limited and will be issued on a first in first served basis (no reservations). Tickets are non – refundable but can be transferred. This will be a SELL-OUT EVENT so get in early to ensure you do not miss out! 

*******************TABLES + SEATING LISTS*****************

Please have one member of your table to complete the seating form (will be attached a later date) to confirm the people whom you wish to be seated with on the night! Tables are limited to 10 people per table. If you need to be allocated to a table, please message one of us and we will be more than happy to add you and anyone else to another tab', 'UnswAnjaliTamilSociety', NULL, '-33.818767481997', '151.00293387518', '40', 0, '156', 'Anjali Ball 2018 &quot;THE ROYAL BALL&quot;', '3 August', '19:30', '0:30', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (652, '679343622189231', 'The story of Clara and Robert is one of the most poignant musical romances in history. Before her 21st birthday, Clara Wieck was entrenched in a series of legal battles with her father to marry the composer and pianist Robert Schumann; a man she diligently nursed through various afflictions and illnesses later in life, whilst still maintaining her own international career as a concert pianist. One of the most prestigious and progressive musicians of the romantic era, she changed the very nature of piano recitals, reformed expectations of chamber music, and whose revolutionary ideas fostered two of the most prolific young musicians of the era – Joachim and Brahms. Her Piano Trio in G minor is a testament to her revered abilities as both composer and performer. This is accompanied by the exuberance of Robert Schumann’s Piano Quintet, which in itself is considered one of the greatest masterpieces of nineteenth century chamber music. The two pieces complementing the program are tributes to both Clara and her husband; an Homage á Robert Schumann by Hungarian-born György Kurtag, and the newly commissioned work by Australian composer Natalie Williams, New work - Letters to Clara, stand as testament to the Schumanns and their life’s work. 

SCHUMANN | Märchenerzählungen (Fairy Tales) Op. 132
WILLIAMS | New work (Letters to Clara) - first performance 
SCHUMANN | Piano Trio in G minor Op. 17 
SCHUMANN | Piano Quintet Op. 44 in E flat major 

Tickets: $54/$41/$32/$15 (Adult/Senior/Concession/Student rush)', 'MPU.UNSW', NULL, '-33.916903448049', '151.2344455719', 0, '2', '2', 'Australia Ensemble presents: Robert and Clara', '12 May', '8:00', '10:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (653, '201606443950855', 'In its first recital of 2018, the Burgundian Consort will explore the remote realms of the Nordic and Baltic states, with works from Tormis, Gjeilo, and Sisask, before rounding out the program with some traditional madrigals from Elgar, Purcell, and Passereau.
Free, all welcome', 'MPU.UNSW', NULL, '-33.9179669', '151.233019', 0, '16', '24', 'Burgundian Consort Lunchtime Recital', '10 May', '13:00', '14:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (654, '2038441513082158', 'SNSSOC is holding a BBQ this Tuesday from 11 – 3 at Sam Cracknell

Come down to share your L’s in every Nike x OW raffle, or to flex your first winter outfit of the year and meet the new team 🙏

Snags are FREE for members (including shipping)!!! or $2 for non-members', 'snssoc', NULL, '-33.917873712201', '151.22766726117', '13', 0, '29', 'Snssoc &quot;BBQ&quot;', '15 May', '11:00', '15:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (655, '1771072956268851', 'Want to climb away from the stress of uni? Trust in your harness the same way you trusted your 9am attendance? Come join Project Hope for our Rock Climbing event! It’s a great opportunity to monkey around, and have fun with similarly unevolved people!

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
DETAILS:
Date: Sunday, 3rd June 2018
Time: 11AM - 4PM
Location: Sydney Indoor Climbing Gym, St Peters

**Lunch will be provided**

COST:
Group of 4: $26pp (PH Members ONLY)
PH and Arc Members: $28 pp
Non PH and Arc Members: $30pp
Non PH and Non-Arc: $32pp

TICKETS:
To purchase tickets, please click the following link:
https://goo.gl/forms/YXefJbePX52AZ4fR2

Ticket sales end on Friday 1st June at 9pm SHARP.
Please note that tickets are non-refundable.
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
New to Project Hope? Check out who we are and what we do here: https://www.facebook.com/unswprojecthope/
Please give us a like on our Facebook Page to stay update with future events!

All donations go towards funding education for disadvantaged children in rural China. Please join Project Hope to show your support!

==============================================
时间过的飞快，一眨眼的功夫，我们竟然顶着各种assignment的压力生存到了期末！被这种due缠身苦不堪言的你，想要逃离学校的压力，来挑战自己的平衡、控制与耐力吗？想要变身人猿泰山，自由攀爬释放压力吗？那就快来和Project Hope一起来体验室内攀岩吧！

活动获得的所有收入将捐献给中国贫困地区有需要的孩子，致力于给他们提供更加良好的教育环境。

时间与地点
日期: 2018年6月3号（周日）
时间: 11：00am-\-\-4:00pm
地点: Sydney Indoor Climbing Gym, St Peters

-\-\-\-\-\-\-\-\-\-\我们将提供午餐哦！！！

门票价格
四人同行（仅限PH members): $26/人
PH and Arc members: $28/人
Non-PH and Arc members: $30/人
不是PH也不是Arc member: $32/人

门票售卖将于6月1日（周五）21:00（晚上9点）截止
你可以点击 https://goo.gl/forms/YXefJbePX52AZ4fR2 购票。
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
如果大家对我们的组织还不了解，可以点击下列链接查看一下我们的介绍和日常活动吧～
脸书主页：https://www.facebook.com/unswprojecthope/

如果对我们的活动有兴趣，大家可以在脸书主页给我们点个赞，长期订阅我们的主页哟。所筹善款将用于支持中国贫困地区孩童教育。欢迎加入我们，支持我们！', 'unswprojecthope', NULL, '-33.91016', '151.17436', '6', 0, '35', 'Project Hope goes to Rock Climbing', '3 June', '11:00', '16:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (656, '226191518116424', 'Do you want to be a game changer? 

Applications are now open for the UNSW Hero Program in Semester 2, 2018. 

Develop skills and gain experience that goes beyond typical classroom learning. Attend industry workshops, meet like-minded individuals across faculties and expand your professional network. 

The program helps prepare graduates take on challenges imposed by a rapidly evolving workplace by equipping them with an entrepreneurial mindset, problem solving skills and most importantly confidence.

Be a game changer. Be a UNSW Hero!

To apply, visit:

http://unsw.to/hero


Key Dates for Semester 2, 2018 Program:

Information Session: Thursday, 3rd May 2018
Applications Close:	 Sunday, 13th May 2018
Interview Period: 30th April - 28th May 2018
Induction &amp; Training: Monday, 25th June 2018
Core Program &amp; Workshop Period: 25th June - 3rd August 2018
Hero Program Alumni Event: Friday, 27th July 2018
UNSW Service Improvement Conference - Pitch Event: Friday, 3rd August 2018


For more information about the UNSW Hero Program, visit:

https://student.unsw.edu.au/hero-program', 'UNSWHeroes', NULL, '-33.917010287581', '151.23047590256', '39', 0, '236', 'UNSW Hero Program', '13 May', '17:00', 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (657, '2051721678431711', 'We are back and better than ever- with a new classic logo design, all you have to worry about is which colour(s) you want to rock! Take your pick from brand new colourways:

Navy | Black | Grey | Maroon | Sand

Whether you&#039;re trying to get the attention of that cutie in class or just want to cuddle up with something cozy (or just want something to soak up the tears from the finals study), these hoodies are the perfect addition to your wardrobe! Order yours today and REP THE MERCH :)
_____________________________________________________________

PRICE:
- Each hoodie is only $35 

HOODIES DESCRIPTION:
- Brand: Made In Apparel
- Material: 80% cotton, 20% polyester anti-pill fleece
- Design: Pullover (lined) hood, tonal shoestring drawcord, inset sleeves, kangaroo pocket and embroidered UNSW SciSoc logo on front left-hand pocket

Hoodies are available to order now from Monday 30th of April 2018 until 8th of June 2018 (11:59pm).

Don’t miss out! ORDER YOUR HOODIE HERE: 
https://goo.gl/forms/POhjxNUe8r6SyZa73
_____________________________________________________________

DISCLAIMERS: All purchases are non-refundable/exchangeable. Unfortunately, due to limited release we cannot offer a time to try on sizes- please read the size chart (available in the Google Form above) carefully and order accordingly. 
_____________________________________________________________

Help us stay in contact with you by clicking “going” on this event for further updates on our hoodie pick-up stalls and other important information. 

If you have any further questions please feel free to send us a Facebook message or email us at: scisoc.unsw&#064;gmail.com.', 'unswscisoc', NULL, '-33.86637', '151.02375', 0, 0, '201', 'UNSW Science Society Presents: SciSoc Hoodies 2018', '8 June', 0, 0, 'Fri 19:45 – 23:59');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (658, '186850451948361', '🚀Introducing CryptoSoc UNSW&#039;s first event 🚀

Looking to trade your first Bitcoin? Interested in the Cryptosphere and how people are making HUGE profits out of it?

Don&#039;t fret! Introducing a 3 DAY Trading Competition sponsored by BITMEX! The competition is OPEN to EVERYONE over the age of 18. This is an INVALUABLE opportunity for you guys to gain exposure into the cryptocurrency investment market SAFELY and for beginners, learn the ropes at our WORKSHOP. Don&#039;t forget, there will be HUGE PRIZES up for grabs!!

On the launch night, CryptoSoc UNSW and guest speaker Michael Kong (CTO of Digital Currency Holdings and Advisor for Enosi &amp; Fantom Foundation) will be hosting a LIVE AND INTERACTIVE DEMONSTRATION WORKSHOP where you will learn how to trade from scratch, spotting investment opportunities and tips. Come and learn about trading or better yet, come for the free pizza!
_________________________________________________

🚀SPEAKER/WORKSHOP DETAILS:
Location: Michael Crouch Innovation Centre
Date/time: 10th May 5PM - 8PM
Topics discussed: 
- What is Cryptocurrency? 
- Using the Bitmex platform.
- Technical Analysis and Trading Strategies.
- Management of accounts. 
Pizza and Drinks will be provided.

🚀COMPETITION STRUCTURE:
As an individual or teams of 2-3, you will be provided three days (72 Hours) to trade BTC/ETH/ADA/BCC/LTC/XRP on the Bitmex leverage trading platform.
Winners will be judged in terms of highest portfolio returns denoted in BTC (XBT) value at the end of the 3 DAY timespan.
This is open to ANYONE from ANYWHERE (not limited to university students!)

🚀PRIZES:
1st: $500 
2nd: $250 
3rd: $150 
Remaining 2 places: $50

🚀REGISTER HERE:
*Registration is now CLOSED*

🚀IMPORTANT THINGS TO NOTE
- Attending the workshop is COMPULSORY in order to collect your logins for the competitions.
- Must make a minimum of THREE trades in order to qualify for the prize. (DON&#039;T JUST HODL)
- Prizes will be distributed in BTC - we will help you set up a wallet if you do not have one already.
_________________________________________________

KEY DATES:
🌟Monday 7th of May ( Week 9 ): 11:59PM Registrations Close
🌟Thursday 10th of May ( Week 9 ): Workshop 
🌟Thursday 10th of May 8PM ( Week 9 ): Trading Begins!
🌟Sunday 13th of May 8PM ( Week 10 ): Conclusion

If you have any further enquiries, please do not hesitate to email us at events.cryptosoc.unsw&#064;gmail.com', 'cryptosoc.unsw', NULL, '-33.91639595844', '151.22829794884', '75', 0, '100', 'CryptoSoc UNSW Presents: BitMEX Trading Competition', '10 May', 0, 0, '17:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (659, '2054690814854223', 'Do you have a song that urges you to grab a mic and sing 🎤
Does karaoke remind you of anyone who refuses to put the mic down, and the playlist that is so lit that it should only be sung in karaoke? 🔥🎵 

To those of you who are passionate about karaoke, We are holding a Joint-Uni HKSA Karaoke Party on the 12th of May 🎤 This is an excellent opportunity for those of you who are passionate about karaoke to sing your heart out! 🎶🎵 Alcohol will also be provided to make the atmosphere even more intense! 🍻

Details:
Date: 12/5/2018 (Saturday)
Time: 9:00PM till late
Venue: Dynasty Karaoke (1/63 Dixon St, Haymarket NSW 2000)
Ticket Price: Early Bird $30 (Available at HKSA Stall and Online Application) / Door $40 
Registration: https://goo.gl/forms/s52OaByW80FRsaH73

Spaces are limited, so quickly get your ticket from us before someone else beats you to it! 🚨 Should you have any enquiries, don&#039;t hesitate to contact us on Facebook or Instagram Page. 

~~It’s so high high high you gonna get go~~
一聽到隻歌係咪好想即刻攞起枝咪呢? 🎤
一諗起唱K係咪即刻想起一個永遠都唔捨得放低枝咪既K歌之王同一堆只可以係唱K先high既playlist? 🎵
呢個moment，鐘意唱K既朋友仔留意喇! 📣

我地四間大學 將會係5月12號 🏫🏫🏫🏫 一齊舉辦一個Joint HKSA Karaoke，岩哂鐘意唱歌既朋友仔唱番幾首飲歌! 🎶🎵 我地仲會提供酒精飲品，將氣氛push到最high 🍻

詳情如下:
日期: 2018年5月12日 (星期六)
時間: 9:00PM till late
地點: Dynasty Karaoke (1/63 Dixon St, Haymarket NSW 2000)
門票價錢: Early Bird $30 (Only available at HKSA Stall and Online Application) / Door $40 
報名: https://goo.gl/forms/s52OaByW80FRsaH73

我地名額有限仲唔快啲買飛參加! 手快有手慢冇喇喂! 🚨
如果你有任何疑問，歡迎你瀏覽我哋嘅專頁或者inbox我地！到時見！', 'unsw.hksa2018', NULL, '-33.87891', '151.20391', 0, '29', '284', 'UNSW x USYD x MQ x UTS Joint HKSA Karaoke Party', '12 May', '21:00', '2:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (660, '191427144814458', 'Come and join us for a cooking class with our RA Candace!

Sign up at reception.', 'unswvillage', NULL, '-33.915678317361', '151.2288088034', '3', 0, '20', 'UNSW Village Presents: Cooking with Candace', '13 May', '19:00', '20:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (661, '486475145084110', 'Celebrate International Day against Homophobia, Biphobia &amp; Transphobia at UNSW! With marriage equality finally a reality, there’s a lot to celebrate – but also a lot more to fight for, including the fight to end queer youth homelessness. Come grab some food, show your rainbow pride and learn more about the LGBTQIA+ community at UNSW.

There will be a free BBQ run by ALLY, with vegetarian options available.

This event is run by the UNSW SRC Queer Collective, the LGBTQI Champion, ALLY &#064; UNSW and the Diversity Network at UNSW. We acknowledge the traditional custodians of this land, and pay our respects to the Gadigal and Bedigal people of the Eora nation.', 'UNSWQ', NULL, '-33.916919177073', '151.23356383628', '32', 0, '84', 'IDAHOBIT at UNSW!', '17 May', '11:00', 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (662, '1913238132040679', 'Come along to indoor rock climbing.
$10 tickets to be purchased at reception.', 'unswvillage', NULL, '-33.91016', '151.17436', 0, '5', '72', 'UNSW Village Presents: Indoor Climbing', '12 May', '13:00', '16:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (663, '209725979607980', '“Everyone has a little bit of the sun and moon in them… Everyone is part of a connected cosmic system” –Suzy Kassem

Just as the sun, the moon, the stars and everything else interconnect as one celestial body, the UNSW Engineering Society extends a warm welcome to all the sparkling engineering students to gather for our largest annual ball yet. Whether you’re a supergiant or a red dwarf planet, we invite you to shoot for the stars and grab your Andromeda or Perseus for a cosmic night like no other, including: a heavenly 3 course meal, unlimited beverages, stunning live entertainment and a sirius’ly good DJ. Dress up in your most luminous fancy wear, forget about the gravity of final exams, and prepare yourselves for the biggest bangin’ interplanetary event of the year. 

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- DETAILS -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
☆	Location: Doltone House Darling Island Wharf
☆	Address: Ground Floor, 48 Pirrama Rd
☆	Date: 31st May, 2018
☆	Time: 7:00pm – 12:00am
☆	Dress Code: Formal
☆	Capacity: 700+

*This event is strictly 18+. Please bring valid photo ID to display upon entry.
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ EVENT -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
☆	3 course meal
☆	Unlimited beverages (non-alcoholic choices provided too)
☆	Stunning live entertainment
☆	Music from both a band and DJ
☆	Roaming photographers
☆	Free photo booth with unlimited prints

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ TICKETING -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
☆	Early Bird: $125 (Release at 7:30PM Tuesday 27th March 2018)
☆	Standard: $130 (Release at 7:30PM Thursday 29th March 2018)
☆	Tickets will be sold as packs of 2, 5, 6, 10, 11 and single tickets.
☆ Tables will seat either 10 or 11 guests
☆ Make sure you get in quick! Tickets sold out in under a minute last year!

(Please make sure you have the name, phone number, zID, table name and dietary requirements of each person you are booking for!)

-\-\-\-\-\-\-\-\-\-\-\-\- AFTER PARTY INFORMATION -\-\-\-\-\-\-\-\-\-\-\-\-
Stay tuned for further details closer to the date!

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ ABOUT US -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
Founded in 2011, the UNSW Engineering Society (EngSoc) is the leading engineering society officially endorsed by the UNSW Faculty of Engineering, as well as Arc (UNSW’s umbrella student organisation). As the only constituent engineering society, our member base consists of all students in the nine schools of the UNSW Faculty of Engineering.

We aim to develop capable, well-rounded engineering graduates, with strong extracurricular involvement and industry knowledge. Each and every year, we&#039;re excited to bring students bigger and better events ranging from our social events to something that will give you a kick-start to your career.

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ FOLLOW US -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
Facebook Page - https://links.unswengsoc.com/facebook
Facebook Group - https://links.unswengsoc.com/fbgroup
LinkedIn - https://links.unswengsoc.com/linkedin
Website - http://www.unswengsoc.com/
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
Finally, we would like to acknowledge the contributions from the Faculty of Engineering, Arc, and QPay in helping with the organisation of this event.', 'UNSWEngSoc', NULL, '-33.866825489253', '151.19604706764', '406', 0, '857', '☆SOLD OUT☆ UNSW EngSoc Presents: Celestial Ball 2018', '31 May', '19:00', '0:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (664, '135433237312459', 'Want to spend a good night out but also don&#039;t want to break the bank on drinks?
Med Revue superheroes to the rescue! Come join CSE Revue and CSESoc on Wednesday night week 10 for a good time (and hopefully a long time).

&gt; What is a revue??
- A revue is a sketch comedy show with singing, dancing and a live band!

If you&#039;ve never seen a revue before (and perhaps procrastination is high up on your to-do list) then this is a great opportunity to relax and share some laughs!

We will be purchasing group tickets on the day so bring cash!', 'cserevue', NULL, '-33.9157829', '151.2291671', 0, '46', '67', 'CSESoc X CSE Revue watches Med Revue!', '9 May', '18:30', '22:30', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (665, '321928918334193', 'We are going to Puzzled Pint Sydney!

After our Social Puzzle Session Week 10 those of you who are keen can head there together or if not at uni you can meet us there.
It&#039;s a social get together where Puzzled Pint hands out puzzles that you can solve together in groups.
 
There is no pressure to drink alcohol but if you are being coerced into drinking tell one of the Executives present.', 'UNSWPuzzleSoc', NULL, '-33.86236', '151.21024', 0, '5', '6', 'PuzzleSoc goes to Puzzled Pint - May', '8 May', '18:30', '21:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (666, '631422520530371', 'Spending many sleepless nights on your groundbreaking idea? Perhaps you&#039;re interested in living the dream? Find out how to pave your path to success at our FREE Speaker &amp; Panel Event to hear from our SUCCESSFUL guests.

Tickets are FREE! However, we have limited spots, so get in quick!

Register now:
http://bit.ly/2HMR6QZ
_____________________________________________________

This event is opened to students of ALL degrees and majors so don’t hesitate to say YES to this opportunity!

For any questions, contact:
events&#064;yesentrepreneurs.com', 'unswYES', NULL, '-28.5194', '153.5437', 0, '56', '131', 'UNSW YES Presents: START WITH YES!', '9 May', '16:00', '19:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (667, '220447185355458', '&quot;A SHABBILICIOUS ROADSHOW&quot; is a FUN AND FABULOUS shopping extravaganza featuring an eclectic blend of handcrafted one of a kind items, shabby &amp; vintage bliss, home decor &amp; inspirration, artisan designs, bling &amp; glam boutiques, sparkly jewels, modern trends, repurposed &amp; funky junk along with FABuLOUS FINDS for your creative soul! Come join in the FUN! #girlfriendswanderingmarketnearandfar
ADMISSION $5.00 (Under 12 FREE)', 'GirlfriendsWanderingMarketNearandFar', NULL, '39.034616977355', '-108.53400138652', '119', 0, '2.1K', 'Grand Junction Colorado', '9 June', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (668, '1785987818377210', 'SAVE THE DATE!! Our annual Ladies Long Lunch for Humanity will be on in October this year. The charity, ticket  sales &amp; pricing will be announced shortly. Thanks 🌸🥂Karina &amp; Lisa', 'wanderingpeacock', NULL, '-32.92278', '151.71372', '21', 0, '136', 'Ladies Long Lunch for Humanity', '20 October', '12:00', '15:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (670, '490107578052956', '3 sets of real country music', 'joehessandthewanderingcowboys', NULL, 0, 0, '11', 0, '87', '8 Seconds Saloon', '30 June', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (671, '1580913391975689', 'It&#039;s the concert before the concert. You must have a VIP bracelet to see this show.', 'joehessandthewanderingcowboys', NULL, '40.0048457807', '-85.930995775971', '11', 0, '96', 'Jason Aldean VIP Stage', '19 May', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (672, '116525999190648', 'The GIRLFRIENDS WANDERING MARKET is &#123;a&#125; CRAFTED + FABULOUS FINDS shopping extravaganza featuring an eclectic blend of handcrafted one of a kind items, shabby &amp; vintage bliss, home decor &amp; inspiration, artisan designs, bling &amp; glam boutiques, sparkly jewels, modern trends, repurposed &amp; funky junk along with FABuLOUS FINDS for your creative soul! Come join in the FUN! 
Admission $5.00 (under 12 free) 

Register for exhibitor booths at montagefestivals.com', 'GirlfriendsWanderingMarketNearandFar', NULL, '40.8115', '-96.6767', '8', 0, '246', 'Crafted &amp; Fabulous Finds Shopping Extravaganza', '15 December', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (673, '169961880235435', '&quot;A SHABBILICIOUS ROADSHOW&quot; is a FUN AND FABULOUS shopping extravaganza featuring an eclectic blend of handcrafted one of a kind items, shabby &amp; vintage bliss, home decor &amp; inspirration, artisan designs, bling &amp; glam boutiques, sparkly jewels, modern trends, repurposed &amp; funky junk along with FABuLOUS FINDS for your creative soul! Come join in the FUN! #girlfriendswanderingmarketnearandfar
ADMISSION $5.00 (Under 12 FREE)', 'GirlfriendsWanderingMarketNearandFar', NULL, '37.290942217017', '-107.87252988438', '17', 0, '265', 'Durango Colorado', '2 June', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (674, '181666395995134', 'So do you know the seven islands that made Mumbai? OOPS don’t know. Let’s not read about it now, let’s experience these 7 islands through our next cycling event “Mumbai Midnight Sea-Side Cycling”. You must have seen various coastlines across India but the Mumbai Coastline is iconic for its beautiful rocky bay and a view of historic and modern skylines of the city. This would cover the coastline of Mumbai starting from the Renowned Gateway of India till the Stony sea shore of Mumbai, Bandra Bandstand.

New to Mumbai, didn’t experience the nightlife yet or need a different experience of Mumbai midnight getaway, our 25km cycling event is the perfect one for you. What could be more special than experiencing Mumbai under full moon light and yes, the icing on the cake, Mumbai breeze, hot chai and beautiful street lights

Level: Easy
Distance: 25kms Approx.

Schedule:
• 23:00hrs – Gather at Colaba for Orientation and Distribution of cycles and refreshments
• 23:30 hrs – Start the ride from Gateway of India to Bandra Bandstand
• 04:00 hrs – Chill on Bandstand with hot chai, ride finishes here

Route:
• Leopold Café
• Taj Mahal Palace
• Regal Cinema
• Gateway of India
• Rajabhai Clock Tower
• Bombay High Court
• CST 
• BMC HQ
• Marine Drive
• Taraporewala Aquarium
• Girgaon Chowpatty
• Breach Candy
• Haji Ali
• Worli Seaface
• Siddhivinayak Temple
• Shivaji Park
• Mahim Dargah
• Band Stand

Inclusions:
• Gear/Non-Gear Cycles with helmets (for those who hire through Wandering Souls)
• Transfer of cycles from bandra to starting point(for those who hire through Wandering Souls)
• Refreshments &amp; Energy kit
• Wandering Souls expertise and admin charges
• Reflectors
• Mechanic
• Backup Vehicle
• First Aid

Exclusions:
• Anything other than the above-mentioned things

Things to Carry:
• Identity Proof (Mandatory)
• Helmet (Mandatory, only if bringing own cycle)
• Riding Gear and accessories (Optional)
• Water Bottle Minimum 1 litre(Mandatory)
• Electrol, Glucon D
• Medicines those if you require usually
• Camera, Cell Phone (Optional)
• Dry fruits and chocolates
• A backpack to put all these things 

Disclaimer:
• Participants who have rented the cycles need to transport cycles back at the initial gathering point at their own expenses if unable to complete the ride.
• Smoking and drinking alcohol is strictly prohibited.
• Please avoid wearing Gold and other jewellery.
• A planned activity or programs may be cancelled or revised depending on the weather or any other unavoidable circumstances
• Wandering Souls will not be responsible for any physical harm during the activity. If you follow the instruction of the coordinator, chances of getting hurt remain rare
• Wandering Souls wouldn’t be responsible for any damages to cycles

Cost: 
• Renting Cycle from Us - Rs. 950/Person || Rs. 900/Person (For Group of 4 or more)
• Bringing Own Cycle -Rs. 500/Person || Rs. 450/Person (For Group of 4 or more)
• Tandem Cycles - 2 Person -Rs. 1900(Limited Availability)

Registration:
• Registration through phone calls only. Please Call Us for any query or to confirm your seat.
• Please call &amp; book the seat by paying in Advance (Non-refundable). Limited seats Only
• While transfer, please provide your name in the remarks section.
• Once payment is done, kindly fill this form - https://goo.gl/forms/AvlTUGkp5DrvZp8l2
• No spot registrations.

Payment Options:
• UPI – wanderingsouls&#064;icici
• Pay with PayTM – 9833157583
• NEFT/IMPS – A/C Name: Wandering Souls || A/C No.: 003205007182 || IFSC: ICIC0000032 || Type - Current
• EventsHigh - http://go.eventshigh.com/0erc

Contact: 
Call or WhatsApp
Sabijit: 9833157583 || Sai: 9821136292', 'wanderingsoulsindia', NULL, '18.91', '72.81', '20', 0, '167', 'Mumbai Midnight Sea-Side Cycling', '12 May', 0, 0, '<span title="3:30 in your time">23:00</span>–<span title="8:30 in your time">4:00 UTC+05:30</span></div><div class="_5xhp fsm fwn fcg"><span>12 May at 23:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (675, '733348696858279', 'YOU are the only thing missing in the middle of this picture.

Come in on Fridays and enjoy our award-winning Ciders.
 
We have limited small batch releases on draft in our Ciderroom.

Fill a growler, try a flight of Wandering Aengus and Anthem Cider. 

Relax and Enjoy.

Outside food and kids are welcome too.', 'WanderingAengusCider', NULL, '44.89398', '-122.9961', 0, 0, '328', 'Tasting Room', '18 May', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (676, '590979531251558', '“Life is better when you are laughing”

Highlights: Movie Under the Stars, Learn to Pitch tents, bonfire night,  Activities, Rain dance

Theme: Comedy/ Thriller

Final theme will be decided by majority votes of participants😉

Campsite: The campsite is located 2 hours away from Mumbai near Khopoli-Pen road. Situated among the hills, it’s a perfect place to spend your weekend away from the hustle &amp; bustle of city life.

Day 1:
• 12:28 hrs – Start by Khopoli local starting from CST at 12:20PM. Get into the local from your respective stations.
• 14:40 hrs – Reach Lowjee Railway Station. Move Campsite in our transfer vehicle 
• 16:00 hrs – Reach campsite, have your welcome drink and snacks followed by a brief introduction and get ready for tent pitching and other activities
• 19:30 hrs – Gather around the screening area to have a laugh riot, we will also be having a campfire where we will share stories, sing songs and make new friends
• 21:30 hrs - Have delicious local cuisine for dinner under billions of stars
• 23:30 hrs – Off to the tents for a sound sleep (For those who are very sleepy :P). Day Ends

Day 2:
• 07:30 hrs – Wake up call, get refreshed by a hot cup of tea and enjoy a beautiful sunrise
• 08:00 hrs – Have Breakfast &amp; Rain dance
• 08:30 hrs – Pack up your tents and belongings
• 09:00 hrs – Say your goodbyes with a promise to meet again, leave for station in private vehicle. This brings us to the end of our trip, Or rather just the beginning
• 11:30 hrs – Reach Lowjee Railway station and Catch a train back to Mumbai

Inclusions:
• Lowjee to Lowjee Private Transport
•Rain dance
• Bonfire, Movie Screening
• Evening Snacks and Dinner on Day 1
• Breakfast on Day 2
• Accommodation in Tents on Double/Triple Sharing basis, sleeping bags
• First Aid &amp; Safety
• Western style toilets

Exclusions:
• Meals during travel
• Personal expenses
• Anything other than the above-mentioned things

Things to Carry:
• Identity Proof
• Torch
• Pull Over / blankets(sleeping bags would be provided with the tents)
• Cap, Camera
• Personal care stuff, medicines which you require usually

Disclaimer:
• Please avoid wearing Gold and other jewellery
• A planned activity or programs may be cancelled or revised depending on the weather or any other unavoidable circumstances
• Smoking and drinking alcohol is strictly prohibited

Cost: Rs. 1700/-

Registration:
• Please Call Us for any query or to confirm your seat
• Please call &amp; book the seat by paying 1000/- in Advance. Limited seats
• While transferring the amount, please provide your name in remarks section
• Once payment is done, please fill out this form - https://goo.gl/forms/w88IVzNF3uX6TsXw2

Payment Options:
• UPI – wanderingsouls&#064;icici
• NEFT/IMPS –A/C Name: Wandering Souls || A/C No.: 003205007182 || IFSC: ICIC0000032 || Type: Current
• Pay with PayTM – 9833157583
• EventsHigh – https://bit.ly/2H9VZDF

Contact:
Call or WhatsApp:
Sanket: 9969258933 || Sabijit: 9833157583', 'wanderingsoulsindia', NULL, '18.71121', '73.18947', '18', 0, '242', 'Movie Night Camping', '19 May', 0, 0, '12:30');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (677, '161765184662173', 'To celebrate the (almost) end of your first semester, we are inviting all first years for a night of food and arcade games at 1989 Arcade Bar &amp; Kitchen!

Get to your new First Year Representative Katherine, our other, not-yet-elected First Year Rep (if you&#039;re interested, check out our EGM event), and everyone else on the night :)

Guaranteed to be a fun and relaxed night of nostalgic games, and of course good food 🍔and drinks 🍻

Please make sure to hit &#039;Going&#039; on the event if you want to come, as we need to know numbers!

-

WHEN: Friday 18 May, starting at 5pm
WHERE: 1989 Arcade Bar &amp; Kitchen, Newtown', 'unswpsychsoc', NULL, '-33.8926015', '151.1867889', '2', 0, '39', 'PsychSoc Presents: First Year Event!', '18 May', '17:00', '21:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (678, '164392080904304', 'PsychSoc will be attending this year&#039;s Mother&#039;s Day Run! If you know you need to get out for some exercise, why not do it for a good cause, AND do it with us?

We will be participating in the 4km walk, which will begin at 9 am.

If you would like to participate, please transfer $25 to the PsychSoc account (details below) by the 5th of May so we can register you. Please also send proof of payment (a screenshot of the receipt) to psychsoc&#064;unsw.edu.au so we can confirm that you have transferred :)

All proceeds from the run will be donated to the National Breast Cancer Foundation.

We will also be at the Puppies &amp; Bake Sale event on Wednesday on the Library Lawn so drop by if you would like to find out more!

-

WHEN: Sun 13 May from 9am
WHERE: Starting from The Domain, Art Gallery Road
HOW MUCH: $25

BANK ACCOUNT DETAILS:
Name: UNSW PsychSoc
BSB: 062303
Account number: 00900208', 'unswpsychsoc', NULL, '-33.868835297825', '151.21733618689', '2', 0, '16', 'PsychSoc Goes To: Mother&#039;s Day Run', '13 May', '9:00', '10:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (679, '1711317638959498', 'Third year stats is tough and overwhelming - fortunately, you have team of dedicated course tutors who will be hosting weekly sessions to go over any requested content or specific questions. 

If you’re still scratching your head from the lectures delivered a few weeks ago, we absolutely encourage you to come along. This is a great opportunity for you to get up to speed and helpful tips from the tutors - all free of judgement. 

The best part of it is that you get to decide what is covered - you can submit your questions at any time right here: https://goo.gl/forms/aJvXelUheJwwOJNJ2

-

WHEN AND WHERE?

&#039;Back to Basics&#039; sessions will be running from Week 8-11 at the following times/locations:

Tues 1-2PM (Red Centre West 3037)
Tues 3-4PM (Red Centre Central Wing 1040)
Thurs 3-4PM (Red Centre Central Wing 1040)', 'unswpsychsoc', NULL, '-33.917844267595', '151.22962298675', 0, 0, '78', 'PsychSoc Presents: Psyc3001 Back to Basics', '15 May', 0, 0, 'Tues 13:00 – 14:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (680, '175837663078223', 'PsychoSoc is excited to present their end of year ball Pryzm.

The ticket includes 
- arrival glass of bubbly
- 2 course meal 
- exclusive after party at Pryzm’s TIKI bar
- access all rooms all night
*transport not included

Dress Code: Formal

Get ready to celebrate the end of term with your favourite psychology friends and a farewell for some of us!

Only a limited number of tickets available so get yours now!

Members: £20
Non Members: £22

ticket link: https://www.su.nottingham.ac.uk/events/7214/11290/

Please select dietary requirements upon ticket purchase (gluten-free option available)

lots of psychosoc love xoxo', 'uon.psych', NULL, '52.95527', '-1.14567', '27', 0, '46', 'PsychoSoc Grand Summer Ball', '8 June', 0, 0, '<span title="4:00 in your time">19:00</span>–<span title="13:00 in your time">4:00 UTC+01</span></div><div class="_5xhp fsm fwn fcg"><span>8 June at 19:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (682, '1796496270388778', 'A UNSW Quid tradition to see the university revues!

For those who don&#039;t know, revues are shows where uni students dance and perform comedy skits! The first one of the year will be Med Revue!

After training finishes at 6pm, we will have dinner locally and then head over! Please bring $12 on the night as we will be buying tickets at the door.

See you there!', 'unswquidditch', NULL, '-33.9157829', '151.2291671', 0, '1', '7', 'Quid goes to Med Revue!', '11 May', '19:00', '22:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (683, '443085322812979', 'Ways to establish dominance over your peers:
1. 3 digit WAM 
2. Winning at EngSoc’s Capture the Flag event

With one of these being slightly more achievable than the others, EngSoc will be hosting a Capture the Flag competition! Sign up with friends to form your own team, or sign up individually and get placed into a championship-winning team (hopefully). 

Rules: https://sl.unswengsoc.com/ctfrules
Registrations close: Tuesday 15th May (Week 11) 11:59PM 
REGISTER HERE: https://sl.unswengsoc.com/ctfrego

Date: Saturday 19th May (Week 11)
Time: 10:30AM - 1PM
Location: Village Green, UNSW

We’ll be running a round-robin competition, and there will also be PRIZES for the winning team, as well as FREE lunch provided! Sign up now, and have the opportunity to do healthy physical exercise on a lovely Saturday morning, as well as the opportunity to win some sick prizes! 

Deposit for this event will be $5 for each person in your team and it will be returned in cash at the end of this event. After you have completed your payment, email your payment receipt to social&#064;unswengsoc.com and fill out the registration form - all details can be found in the registration form.

In case wet weather occurs, the event will be postponed to Sunday 27th May (Week 12).

P.S. Photos will be taken at the event for promotional use, so if you don&#039;t want to be photographed, just let us know!

Stay updated:
Facebook Page: https://links.unswengsoc.com/facebook
Facebook Group: https://links.unswengsoc.com/fbgroup
LinkedIn: https://links.unswengsoc.com/linkedin
Website - http://www.unswengsoc.com/

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ ABOUT US -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
Founded in 2011, the UNSW Engineering Society (EngSoc) is the leading engineering society officially endorsed by the UNSW Faculty of Engineering, as well as Arc (UNSW’s umbrella student organisation). As the only constituent engineering society, our member base consists of all students in the nine schools of the UNSW Faculty of Engineering.

We aim to develop capable, well-rounded engineering graduates, with strong extracurricular involvement and industry knowledge. Each and every year, we&#039;re excited to bring students bigger and better events ranging from our social events to something that will give you a kick-start to your career.', 'UNSWEngSoc', NULL, '-33.918281965522', '151.22787603381', '28', 0, '237', 'UNSW EngSoc Presents: Capture the Flag Competition', '19 May', '10:30', '13:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (684, '955638891228040', 'Are you ready to jump into a time capsule? Whether you want to go back to PREHISTORIC times to hunt with the neanderthals, learn from Confucius in the PAST, hang with Drake in the PRESENT or talk to aliens in the FUTURE, EngSoc’s TIME CAMPSULE is the place to be. Pack your bags for a fun filled 3 day journey through time with ENGSOC’S ALL YEARS CAMP in Myuna Bay. It doesn’t matter if you’re feeling ancient after years in your degree or a fresh first year looking towards the future, we’ve got you covered.

Camp will be an adventure filled experience where you can mingle with fellow students from a variety of engineering disciplines, participate in fun head-to-head challenges and party all around the clock with 2 PARTIES IN 3 DAYS. So what are you waiting for, if you’re keen to meet new people and make incredible life long memories then put the dates, 29th of June to the 1st of July, in your calendar because this is one timeless event that you don’t want to miss!!!

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ DETAILS -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
☆ Departure: 11AM Friday 29th June, 2018 (UNSW -&gt; Myuna Bay)
☆ Arrival : 4PM Sunday 1st July, 2018 (Myuna Bay -&gt; UNSW)
☆ 200+ tickets

P.S. Photos will be taken at the event for promotional use, so if you don&#039;t want to be photographed, just let us know!

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- EVENT -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
☆ 2 party nights
☆ Stunning live DJ
☆ 3 days jam packed with activities
☆ Trivia night
☆ Drinks for the whole camp (non-alcoholic choices provided too)
☆ Comfortable bedding and rooms
☆ Meals included from Friday lunch - Sunday lunch
☆ Photography

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- TICKETING -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- 
Tickets will be sold in TWO releases only:
☆ FIRST RELEASE: $199 (Release: 7:30PM Tuesday 8th May, 2018 - Week 10)
☆ SECOND RELEASE: $199 (Release: 7:30PM Tuesday 15th May, 2018 - Week 11)
☆ Tickets will be sold as packs of 2, 3, 4, 5 and single tickets.

(Please make sure you have the name, phone number, zID, email and dietary requirements of each person you are booking for!)

☆ You will be required to fill out a medical form along with your ticket purchase. If you do not do this, your ticket will be deemed invalid.
☆ Make sure you get in quick! Tickets sold out within the night last year!

☆You must be an ARC member to purchase tickets
☆You must be 18+ to attend this event

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\- ABOUT US -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
Founded in 2011, the UNSW Engineering Society (EngSoc) is the leading engineering society officially endorsed by the UNSW Faculty of Engineering, as well as Arc (UNSW’s umbrella student organisation). As the only constituent engineering society, our member base consists of all students in the nine schools of the UNSW Faculty of Engineering.
We aim to develop capable, well-rounded engineering graduates, with strong extracurricular involvement and industry knowledge. Each and every year, we&#039;re excited to bring students bigger and better events ranging from our social events to something that will give you a kick-start to your career.
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\ FOLLOW US -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\
Facebook Page: https://links.unswengsoc.com/facebook
Facebook Group: https://links.unswengsoc.com/fbgroup
LinkedIn: https://links.unswengsoc.com/linkedin
Website - http://www.unswengsoc.com/
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\--\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
Finally, we would like to acknowledge the contributions from Arc and QPay in helping with the organisation of this event.', 'UNSWEngSoc', NULL, '-33.062587299008', '151.54551369083', '73', 0, '404', 'UNSW EngSoc Presents: Camp 2018 - Time Campsule', '29 June', 0, 0, '11:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (685, '1852730135031803', 'Next year is going to be bringing a lot of change into semester timetables and for students wanting to complete their Professional Electives, it can be a little daunting. That&#039;s why we want you to stay ahead of the pack and know about all your options well in advance so when the time for enrollment comes, it&#039;ll be as easy as finding a seat in the front row of your structures lecture!

Come learn about final year options, course requirements and how it&#039;s all going to fit in trimesters next year. Plus hear all about the courses from previous students and current lecturers and pick their brains so that you make the right choice for your future career path. It&#039;s a great evening to network and enjoy a bit of food and refreshments on us!

WHEN: 6 pm Tuesday 22nd May
WHERE: Scientia Building
IMPORTANT NOTE: FREE FOOD

Register your attendance here: https://goo.gl/forms/IPRphI9LmY6p6pQj2

Are you a CVEN student that has completed professional electives and want to share your expeirence? Volunteers register your attendance here: https://goo.gl/forms/FM9qaf2o3F2BE2su1

Hope to see you there!', 'cevsoc', NULL, '-33.9179669', '151.233019', '31', 0, '83', 'CEVSOC Presents: Professional Electives Night', '22 May', '18:00', '20:30', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (686, '784624701742579', '- Do you ever find yourself sitting in a room with hundreds of other 
   people all being talked at by one person? 
- Isn’t it about time that your voice was heard? 
Well now’s your chance to share how you really feel about that course.

We’d love to hear your feedback about which courses you love, your insane assignments, favourite moodle posts and fear of mohr’s circle over a friendly bite to eat in the coming weeks! 

Sessions will be held separately for different year groups so please read below and come along even if it’s just for the FREE FOOD.
 -\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
SESSION 1: Week 9 Tuesday 1st May
4th Years: 12-2pm
Design Studio, Level 5, Civil Engineering Building

SESSION 2: Week 10 Thursday 10th May
2nd Years: 12-1pm
1st &amp; 3rd Years: 1-2pm
Design Studio, Level 5, Civil Engineering Building
-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
Please register your attendance here: https://goo.gl/forms/mjGrmVO50LRJrQMk1.

If you can’t make it but still want to share your thoughts, then feel free to provide feedback using the same form.

We hope to see you all there!', 'cevsoc', NULL, '-33.918168819903', '151.23268795042', 0, 0, '79', 'CEVSOC Presents: Food for Thought', '10 May', 0, 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (687, '1022806894545056', 'PROFESSIONAL DEVELOPMENT CAMP IS BACK! 

Calling all third and fourth years eager to catapult themselves into the engineering industry and make connections that will stay with you for life! 

Don’t know what discipline you want to work in?
Want to work on your teamwork, leadership and communication skills?
Want a weekend away to make new friends and hang out with the old?

You’ll be placed with older student and industry mentors over 3 days jam-packed days and 2 unforgettable nights filled with activities designed to make you as prepared for the industry as you can be!

-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-\-
DATES: 17th - 19th August 2018 (Week 4, Semester 2)
TICKETS: Price TBC ($150 in 2017), endorsed and supported by the School of Civil and Environmental Engineering
LOCATION: Outdoor Education, Morisset', 'cevsoc', NULL, '-33.09405505', '151.48161576', '32', 0, '96', 'CEVSOC Presents: Professional Development Camp - SAVE the DATE', '17 August', 0, 0, '10:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (688, '1644277548988236', 'What? Basketball, open scrimmage: 15min shoot-around leading into half-court games.

When? 12-2pm Monday Every Week!

Where? Indoor courts (on campus) at UNSW Fitness and Aquatic Centre

Who? Anyone and everyone! Whether you’ve just started playing; or you’re a crafty veteran that knows all the tricks; if you’re the next Allen Iverson stepping over people’s careers; or if you just want to break a sweat and make some friends, this is the place to be!

How much? 
Free for all members of the Basketball Society! If you’re not a member yet, make sure you join through the Arc portal (https://orgsync.com/81233/chapter). Membership for the year costs $5 (payable in person).

$2 for non-society Arc members
$3 for non-Arc members

Don’t forget to like our Facebook page to stay up to date with all future events and the latest Basketball Society news:
https://www.facebook.com/unswbballsoc/

If you have any questions feel free to hit up our Facebook page, email us at unswbballsoc&#064;outlook.com, or ask us below!', 'unswbballsoc', NULL, '-33.915496661587', '151.22660745053', '0', 0, '4', 'UNSW Basketball Society presents: Half-Court Scrimmage', '14 May', '12:00', '14:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (689, '251611618718011', 'Need to stop procrastinating? Need a quiet place to study? Need a motivation (and a WAM) booster?

UNSW SciSoc is proud to present… STUDY SESSIONS!

We are providing a quiet and comfortable environment for you at uni to maximise your productivity and encourage you to help each other study. Let’s ace finals together! 

There will be friendly supervisors to make sure you aren&#039;t getting distracted and cheer you on for those upcoming exams. You are welcome to bring friends along and study in groups! 

Hope to see you there :) 
______________________________________________________

WHO: All UNSW students welcome

WHEN: Wednesday 23rd and Thursday 24th of May (Week 12)- come and go as you please! 

DETAILS: 

📗 Wed 23rd May 📗

SESSON 1: 10am - 1pm &#064; Mathews 103

SESSION 2: 2pm - 5pm &#064; Civil Engineering 701

📕 Thurs 24th May 📕

SESSION 1: 10am - 1pm &#064; Red Centre M032

SESSION 2: 2pm - 5pm &#064; Civil Engineering 109

SNACKS: Snacks will be provided during the sessions.  

______________________________________________________

📚 PLEASE REGISTER HERE for catering purposes: https://goo.gl/forms/lWoPrYephHOdi9TN2 📚
______________________________________________________

DISCLAIMERS: 

1. A Maximum of 30 people can attend each session so it will be first come first served for spots.
2. All phones will need to be surrendered at the door in an effort to curtail any distractions. They will be returned upon departure. 
3. Quiet discussion only - no disruptive behaviour will be tolerated.

______________________________________________________

Have a question? Please send us a Facebook message or email us at scisoc.unsw&#064;gmail.com and we will be sure to get back to you ASAP.', 'unswscisoc', NULL, '-33.86637', '151.02375', '4', 0, '108', 'UNSW Science Society Presents: Study Sessions', '23 May', 0, 0, 'Wed 10:00 – 17:00');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (690, '205577786725626', 'The History Society will be holding an EGM, to elect a new Vice President (Events) and make a minor constitutional amendment.

Details of the EGM are as follows:
Date: Wednesday 30 May
Time: 3 - 4 PM
Location: Quad G047

Agenda
1. Apologies
2. Amendments to Constitution (change executive position name of ‘Vice President (Secretary)’ to ‘Secretary’
3. Election of new Vice President (Events)
4. Business without notice 

If you intend to run for the position of Vice President (Events), please register your interest in this google form:
https://docs.google.com/forms/d/e/1FAIpQLSdxkqeDIjMtGhOUaE4zp1P-EBlyvPqA5rv_tRzPWjTgR_eFKw/viewform

There will also be free pizza and snacks at the EGM!! 🍕🍕🍕

Hope to see you there!

___________________________________________________________________

Procedures

Nomination:
- All full members* of the History Society are entitled to run for the position of VP (Events)
* Full members are those who have joined the History Society on Orgsync: https://orgsync.com/169270/chapter 

Voting:
- All full members* of the History Society are entitled to one vote
* Full members are those who have joined the History Society on Orgsync: https://orgsync.com/169270/chapter 

Election procedure:
- If you intend to run for the position of VP Events, please fill out this google form to register your interest: https://docs.google.com/forms/d/e/1FAIpQLSdxkqeDIjMtGhOUaE4zp1P-EBlyvPqA5rv_tRzPWjTgR_eFKw/viewform
- On the day, you will have the opportunity to give a speech (around 2-3 minutes)
- According to the History Society&#039;s constitution, proxies are not allowed (you must be present in person at the EGM to be elected to the position)

Voting procedure
- We will use the &#039;first past the post system&#039; (i.e. candidate with most votes wins)
- In the case of equality of voting, the President shall have a casting vote

If you have any questions, please email: unswhistorysociety&#064;gmail.com', 'unswhistorysociety', NULL, '-33.917010287581', '151.23047590256', '6', 0, '6', 'UNSW History Society EGM 2018', '30 May', '15:00', '16:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (691, '893598467494864', 'Ready to make a real difference to a cause you&#039;re passionate about? Grab your friends and enter the UNSW Charity Societies&#039; event of the year! 

Register a team of 4-5 students here (https://bit.ly/2HBei8Y) to run the 5km course at Centennial Park and back an issue YOU want to see real change in. 

The winning team earns the society they&#039;ve represented a larger proportion of the funds raised, and there&#039;s a FREE BBQ for all competitors. This is a great opportunity to both make a positive difference and meet new people!
 
Representing a wide range of poignant social issues, teams can stand behind the causes of one of 8 UNSW charity societies, 

- Compassion UNSW      
- Fred Hollows Society UNSW
- Oxfam UNSW              
- Save the Children UNSW
- UNSW Vinnies              
- VGen UNSW
- We Act UNSW            
- Variety Children&#039;s Society UNSW    

Want to get involved and make a real impact in a way that doesn&#039;t involve physical exertion? 
-  You can donate to a society of your choice here: https://bit.ly/2raWnuz, all proceeds go the charity you care about
-  You can volunteer to help out on the day here: https://bit.ly/2HK2dKP

Don&#039;t have a team? Register yourself and we&#039;ll put you in a group!', 'fredhollowsunsw', NULL, '-33.8932496', '151.24692419', 0, '49', '102', 'UNSW Charity FunRUNraiser', '12 May', '10:00', '15:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (692, '174200073297662', 'Come join us for a casual game down on the Physics Lawn from 3-5pm. All skill levels are welcome and you can play for as long as you like! ⚽️⚽️⚽️

No studs/cleats please!', 'unswsocialsoccer', NULL, '-33.91895', '151.22941', '0', 0, '2', 'UNSW SOC3 Presents: Monday Week 11 Kickaround', '14 May', '15:00', '17:00', '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (693, '428296164286091', 'UNSW MedSoc with support of GPSN cordially invites all UNSW meddies to this year&#039;s Meet the Medics to be hosted at Wallace Wurth. This exciting night involves everything you&#039;ve dreamed of - including doctors and cocktails and food!

It is an extremely valuable opportunity to engage with doctors, of varying experience and specialities, who can share their unique backgrounds and provide personal advice on what it is like to be a medical professional. You are provided with the chance to talk to the doctors 1 on 1 and ask any questions that have been plaguing you, or just have a chat. 

Tickets are $10pp or $40 for a group of 5. Spaces are limited so get in quick! Link here: https://goo.gl/forms/j6gYzS9g4tj8Vy182 

For any questions please contact Judy Chen or Kim Nguyen or email leadership&#064;medsoc.org.au.

♥ MedSoc Leadership 2018', 'unsw.medical.society', NULL, '-33.91677967161', '151.23594366329', '48', 0, '163', 'Meet the Medics Cocktail Night', '14 May', '17:30', 0, '0');
INSERT INTO UNSWSocietyEvents (fbEventsID, data__id, data__description, username, id, data__place__location__latitude, data__place__location__longitude, data__going, data__went, data__interested, data__name, data__Date, data__start_time, data__end_time, data__Time_From_To) VALUES (694, '1793667614020162', 'The team behind “Is This Thing On?’’ brings you a Women in Comedy themed TRIVIA and OPEN-MIC night at the Forest Lodge Hotel!

Come for the trivia, stay for the free pizza and chips, and show some love for the LIVE PERFORMANCES. Did we mention our stellar raffle prizes??

Slam poetry, stand-up, skits, live music - any and all performances are welcome!

$10 cash entry includes trivia, FREE food all night PLUS the opportunity to watch live acts, or even perform one yourself! All proceeds go towards the SUDS production, ‘Is This Thing On?’, performing 6-9 June. 

Busy that evening, or coming late from a rehearsal? No problem! The night run likes this:
7:30-8:30pm TRIVIA
8:30-9:30pm OPEN MIC

Keen to try out some material on the night? We’d love to have you! Sign up here: https://docs.google.com/forms/d/1P3xpBXXTux6Evv1lJrogh4S9_8tipzDuUQsPbXX2m5w/edit?usp=drive_web

Can’t wait to see y’all on the night! 

Love. the cast and crew of &quot;Is This Thing On?&quot;
XOXO 


SUDS Slot 6 Double-bill
Directed By: Keshini Del Mel &amp; Madeleine Gandhi
Produced By: Jodi Rabinowitz

Graphic design by Elliot Ulm', 'SUDSusyd', NULL, '-33.8839302', '151.1845856', '45', 0, '91', 'Is This Thing On? Fundraiser', '14 May', '19:00', '22:00', '0');

-- Table: UserSociety
CREATE TABLE UserSociety (UserSocietyID INTEGER PRIMARY KEY AUTOINCREMENT UNIQUE NOT NULL, userID VARCHAR (15), fbEventsID INTEGER, Date DATE DEFAULT (strftime('%d/%m/%Y', 'now')) NOT NULL);

-- View: vwUserSociety
CREATE VIEW vwUserSociety AS SELECT USA.*,
       US.*,
       fbe.*
FROM UserSociety US
JOIN UNSWSocietyEvents fbe
ON US.fbEventsID = fbe.fbEventsID
JOIN UNSWSocietyAbout USA
ON fbe.username  = USA.username;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
