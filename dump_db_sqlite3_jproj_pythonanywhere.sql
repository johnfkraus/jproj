PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO "django_migrations" VALUES(1,'contenttypes','0001_initial','2015-11-29 03:04:26.311493');
INSERT INTO "django_migrations" VALUES(2,'auth','0001_initial','2015-11-29 03:04:26.386250');
INSERT INTO "django_migrations" VALUES(3,'admin','0001_initial','2015-11-29 03:04:26.441151');
INSERT INTO "django_migrations" VALUES(4,'contenttypes','0002_remove_content_type_name','2015-11-29 03:04:26.533152');
INSERT INTO "django_migrations" VALUES(5,'auth','0002_alter_permission_name_max_length','2015-11-29 03:04:26.596881');
INSERT INTO "django_migrations" VALUES(6,'auth','0003_alter_user_email_max_length','2015-11-29 03:04:26.680653');
INSERT INTO "django_migrations" VALUES(7,'auth','0004_alter_user_username_opts','2015-11-29 03:04:26.757264');
INSERT INTO "django_migrations" VALUES(8,'auth','0005_alter_user_last_login_null','2015-11-29 03:04:26.827919');
INSERT INTO "django_migrations" VALUES(9,'auth','0006_require_contenttypes_0002','2015-11-29 03:04:26.865370');
INSERT INTO "django_migrations" VALUES(10,'sites','0001_initial','2015-11-29 03:04:26.936410');
INSERT INTO "django_migrations" VALUES(11,'django_comments','0001_initial','2015-11-29 03:04:27.070655');
INSERT INTO "django_migrations" VALUES(12,'django_comments','0002_update_user_email_field_length','2015-11-29 03:04:27.157444');
INSERT INTO "django_migrations" VALUES(13,'sessions','0001_initial','2015-11-29 03:04:27.215779');
INSERT INTO "django_migrations" VALUES(14,'tagging','0001_initial','2015-11-29 03:04:27.334162');
INSERT INTO "django_migrations" VALUES(15,'zinnia','0001_initial','2015-11-29 03:04:27.498377');
INSERT INTO "django_migrations" VALUES(16,'zinnia','0002_lead_paragraph_and_image_caption','2015-11-29 03:04:27.638315');
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), UNIQUE ("group_id", "permission_id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), UNIQUE ("user_id", "group_id"));
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), UNIQUE ("user_id", "permission_id"));
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO "django_admin_log" VALUES(1,'2015-11-24 20:24:22.629000','1','What is Journalism? From Wikipedia, the free encyclopedia: draft',1,'',12,1);
INSERT INTO "django_admin_log" VALUES(2,'2015-11-24 20:26:15.100000','1','What is Journalism? From Wikipedia, the free encyclopedia: draft',2,'Changed image and image_caption.',12,1);
INSERT INTO "django_admin_log" VALUES(3,'2015-11-24 20:27:22.956000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed status.',12,1);
INSERT INTO "django_admin_log" VALUES(4,'2015-11-24 20:31:49.159000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'No fields changed.',12,1);
INSERT INTO "django_admin_log" VALUES(5,'2015-11-24 20:32:19.812000','1','Intro',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(6,'2015-11-24 20:32:37.750000','2','Politics',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(7,'2015-11-24 20:33:00.322000','3','International',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(8,'2015-11-24 20:33:15.748000','4','Satire',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(9,'2015-11-24 20:34:04.318000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed categories.',12,1);
INSERT INTO "django_admin_log" VALUES(10,'2015-11-24 20:34:22.984000','5','History',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(11,'2015-11-24 20:55:27.552000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed image.',12,1);
INSERT INTO "django_admin_log" VALUES(12,'2015-11-24 22:34:05.046000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed image.',12,1);
INSERT INTO "django_admin_log" VALUES(13,'2015-11-24 22:34:39.833000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'No fields changed.',12,1);
INSERT INTO "django_admin_log" VALUES(14,'2015-11-24 22:36:14.871000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed image_caption.',12,1);
INSERT INTO "django_admin_log" VALUES(15,'2015-11-24 23:27:28.372000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed image_caption.',12,1);
INSERT INTO "django_admin_log" VALUES(16,'2015-11-24 23:37:55.469000','2','localhost:8000',1,'',7,1);
INSERT INTO "django_admin_log" VALUES(17,'2015-11-24 23:40:32.052000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'No fields changed.',12,1);
INSERT INTO "django_admin_log" VALUES(18,'2015-11-24 23:49:27.595000','1','localhost:8000',2,'Changed domain and name.',7,1);
INSERT INTO "django_admin_log" VALUES(19,'2015-11-24 23:49:48.951000','1','localhost:8000',3,'',7,1);
INSERT INTO "django_admin_log" VALUES(20,'2015-11-25 00:02:54.545000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',1,'',12,1);
INSERT INTO "django_admin_log" VALUES(21,'2015-11-25 00:05:18.754000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed content.',12,1);
INSERT INTO "django_admin_log" VALUES(22,'2015-11-25 00:20:53.215000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',1,'',12,1);
INSERT INTO "django_admin_log" VALUES(23,'2015-11-25 00:22:30.382000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'Changed content.',12,1);
INSERT INTO "django_admin_log" VALUES(24,'2015-11-25 16:47:56.820000','6','Washington, D.C.',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(25,'2015-11-25 16:49:45.415000','7','Sports',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(26,'2015-11-25 16:49:48.472000','7','Sports',2,'No fields changed.',13,1);
INSERT INTO "django_admin_log" VALUES(27,'2015-11-25 16:49:53.913000','8','Local',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(28,'2015-11-25 16:50:13.201000','9','National',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(29,'2015-11-25 16:50:32.649000','10','World',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(30,'2015-11-25 16:50:38.446000','11','Business',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(31,'2015-11-25 16:50:44.103000','12','Tech',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(32,'2015-11-25 16:50:51.056000','13','Lifestyle',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(33,'2015-11-25 16:51:11.177000','14','Entertainment',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(34,'2015-11-25 16:51:16.945000','15','Video',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(35,'2015-11-25 16:51:31.634000','16','Photography',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(36,'2015-11-25 16:52:14.391000','17','Opinions',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(37,'2015-11-25 16:53:11.758000','18','Top Stories',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(38,'2015-11-25 16:53:41.407000','19','Health',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(39,'2015-11-25 16:53:50.032000','20','Tina Fey',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(40,'2015-11-25 16:55:13.349000','21','Society',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(41,'2015-11-25 16:55:49.804000','22','Science',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(42,'2015-11-25 16:56:03.894000','12','Technology',2,'Changed title.',13,1);
INSERT INTO "django_admin_log" VALUES(43,'2015-11-25 16:56:37.416000','6','Washington, D.C.',3,'',13,1);
INSERT INTO "django_admin_log" VALUES(44,'2015-11-25 16:56:37.471000','10','World',3,'',13,1);
INSERT INTO "django_admin_log" VALUES(45,'2015-11-25 16:57:18.555000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'Changed categories.',12,1);
INSERT INTO "django_admin_log" VALUES(46,'2015-11-25 16:57:46.678000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed categories.',12,1);
INSERT INTO "django_admin_log" VALUES(47,'2015-11-25 16:58:02.900000','23','Education',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(48,'2015-11-25 16:58:25.952000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed categories.',12,1);
INSERT INTO "django_admin_log" VALUES(49,'2015-11-25 16:59:04.546000','24','Reference',1,'',13,1);
INSERT INTO "django_admin_log" VALUES(50,'2015-11-25 16:59:36.961000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed categories.',12,1);
INSERT INTO "django_admin_log" VALUES(51,'2015-11-25 17:00:44.344000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed featured.',12,1);
INSERT INTO "django_admin_log" VALUES(52,'2015-11-26 15:02:51.330000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed featured.',12,1);
INSERT INTO "django_admin_log" VALUES(53,'2015-11-26 15:03:16.150000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'Changed featured.',12,1);
INSERT INTO "django_admin_log" VALUES(54,'2015-11-26 15:05:39.830000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed image.',12,1);
INSERT INTO "django_admin_log" VALUES(55,'2015-11-26 15:08:07.424000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed lead and image_caption.',12,1);
INSERT INTO "django_admin_log" VALUES(56,'2015-11-26 15:10:01.144000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed content.',12,1);
INSERT INTO "django_admin_log" VALUES(57,'2015-11-26 15:11:10.778000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed featured and excerpt.',12,1);
INSERT INTO "django_admin_log" VALUES(58,'2015-11-26 15:11:42.783000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'Changed excerpt.',12,1);
INSERT INTO "django_admin_log" VALUES(59,'2015-11-26 15:13:03.292000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed excerpt.',12,1);
INSERT INTO "django_admin_log" VALUES(60,'2015-11-26 15:13:22.601000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'No fields changed.',12,1);
INSERT INTO "django_admin_log" VALUES(61,'2015-11-26 15:13:39.492000','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed featured.',12,1);
INSERT INTO "django_admin_log" VALUES(62,'2015-11-26 15:14:49.024000','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed excerpt and tags.',12,1);
INSERT INTO "django_admin_log" VALUES(63,'2015-11-26 15:15:28.266000','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'Changed tags.',12,1);
INSERT INTO "django_admin_log" VALUES(64,'2015-11-27 17:50:05.882000','1','localhost:8000',2,'Changed name.',7,1);
INSERT INTO "django_admin_log" VALUES(65,'2015-11-29 11:46:13.001319','1','thejournalismproject.pythonanywhere.com',2,'Changed domain and name.',7,1);
INSERT INTO "django_admin_log" VALUES(66,'2015-11-29 11:48:34.488697','3','''Huffington Post'' Employee Sucked Into Aggregation Turbine: published',2,'Changed image.',12,1);
INSERT INTO "django_admin_log" VALUES(67,'2015-11-29 11:50:33.337809','2','Reporter For High School Newspaper Most Professional Journalist In Nation: published',2,'Changed image.',12,1);
INSERT INTO "django_admin_log" VALUES(68,'2015-11-29 11:51:09.572962','1','What is Journalism? From Wikipedia, the free encyclopedia: published',2,'Changed image.',12,1);
INSERT INTO "django_admin_log" VALUES(69,'2015-11-30 00:09:07.088143','4','Inaccuracy Of Every Single Detail Forces Student Paper To Pull Story At Last Minute: draft',1,'',12,1);
INSERT INTO "django_admin_log" VALUES(70,'2015-11-30 00:10:04.997001','4','Inaccuracy Of Every Single Detail Forces Student Paper To Pull Story At Last Minute: draft',2,'Changed featured and excerpt.',12,1);
INSERT INTO "django_admin_log" VALUES(71,'2015-11-30 00:11:00.872434','4','Inaccuracy Of Every Single Detail Forces Student Paper To Pull Story At Last Minute: published',2,'Changed status.',12,1);
INSERT INTO "django_admin_log" VALUES(72,'2015-11-30 00:12:09.268312','4','Inaccuracy Of Every Single Detail Forces Student Paper To Pull Story At Last Minute: published',2,'Changed image_caption.',12,1);
INSERT INTO "django_admin_log" VALUES(73,'2015-11-30 00:13:54.795923','4','Inaccuracy Of Every Single Detail Forces Student Paper To Pull Story At Last Minute: published',2,'Changed content.',12,1);
INSERT INTO "django_admin_log" VALUES(74,'2015-11-30 00:24:42.791460','5','Tornado Victims Thank News Organization For Its In-Depth Reporting On Storm''s Carnage: draft',1,'',12,1);
INSERT INTO "django_admin_log" VALUES(75,'2015-11-30 00:25:00.703376','5','Tornado Victims Thank News Organization For Its In-Depth Reporting On Storm''s Carnage: published',2,'Changed status.',12,1);
INSERT INTO "django_admin_log" VALUES(76,'2015-11-30 00:27:45.594967','5','Tornado Victims Thank News Organization For Its In-Depth Reporting On Storm''s Carnage: published',2,'Changed tags.',12,1);
INSERT INTO "django_admin_log" VALUES(77,'2015-11-30 00:28:03.655176','5','Tornado Victims Thank News Organization For Its In-Depth Reporting On Storm''s Carnage: published',2,'Changed categories.',12,1);
INSERT INTO "django_admin_log" VALUES(78,'2015-12-30 16:35:36.801974','6','Hidden Victims Identified: draft',1,'',12,1);
INSERT INTO "django_admin_log" VALUES(79,'2015-12-30 16:37:17.755563','6','Hidden Victims Identified: published',2,'Changed status.',12,1);
INSERT INTO "django_admin_log" VALUES(80,'2015-12-30 18:00:23.189676','2','jayne',1,'',4,1);
INSERT INTO "django_admin_log" VALUES(81,'2015-12-30 18:01:45.649239','2','jayne',2,'Changed first_name, last_name, email, is_staff and is_superuser.',4,1);
INSERT INTO "django_admin_log" VALUES(82,'2015-12-30 18:02:01.155539','1','admin',2,'Changed first_name and last_name.',4,1);
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL, UNIQUE ("app_label", "model"));
INSERT INTO "django_content_type" VALUES(1,'admin','logentry');
INSERT INTO "django_content_type" VALUES(2,'auth','permission');
INSERT INTO "django_content_type" VALUES(3,'auth','group');
INSERT INTO "django_content_type" VALUES(4,'auth','user');
INSERT INTO "django_content_type" VALUES(5,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES(6,'sessions','session');
INSERT INTO "django_content_type" VALUES(7,'sites','site');
INSERT INTO "django_content_type" VALUES(8,'django_comments','comment');
INSERT INTO "django_content_type" VALUES(9,'django_comments','commentflag');
INSERT INTO "django_content_type" VALUES(10,'tagging','tag');
INSERT INTO "django_content_type" VALUES(11,'tagging','taggeditem');
INSERT INTO "django_content_type" VALUES(12,'zinnia','entry');
INSERT INTO "django_content_type" VALUES(13,'zinnia','category');
INSERT INTO "django_content_type" VALUES(14,'zinnia','author');
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL, UNIQUE ("content_type_id", "codename"));
INSERT INTO "auth_permission" VALUES(1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES(2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES(3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES(4,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES(5,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES(6,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES(7,3,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES(8,3,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES(9,3,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES(10,4,'add_user','Can add user');
INSERT INTO "auth_permission" VALUES(11,4,'change_user','Can change user');
INSERT INTO "auth_permission" VALUES(12,4,'delete_user','Can delete user');
INSERT INTO "auth_permission" VALUES(13,5,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES(14,5,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES(15,5,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES(16,6,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES(17,6,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES(18,6,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES(19,7,'add_site','Can add site');
INSERT INTO "auth_permission" VALUES(20,7,'change_site','Can change site');
INSERT INTO "auth_permission" VALUES(21,7,'delete_site','Can delete site');
INSERT INTO "auth_permission" VALUES(22,8,'add_comment','Can add comment');
INSERT INTO "auth_permission" VALUES(23,8,'change_comment','Can change comment');
INSERT INTO "auth_permission" VALUES(24,8,'delete_comment','Can delete comment');
INSERT INTO "auth_permission" VALUES(25,8,'can_moderate','Can moderate comments');
INSERT INTO "auth_permission" VALUES(26,9,'add_commentflag','Can add comment flag');
INSERT INTO "auth_permission" VALUES(27,9,'change_commentflag','Can change comment flag');
INSERT INTO "auth_permission" VALUES(28,9,'delete_commentflag','Can delete comment flag');
INSERT INTO "auth_permission" VALUES(29,10,'add_tag','Can add tag');
INSERT INTO "auth_permission" VALUES(30,10,'change_tag','Can change tag');
INSERT INTO "auth_permission" VALUES(31,10,'delete_tag','Can delete tag');
INSERT INTO "auth_permission" VALUES(32,11,'add_taggeditem','Can add tagged item');
INSERT INTO "auth_permission" VALUES(33,11,'change_taggeditem','Can change tagged item');
INSERT INTO "auth_permission" VALUES(34,11,'delete_taggeditem','Can delete tagged item');
INSERT INTO "auth_permission" VALUES(35,12,'add_entry','Can add entry');
INSERT INTO "auth_permission" VALUES(36,12,'change_entry','Can change entry');
INSERT INTO "auth_permission" VALUES(37,12,'delete_entry','Can delete entry');
INSERT INTO "auth_permission" VALUES(38,12,'can_view_all','Can view all entries');
INSERT INTO "auth_permission" VALUES(39,12,'can_change_status','Can change status');
INSERT INTO "auth_permission" VALUES(40,12,'can_change_author','Can change author(s)');
INSERT INTO "auth_permission" VALUES(41,13,'add_category','Can add category');
INSERT INTO "auth_permission" VALUES(42,13,'change_category','Can change category');
INSERT INTO "auth_permission" VALUES(43,13,'delete_category','Can delete category');
INSERT INTO "auth_permission" VALUES(44,4,'add_author','Can add author');
INSERT INTO "auth_permission" VALUES(45,4,'change_author','Can change author');
INSERT INTO "auth_permission" VALUES(46,4,'delete_author','Can delete author');
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "is_superuser" bool NOT NULL, "username" varchar(30) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_login" datetime NULL);
INSERT INTO "auth_user" VALUES(1,'pbkdf2_sha256$20000$CDmhLZl4WBSR$EecgZxYqMMG9CqXOM2jB/z4IHK8q2h7/I0sCnEWRWTo=',1,'admin','John','Kraus','johnkraus3@gmail.com',1,1,'2015-11-29 03:05:52','2015-12-30 16:27:05');
INSERT INTO "auth_user" VALUES(2,'pbkdf2_sha256$20000$pp7HXdnyi0A1$PP4XzzTdcbCwFpz+tEihGxlTjoNh3UcSMq/GJkEbWpM=',1,'jayne','Jayne','O''Donnell','jodonnel@usatoday.com',1,1,'2015-12-30 18:00:23','2015-12-30 18:03:21.256012');
CREATE TABLE "django_site" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "domain" varchar(100) NOT NULL, "name" varchar(50) NOT NULL);
INSERT INTO "django_site" VALUES(1,'thejournalismproject.pythonanywhere.com','The Journalism Project');
CREATE TABLE "django_comment_flags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "flag" varchar(30) NOT NULL, "flag_date" datetime NOT NULL, "comment_id" integer NOT NULL REFERENCES "django_comments" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), UNIQUE ("user_id", "comment_id", "flag"));
CREATE TABLE "django_comments" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_pk" text NOT NULL, "user_name" varchar(50) NOT NULL, "user_url" varchar(200) NOT NULL, "comment" text NOT NULL, "submit_date" datetime NOT NULL, "ip_address" char(39) NULL, "is_public" bool NOT NULL, "is_removed" bool NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "site_id" integer NOT NULL REFERENCES "django_site" ("id"), "user_id" integer NULL REFERENCES "auth_user" ("id"), "user_email" varchar(254) NOT NULL);
INSERT INTO "django_comments" VALUES(2,'1','admin','','How will the end of print journalism affect old loons who hoard newspapers?
','2015-11-24 23:58:59.095000','127.0.0.1',1,0,12,1,1,'johnkraus3@gmail.com');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO "django_session" VALUES('ivr55670tm55qoi79k4mdj6r6j52w4q2','ZjYxZDk5YzZlNTY3M2RmZWNkOTc3YTVhYzZkZjlhZGJhMzEyNWRhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YWUwMzM0ODVhNzVjMjc0OGMzM2ZkYzJlODA0MjgwMmY5NzlhMDA0In0=','2015-12-13 15:19:45.980096');
INSERT INTO "django_session" VALUES('2zc2m9kvc1ccgxnzoma49vfefvqsg3bx','ZjYzZGY4ZTMxM2VkNjhlNjA4OGVlYjE2ZWJjNWM5YjE5MzI2MjE0Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiN2JlYmM5MDgyM2FkNGJkYzMwYzhlYzQ4NDViYzgyM2ZmZjhiMzhhZSIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2016-01-13 18:03:21.284844');
CREATE TABLE "tagging_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(50) NOT NULL UNIQUE);
INSERT INTO "tagging_tag" VALUES(1,'hoarding');
INSERT INTO "tagging_tag" VALUES(2,'print');
INSERT INTO "tagging_tag" VALUES(3,'aggregation');
INSERT INTO "tagging_tag" VALUES(4,'mayhem');
INSERT INTO "tagging_tag" VALUES(5,'inaccuracies');
INSERT INTO "tagging_tag" VALUES(6,'student');
INSERT INTO "tagging_tag" VALUES(7,'exploitation');
INSERT INTO "tagging_tag" VALUES(8,'beer');
INSERT INTO "tagging_tag" VALUES(9,'fake');
INSERT INTO "tagging_tag" VALUES(10,'plagiarism');
CREATE TABLE "tagging_taggeditem" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" integer unsigned NOT NULL, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "tag_id" integer NOT NULL REFERENCES "tagging_tag" ("id"), UNIQUE ("tag_id", "content_type_id", "object_id"));
INSERT INTO "tagging_taggeditem" VALUES(1,1,12,1);
INSERT INTO "tagging_taggeditem" VALUES(2,1,12,2);
INSERT INTO "tagging_taggeditem" VALUES(3,3,12,3);
INSERT INTO "tagging_taggeditem" VALUES(4,3,12,4);
INSERT INTO "tagging_taggeditem" VALUES(5,4,12,5);
INSERT INTO "tagging_taggeditem" VALUES(6,4,12,6);
INSERT INTO "tagging_taggeditem" VALUES(7,5,12,7);
INSERT INTO "tagging_taggeditem" VALUES(8,6,12,8);
INSERT INTO "tagging_taggeditem" VALUES(9,6,12,9);
INSERT INTO "tagging_taggeditem" VALUES(10,6,12,10);
INSERT INTO "tagging_taggeditem" VALUES(11,6,12,6);
CREATE TABLE "zinnia_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(255) NOT NULL, "slug" varchar(255) NOT NULL UNIQUE, "description" text NOT NULL, "lft" integer unsigned NOT NULL, "rght" integer unsigned NOT NULL, "tree_id" integer unsigned NOT NULL, "level" integer unsigned NOT NULL, "parent_id" integer NULL REFERENCES "zinnia_category" ("id"));
INSERT INTO "zinnia_category" VALUES(1,'Intro','intro','',1,2,7,0,NULL);
INSERT INTO "zinnia_category" VALUES(2,'Politics','politics','',1,2,13,0,NULL);
INSERT INTO "zinnia_category" VALUES(3,'International','international','',1,2,6,0,NULL);
INSERT INTO "zinnia_category" VALUES(4,'Satire','satire','',1,2,15,0,NULL);
INSERT INTO "zinnia_category" VALUES(5,'History','history','',1,2,5,0,NULL);
INSERT INTO "zinnia_category" VALUES(7,'Sports','sports','',1,2,18,0,NULL);
INSERT INTO "zinnia_category" VALUES(8,'Local','local','',1,2,9,0,NULL);
INSERT INTO "zinnia_category" VALUES(9,'National','national','',1,2,10,0,NULL);
INSERT INTO "zinnia_category" VALUES(11,'Business','business','',1,2,1,0,NULL);
INSERT INTO "zinnia_category" VALUES(12,'Technology','tech','',1,2,19,0,NULL);
INSERT INTO "zinnia_category" VALUES(13,'Lifestyle','lifestyle','',1,2,8,0,NULL);
INSERT INTO "zinnia_category" VALUES(14,'Entertainment','entertainment','',1,2,3,0,NULL);
INSERT INTO "zinnia_category" VALUES(15,'Video','video','',1,2,22,0,NULL);
INSERT INTO "zinnia_category" VALUES(16,'Photography','photography','',1,2,12,0,NULL);
INSERT INTO "zinnia_category" VALUES(17,'Opinions','opinions','',1,2,11,0,NULL);
INSERT INTO "zinnia_category" VALUES(18,'Top Stories','top-stories','',1,2,21,0,NULL);
INSERT INTO "zinnia_category" VALUES(19,'Health','health','',1,2,4,0,NULL);
INSERT INTO "zinnia_category" VALUES(20,'Tina Fey','tina-fey','',1,2,20,0,NULL);
INSERT INTO "zinnia_category" VALUES(21,'Society','society','',1,2,17,0,NULL);
INSERT INTO "zinnia_category" VALUES(22,'Science','science','',1,2,16,0,NULL);
INSERT INTO "zinnia_category" VALUES(23,'Education','education','',1,2,2,0,NULL);
INSERT INTO "zinnia_category" VALUES(24,'Reference','reference','',1,2,14,0,NULL);
CREATE TABLE "zinnia_entry_categories" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "entry_id" integer NOT NULL REFERENCES "zinnia_entry" ("id"), "category_id" integer NOT NULL REFERENCES "zinnia_category" ("id"), UNIQUE ("entry_id", "category_id"));
INSERT INTO "zinnia_entry_categories" VALUES(6,3,4);
INSERT INTO "zinnia_entry_categories" VALUES(7,2,9);
INSERT INTO "zinnia_entry_categories" VALUES(8,2,4);
INSERT INTO "zinnia_entry_categories" VALUES(9,2,23);
INSERT INTO "zinnia_entry_categories" VALUES(10,1,24);
INSERT INTO "zinnia_entry_categories" VALUES(15,4,23);
INSERT INTO "zinnia_entry_categories" VALUES(16,5,9);
INSERT INTO "zinnia_entry_categories" VALUES(21,6,4);
INSERT INTO "zinnia_entry_categories" VALUES(22,6,21);
INSERT INTO "zinnia_entry_categories" VALUES(23,6,14);
INSERT INTO "zinnia_entry_categories" VALUES(24,6,23);
CREATE TABLE "zinnia_entry_related" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "from_entry_id" integer NOT NULL REFERENCES "zinnia_entry" ("id"), "to_entry_id" integer NOT NULL REFERENCES "zinnia_entry" ("id"), UNIQUE ("from_entry_id", "to_entry_id"));
CREATE TABLE "zinnia_entry_sites" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "entry_id" integer NOT NULL REFERENCES "zinnia_entry" ("id"), "site_id" integer NOT NULL REFERENCES "django_site" ("id"), UNIQUE ("entry_id", "site_id"));
INSERT INTO "zinnia_entry_sites" VALUES(4,3,1);
INSERT INTO "zinnia_entry_sites" VALUES(5,2,1);
INSERT INTO "zinnia_entry_sites" VALUES(6,1,1);
INSERT INTO "zinnia_entry_sites" VALUES(11,4,1);
INSERT INTO "zinnia_entry_sites" VALUES(15,5,1);
INSERT INTO "zinnia_entry_sites" VALUES(17,6,1);
CREATE TABLE "zinnia_entry_authors" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "entry_id" integer NOT NULL REFERENCES "zinnia_entry" ("id"), "author_id" integer NOT NULL REFERENCES "auth_user" ("id"), UNIQUE ("entry_id", "author_id"));
INSERT INTO "zinnia_entry_authors" VALUES(4,3,1);
INSERT INTO "zinnia_entry_authors" VALUES(5,2,1);
INSERT INTO "zinnia_entry_authors" VALUES(6,1,1);
INSERT INTO "zinnia_entry_authors" VALUES(11,4,1);
INSERT INTO "zinnia_entry_authors" VALUES(15,5,1);
INSERT INTO "zinnia_entry_authors" VALUES(17,6,1);
CREATE TABLE "zinnia_entry" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "title" varchar(255) NOT NULL, "slug" varchar(255) NOT NULL, "status" integer NOT NULL, "start_publication" datetime NULL, "end_publication" datetime NULL, "creation_date" datetime NOT NULL, "last_update" datetime NOT NULL, "content" text NOT NULL, "comment_enabled" bool NOT NULL, "pingback_enabled" bool NOT NULL, "trackback_enabled" bool NOT NULL, "comment_count" integer NOT NULL, "pingback_count" integer NOT NULL, "trackback_count" integer NOT NULL, "excerpt" text NOT NULL, "image" varchar(100) NOT NULL, "featured" bool NOT NULL, "tags" varchar(255) NOT NULL, "login_required" bool NOT NULL, "password" varchar(50) NOT NULL, "content_template" varchar(250) NOT NULL, "detail_template" varchar(250) NOT NULL, "image_caption" text NOT NULL, "lead" text NOT NULL);
INSERT INTO "zinnia_entry" VALUES(1,'What is Journalism? From Wikipedia, the free encyclopedia','what-journalism-wikipedia-free-encyclopedia',2,NULL,NULL,'2015-11-24 20:21:32','2015-11-29 11:51:09.378629','The media that journalism uses vary diversely and include: content published via newspapers and magazines (print), television and radio (broadcast), and their digital media versions — news websites and applications.

In modern society, the news media is the chief purveyor of information and opinion about public affairs. Journalism, however, is not always confined to the news media or to news itself, as journalistic communication may find its way into broader forms of expression, including literature and cinema. In some nations, the news media is controlled by government intervention, and is not a fully independent body.[3]

In a democratic society, however, access to free information plays a central role in creating a system of checks and balance, and in distributing power equally amongst governments, businesses, individuals, and other social entities. Access to verifiable information gathered by independent media sources, which adhere to journalistic standards, can also be of service to ordinary citizens, by empowering them with the tools they need in order to participate in the political process.

The role and status of journalism, along with that of the mass media, has undergone profound changes over the last two decades with the advent of digital technology and publication of news on the Internet.[4] This has created a shift in the consumption of print media channels, as people increasingly consume news through e-readers, smartphones, and other electronic devices, challenging news organizations to fully monetize their digital wing, as well as improvise on the context in which they publish news in print. Notably, in the American media landscape, newsrooms have reduced their staff and coverage as traditional media channels, such as television, grapple with declining audiences. For instance, between 2007 and 2012, CNN edited its story packages into nearly half of their original time length.[5]

This compactness in coverage has been linked to broad audience attrition, as a large majority of respondents in recent studies show changing preferences in news consumption.[6] The digital era has also ushered in a new kind of journalism in which ordinary citizens play a greater role in the process of news making, with the rise of citizen journalism being possible through the Internet. Using video camera equipped smartphones, active citizens are now enabled to record footage of news events and upload them onto channels like YouTube, which is often discovered and used by mainstream news media outlets. Meanwhile, easy access to news from a variety of online sources, like blogs and other social media, has resulted in readers being able to pick from a wider choice of official and unofficial sources, instead of only from traditional media organizations.
',1,1,1,2,0,0,'How will the demise of print journalism affect old loons who hoard newspapers?','uploads/zinnia/2015/11/29/800px-simons_perskaart_dom.jpg',1,'print,hoarding',0,'','zinnia/_entry_detail.html','entry_detail.html','"Simons Perskaart DOM" by Marie-Anne08 - Own work. Licensed under CC BY-SA 3.0 via Commons - https://commons.wikimedia.org/wiki/File:Simons_Perskaart_DOM.jpg#/media/File:Simons_Perskaart_DOM.jpg','Journalism is gathering, processing, and dissemination of news, and information related to news, to an audience. The word applies to the method of inquiring for news, the literary style which is used to disseminate it, and the activity (professional or not) of journalism.
');
INSERT INTO "zinnia_entry" VALUES(2,'Reporter For High School Newspaper Most Professional Journalist In Nation','reporter-high-school-newspaper-most-professional-journalist-nation',2,NULL,NULL,'2015-11-25 00:00:43','2015-11-29 11:50:33.209724','"I just want everyone on campus to know what''s going on," said the student, who when reporting on various Woodrow Wilson  High events and activities attributes all details and assertions, runs quotes by sources before publishing them, and avoids sensationalism. "I triple-check my facts and then take out anything that looks like an opinion from me—just basic journalism stuff, really." Finklestern, 15, who with her short, cropped hair and tomboyish clothing is probably a lesbian, said that while she enjoyed writing for the student paper, she doubted she was good enough to ever do it for a living.',1,1,1,0,0,0,'"I just want everyone on campus to know what''s going on," said the student, who when reporting on various Woodrow Wilson High events and activities attributes all details and assertions, runs quotes by sources before publishing them, and avoids sensationalism. "I triple-check my facts and then take out anything that...','uploads/zinnia/2015/11/29/woodrow_wilson_high_school.jpg',1,'',0,'','zinnia/_entry_detail.html','entry_detail.html','Woodrow Wilson High School','According to sources, sophomore Melanie Finkelstein, a reporter for Woodrow Wilson High School''s Eagle Eye student newspaper, is, as of Tuesday, the most competent and professional journalist in the nation. 
');
INSERT INTO "zinnia_entry" VALUES(3,'''Huffington Post'' Employee Sucked Into Aggregation Turbine','huffington-post-employee-sucked-aggregation-turbine',2,NULL,NULL,'2015-11-25 00:14:45','2015-11-29 11:48:30.132352','NEW YORK—Shocked and saddened witnesses at the Huffington Post''s news-aggregation facility have confirmed that employee Henry Evers, 25, died Wednesday after being sucked into the website''s powerful news-repurposing turbine, where his body was immediately torn to pieces.


The 200-ton content-compiling device, developed by Greek multimillionaire and site co-founder Ari­anna Huffington, sucks up original articles from around the web with its massive rotor assembly, re-brands them with the Huffington Post name, and then spits them back out on the company''s home page.

Workers said that when the machine ground to a halt at approximately 11:30 a.m., Evers reached inside to dislodge a particularly thoughtful 700-word Christian Science Monitor essay on the unrest in Syria that had become jammed.

Apparently unprepared for the aggregator mechanism''s quick restart, Evers was gruesomely dismembered by its rapidly spinning blades, which soaked the room in blood and unprocessed news content.

"I heard this grinding noise, and then I saw all these Washington Post stories, sexy pictures of people in the workplace, and celebr­ity anti-vaccine editorials start to back up on the factory floor," said Huffington Post editor Emily Paxton, who monitors an array of computer screens displaying news sites like NYTimes.com and then presses enter on a keyboard, sending the content into the turbine, which through sheer axial force posts each piece on HuffingtonPost.com with a 30-word introductory paragraph. "Before I could stop him, Henry had his arm crammed way down in there. He pulled out an article, smiled, and the next thing I knew, he was sucked headfirst into the rotary casing."

"We couldn''t shut it down," continued Paxton, adding that the smell of mutilated remains mixed with raw Internet media was gag-inducing. "If we had, it would have taken a full day for the technicians to reset it, and we couldn''t risk missing a breaking story on Brody Jenner."

Since The Huffington Post was founded in 2005, its headquarters has consisted of two rooms: Arianna Huffington''s spacious, lav­ishly appointed office overlooking New York City, and the windowless 10,000-square-foot subterranean warehouse that houses the turbine. More than 700 low-wage workers, known as writers, clock in every day, and, dressed in their Huffington Post hard hats and coveralls, work in dark, unsafe conditions to ensure the machine runs smoothly and constantly churns out content.
''Huffington Post'' writers following a typical 16-hour turbine shift.

Operating at 5,100 rpm, or the equivalent of 2,500 online articles and videos per minute, the turbine uses its massive power to sweep the Internet for stories or photos that ensure HuffingtonPost.com receives enough page views and mouse clicks to appease advertisers.

Though Evers had worked with the com­pany for 11 months, reports indicate he was unaware the turbine often overheats and malfunctions when tasked with posting an article of more than 400 words.

"Evers was pulverized," said Aaron Thomas, a spokesperson for the Occupational Safety and Health Administration. "There was no way to identify him. No dental remains, no hair samples, just eyewitness reports and 17 cell-phone camera videos that the turbine immediately threw up on the site under the tags ''Funny'' and ''OMG.''"

"In a way, though, maybe it''s a good thing he was ripped to shreds and killed," added Thomas, later saying that because The Huffington Post didn''t provide Evers with health insurance, he wouldn''t have been able to afford his hospital bills, anyway. "Working the HuffPo turbine is no way to live."

According to sources, editor-in-chief Ari­anna Huffington appeared shaken after the incident, asking if the turbine was broken, if it would need to be replaced, and if the horrific accident would affect the posting of a "Worst Hair In Hollywood" celebrity feature.

"When you harvest as much content as we do, there are bound to be some fatalities," Huffington said in a statement. "That''s just part of the job."

Representatives from the website said that to honor Evers'' memory, they planned to post a slide show titled "25 Funniest Animal Photobombs We Think Henry Would Have Loved" as early as tomorrow.
',1,1,1,0,0,0,'Shocked and saddened witnesses at the Huffington Post''s news-aggregation facility have confirmed that employee Henry Evers, 25, died Wednesday after being sucked into the website''s powerful news-repurposing turbine, where his body was immediately torn to pieces. ','uploads/zinnia/2015/11/29/huffington-aggregation-engine.jpg',1,'mayhem,aggregation',0,'','zinnia/_entry_detail.html','entry_detail.html','The Huffington Post started using the turbine in earnest when the creation of actual original content was deemed cost-prohibitive.
','Horrified Workers Watch As Colleague Torn Apart By Powerful Content-Gathering Engine

');
INSERT INTO "zinnia_entry" VALUES(4,'Inaccuracy Of Every Single Detail Forces Student Paper To Pull Story At Last Minute','inaccuracy-every-single-detail-forces-student-paper-pull-story-last-minute',2,NULL,NULL,'2015-11-30 00:04:27','2015-11-30 00:13:54.430840','“We at The Recorder strive to ensure that every piece of writing we publish contains timely and thoroughly reported information, and because each sentence of this article contains at least one factual error, we made the call to kill it,” said editor-in-chief Hannah Lowry, noting numerous “red flags” in the article that included an incorrect date and location; misattributed quotes; several wide-of-the-mark figures, including the school’s attendance; and the names of students, faculty, and buildings that do not exist. 

“While I was confident in the story’s reporting after my first pass, a closer inspection earlier today revealed that the piece as a whole does not contain a single accurate statement, and the headline referred to a campus event that never occurred. 

It was with this knowledge that I made the decision to pull the story from publication, ensuring that we uphold the paramount responsibilities entrusted to us by the Blue Devil community.” At press time, the student reporter who authored the article had reportedly apologized to the staff and attributed the errors to extreme fatigue.
',1,1,1,0,0,0,'NEW BRITAIN, CT—Explaining that the article did not meet the publication’s high standards, the editors of The Recorder, Central Connecticut State University’s student newspaper, confirmed Wednesday that the inaccuracy of every single detail forced them to pull the issue’s top story at the last minute. 
','uploads/zinnia/2015/11/30/student_newspaper_pulls_story.jpg',1,'inaccuracies,student',0,'','zinnia/_entry_detail.html','entry_detail.html','The editors of The Recorder, Central Connecticut State University’s student newspaper, confirmed Wednesday that the inaccuracy of every single detail forced them to pull the issue’s top story at the last minute. 
','NEW BRITAIN, CT—Explaining that the article did not meet the publication’s high standards, the editors of The Recorder, Central Connecticut State University’s student newspaper, confirmed Wednesday that the inaccuracy of every single detail forced them to pull the issue’s top story at the last minute. ');
INSERT INTO "zinnia_entry" VALUES(5,'Tornado Victims Thank News Organization For Its In-Depth Reporting On Storm''s Carnage','tornado-victims-thank-news-organization-its-depth-reporting-storms-carnage',2,NULL,NULL,'2015-11-30 00:19:54','2015-11-30 00:28:03.601953','Though the tornado claimed 46 lives and caused more than $40 million in property damage, many in this devastated community told reporters Monday they could take solace in the fact that such a responsible news organization was on site to contribute hard-hitting yet pointed commentary that skilfully captured every nuance of the storm''s ruinous toll.

"Beginning with the speed and accuracy of their initial coverage, you could tell this newspaper cared only about reporting the story fairly and thoroughly, and was not interested in exploiting our suffering for cheap spectacle or personal gain," said former bank teller Amber Devoe, who later grew emotional talking about The Onion''s touching three-part feature on her family''s plight. "They truly illuminated a significant and complex event with lucid writing and a sensitive presentation."

"I''ve lost everything—my home, my job, everything," Devoe added. "But this newspaper''s unwavering commitment to first-rate journalism has given me the courage to continue on."

Though townspeople remained in a state of shock, they spent most of Monday applauding the news organization''s "poignant," "classy," and "often brilliant" coverage of the storm. Explaining that they never felt taken advantage of, citizens said they hoped the newspaper would return repeatedly for follow-up stories, adding that they already missed watching reporters do their fantastic work.

In addition, every single person interviewed agreed that reading the newspaper''s coverage of the event was the one thing that gave them comfort.

"With my world crumbling around me, the paper''s consistent display of journalistic excellence and its evenhanded touch of humanity was something to look forward to," said Roy Brusckewicz, 56, standing by the splintered remains of his old trailer, which he said was "artfully profiled" in the newspaper''s Onion Magazine. "I appreciated the special emphasis they placed on investigating all aspects of the story, from the tornado''s human toll to its effect on the local economy and culture. Really great stuff."

The news organization, with 3.6 million print readers in 11 cities nationwide and a website that attracts more than 7.5 million unique visitors every month, is not just confined to traditional media: Its expansive social networking presence and recent launch of mobile apps are a testament to the newspaper''s embrace of new technologies and its willingness to innovate in tandem with the changing face of journalism, sources reported.

To date, the newspaper has received a number of awards for its excellence, with one notable exception.

"Typically, after the reporting of such a tragedy, praise is heaped onto less deserving publications, such as The New York Times, The Wall Street Journal, the Los Angeles Times, and the Chicago Tribune," said livestock farmer Colin Atkins, whose livelihood was decimated by the twister. "This town will feel the effects of this tragedy for decades, but the real injustice would be if those piss-poor excuses for newspapers I just mentioned didn''t lose readers and precious ad dollars due to their incompetent coverage."

Atkins, who lost both his sons in the tornado, continued to rail against such media organizations, suggesting that while other reporters might get more attention with their flashy journalism degrees and their bylines, the writers of this newspaper are the only ones who truly empathized with the community''s plight.

"All we did was get hit by a tornado—they''re the real heroes," he said. "In recognition of their public service, they deserve some sort of prestigious national prize in journalism."

Added Atkins, "You know, if such a thing exists."
',1,1,1,0,0,0,'''It Was Personal Yet Not At All Exploitive,'' Victims Agree
','uploads/zinnia/2015/11/30/disaster_victim.jpg',1,'exploitation',0,'','zinnia/_entry_detail.html','entry_detail.html','Many in this devastated North Carolina community told reporters Monday they could take solace in the fact that such a responsible news organization was on site to contribute hard-hitting yet pointed commentary that skilfully captured every nuance of the storm''s ruinous toll.
','WINDSOR, NC—Still struggling to cope in the aftermath of an F3 tornado that ripped through town last week, citizens expressed gratitude to this newspaper for its meritorious in-depth coverage of the tragedy, lauding the publication''s ability to deliver aggressive reporting while remaining sensitive to the victims'' humanity.');
INSERT INTO "zinnia_entry" VALUES(6,'Hidden Victims Identified','hidden-victims-identified',2,NULL,NULL,'2015-12-30 16:27:19','2015-12-30 16:37:17.570373','(ACPA-Atlanta) For years failing and lazy students have relied on plagiarism to complete term papers. Tried and tested cheating techniques guaranteed success to the study-challenged, many of whom went on to successful careers in industry and banking, thanks to their creativity.

But with the advent of extensive fake news on the Internet and television, well meaning plagiarizers are being caught off guard. One forlorn student admitted, "it''s just too easy to steal someone else''s ideas and then find out after you submitted your paper that it was all an Internet lie. It isn''t fair."

Research indicates that these fake news victims are being forced to do better and more thorough research and have less time to devote to drinking, partying and general goofing-off. The Center data also demonstrated that students who become more focused on means rather than results, will be severely challenged when they go into corporate life. "It''s the quarterly result that counts, not how you get there," said one corporate recruiter.

Beer companies are also feeling the pinch as they become secondary victims of the trend.

"We need a classification system on all news stories with categories for real news, fake news and just plain stupid news to reduce the victim count," argued Ronald Pecorry, Internet research expert, "otherwise the economy is going to suffer."

End press release www.satireandcomment.com',1,1,1,0,0,0,'(ACPA-Atlanta) For years failing and lazy students have relied on plagiarism to complete term papers. Tried and tested cheating techniques guaranteed success to the study-challenged, many of whom went on to successful careers in industry and banking, thanks to their creativity. But with the advent of extensive fake news on...','uploads/zinnia/2015/12/30/tn_stout.jpg',0,'student,beer,fake,plagiarism',0,'','zinnia/_entry_detail.html','entry_detail.html','Guinness undrunk--innocent victim of diligent students.','Atlanta Center highlights hidden victims of fake news
');
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('django_migrations',16);
INSERT INTO "sqlite_sequence" VALUES('django_content_type',14);
INSERT INTO "sqlite_sequence" VALUES('auth_permission',46);
INSERT INTO "sqlite_sequence" VALUES('auth_user',2);
INSERT INTO "sqlite_sequence" VALUES('django_comment_flags',0);
INSERT INTO "sqlite_sequence" VALUES('django_comments',2);
INSERT INTO "sqlite_sequence" VALUES('tagging_taggeditem',11);
INSERT INTO "sqlite_sequence" VALUES('zinnia_entry',6);
INSERT INTO "sqlite_sequence" VALUES('django_site',1);
INSERT INTO "sqlite_sequence" VALUES('tagging_tag',10);
INSERT INTO "sqlite_sequence" VALUES('zinnia_category',24);
INSERT INTO "sqlite_sequence" VALUES('zinnia_entry_categories',24);
INSERT INTO "sqlite_sequence" VALUES('zinnia_entry_sites',17);
INSERT INTO "sqlite_sequence" VALUES('zinnia_entry_authors',17);
INSERT INTO "sqlite_sequence" VALUES('django_admin_log',82);
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "django_comment_flags_327a6c43" ON "django_comment_flags" ("flag");
CREATE INDEX "django_comment_flags_69b97d17" ON "django_comment_flags" ("comment_id");
CREATE INDEX "django_comment_flags_e8701ad4" ON "django_comment_flags" ("user_id");
CREATE INDEX "django_comments_417f1b1c" ON "django_comments" ("content_type_id");
CREATE INDEX "django_comments_9365d6e7" ON "django_comments" ("site_id");
CREATE INDEX "django_comments_e8701ad4" ON "django_comments" ("user_id");
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE INDEX "tagging_taggeditem_af31437c" ON "tagging_taggeditem" ("object_id");
CREATE INDEX "tagging_taggeditem_417f1b1c" ON "tagging_taggeditem" ("content_type_id");
CREATE INDEX "tagging_taggeditem_76f094bc" ON "tagging_taggeditem" ("tag_id");
CREATE INDEX "zinnia_category_caf7cc51" ON "zinnia_category" ("lft");
CREATE INDEX "zinnia_category_3cfbd988" ON "zinnia_category" ("rght");
CREATE INDEX "zinnia_category_656442a0" ON "zinnia_category" ("tree_id");
CREATE INDEX "zinnia_category_c9e9a848" ON "zinnia_category" ("level");
CREATE INDEX "zinnia_category_6be37982" ON "zinnia_category" ("parent_id");
CREATE INDEX "zinnia_entry_2dbcba41" ON "zinnia_entry" ("slug");
CREATE INDEX "zinnia_entry_9acb4454" ON "zinnia_entry" ("status");
CREATE INDEX "zinnia_entry_6dc6f11d" ON "zinnia_entry" ("start_publication");
CREATE INDEX "zinnia_entry_b803a79a" ON "zinnia_entry" ("end_publication");
CREATE INDEX "zinnia_entry_8424d087" ON "zinnia_entry" ("creation_date");
CREATE INDEX "zinnia_entry_status_3636e3771fb813f_idx" ON "zinnia_entry" ("status", "creation_date", "start_publication", "end_publication");
CREATE INDEX "zinnia_entry_slug_47e21da68dd08965_idx" ON "zinnia_entry" ("slug", "creation_date");
COMMIT;
