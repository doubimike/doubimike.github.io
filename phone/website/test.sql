BEGIN TRANSACTION;
CREATE TABLE "users_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "username" varchar(20) NOT NULL, "password" varchar(20) NOT NULL, "email" varchar(254) NOT NULL, "nickname" varchar(20) NOT NULL);
INSERT INTO `users_user` VALUES (1,'hello','hello','aaa@email.com','hello world');
INSERT INTO `users_user` VALUES (2,'helloaaa','helloaaa','aaa@email.comaa','hello world');
INSERT INTO `users_user` VALUES (3,'admin','admin','admin@admin.com','hello world');
CREATE TABLE "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
CREATE TABLE "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-04-02 14:48:43.787628');
INSERT INTO `django_migrations` VALUES (2,'auth','0001_initial','2016-04-02 14:48:43.823633');
INSERT INTO `django_migrations` VALUES (3,'admin','0001_initial','2016-04-02 14:48:43.841124');
INSERT INTO `django_migrations` VALUES (4,'contenttypes','0002_remove_content_type_name','2016-04-02 14:48:43.892491');
INSERT INTO `django_migrations` VALUES (5,'auth','0002_alter_permission_name_max_length','2016-04-02 14:48:43.915561');
INSERT INTO `django_migrations` VALUES (6,'auth','0003_alter_user_email_max_length','2016-04-02 14:48:43.934023');
INSERT INTO `django_migrations` VALUES (7,'auth','0004_alter_user_username_opts','2016-04-02 14:48:43.953992');
INSERT INTO `django_migrations` VALUES (8,'auth','0005_alter_user_last_login_null','2016-04-02 14:48:43.978273');
INSERT INTO `django_migrations` VALUES (9,'auth','0006_require_contenttypes_0002','2016-04-02 14:48:43.980356');
INSERT INTO `django_migrations` VALUES (10,'blog','0001_initial','2016-04-02 14:48:43.988480');
INSERT INTO `django_migrations` VALUES (11,'sessions','0001_initial','2016-04-02 14:48:43.995773');
INSERT INTO `django_migrations` VALUES (12,'blog','0002_auto_20160403_1121','2016-04-03 11:22:50.411467');
INSERT INTO `django_migrations` VALUES (13,'users','0001_initial','2016-04-03 13:16:56.890791');
INSERT INTO `django_migrations` VALUES (14,'blog','0003_auto_20160404_0613','2016-04-04 06:13:38.659167');
INSERT INTO `django_migrations` VALUES (15,'users','0002_auto_20160404_0613','2016-04-04 06:13:38.672566');
INSERT INTO `django_migrations` VALUES (16,'blog','0004_auto_20160404_0616','2016-04-04 06:16:53.669522');
INSERT INTO `django_migrations` VALUES (17,'blog','0005_auto_20160404_0617','2016-04-04 06:17:46.692613');
INSERT INTO `django_migrations` VALUES (18,'blog','0006_auto_20160404_2103','2016-04-04 13:03:33.450611');
INSERT INTO `django_migrations` VALUES (19,'blog','0007_auto_20160404_2108','2016-04-04 13:09:16.090854');
INSERT INTO `django_migrations` VALUES (20,'blog','0008_auto_20160404_2327','2016-04-04 15:27:35.629127');
INSERT INTO `django_migrations` VALUES (21,'blog','0009_files','2016-04-04 17:08:01.519762');
INSERT INTO `django_migrations` VALUES (22,'blog','0010_auto_20160407_1941','2016-04-07 11:42:05.008099');
CREATE TABLE "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL, UNIQUE ("app_label", "model"));
INSERT INTO `django_content_type` VALUES (1,'admin','logentry');
INSERT INTO `django_content_type` VALUES (2,'auth','permission');
INSERT INTO `django_content_type` VALUES (3,'auth','group');
INSERT INTO `django_content_type` VALUES (4,'auth','user');
INSERT INTO `django_content_type` VALUES (5,'contenttypes','contenttype');
INSERT INTO `django_content_type` VALUES (6,'sessions','session');
INSERT INTO `django_content_type` VALUES (7,'blog','blog');
INSERT INTO `django_content_type` VALUES (8,'users','user');
INSERT INTO `django_content_type` VALUES (9,'blog','tag');
INSERT INTO `django_content_type` VALUES (10,'blog','author');
INSERT INTO `django_content_type` VALUES (11,'blog','category');
INSERT INTO `django_content_type` VALUES (12,'blog','files');
CREATE TABLE "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "action_time" datetime NOT NULL, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL, "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id"), "user_id" integer NOT NULL REFERENCES "auth_user" ("id"));
INSERT INTO `django_admin_log` VALUES (1,'2016-04-02 15:26:46.386051','2','Blog object',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (2,'2016-04-02 17:20:16.478976','3','Blog object',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (3,'2016-04-03 11:23:40.614998','4','4',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (4,'2016-04-03 14:36:48.548842','3','admin',1,'',8,1);
INSERT INTO `django_admin_log` VALUES (5,'2016-04-03 16:19:01.064690','3','mikea',2,'Changed is_staff.',4,1);
INSERT INTO `django_admin_log` VALUES (6,'2016-04-04 03:10:48.712431','1','client',1,'',3,1);
INSERT INTO `django_admin_log` VALUES (7,'2016-04-04 03:11:31.112309','2','mike',2,'Changed groups.',4,1);
INSERT INTO `django_admin_log` VALUES (8,'2016-04-04 03:12:10.728162','2','mike',2,'Changed password.',4,1);
INSERT INTO `django_admin_log` VALUES (9,'2016-04-04 03:12:58.971924','3','mikea',2,'Changed groups.',4,1);
INSERT INTO `django_admin_log` VALUES (10,'2016-04-04 06:18:46.828356','1','DoubiMike',1,'',10,1);
INSERT INTO `django_admin_log` VALUES (11,'2016-04-04 06:19:14.932983','1','js',1,'',11,1);
INSERT INTO `django_admin_log` VALUES (12,'2016-04-04 06:19:20.836436','1','js',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (13,'2016-04-04 06:19:25.389597','2','good',1,'',9,1);
INSERT INTO `django_admin_log` VALUES (14,'2016-04-04 06:29:31.505368','5','ttttttt',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (15,'2016-04-04 06:41:17.835298','2','2',1,'',11,1);
INSERT INTO `django_admin_log` VALUES (16,'2016-04-04 07:27:43.267325','4','4',2,'Changed blog_author and blog_category.',7,1);
INSERT INTO `django_admin_log` VALUES (17,'2016-04-04 08:13:39.807711','6','time',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (18,'2016-04-04 09:57:49.398434','7','3',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (19,'2016-04-04 11:38:26.874580','8','汉字',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (20,'2016-04-04 13:07:56.001472','1','hello world',2,'Changed blog_author and blog_category.',7,1);
INSERT INTO `django_admin_log` VALUES (21,'2016-04-04 13:14:44.708739','1','hello world',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (22,'2016-04-04 13:16:10.183971','2','hello wolrd2',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (23,'2016-04-04 13:16:31.389541','3','3',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (24,'2016-04-04 13:17:00.216388','4','4',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (25,'2016-04-04 13:17:11.351578','5','ttttttt',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (26,'2016-04-04 13:17:23.027851','6','time',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (27,'2016-04-04 13:17:33.733732','7','3',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (28,'2016-04-04 14:01:42.368660','9','html',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (29,'2016-04-04 14:02:14.366698','9','html',2,'Changed blog_content.',7,1);
INSERT INTO `django_admin_log` VALUES (30,'2016-04-04 14:58:53.587011','10','markup',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (31,'2016-04-04 16:05:54.686165','11','ckeditor',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (32,'2016-04-04 17:09:05.162080','1','Files object',1,'',12,1);
INSERT INTO `django_admin_log` VALUES (33,'2016-04-05 02:14:02.941026','11','ckeditor',3,'',7,1);
INSERT INTO `django_admin_log` VALUES (34,'2016-04-05 03:38:48.629035','12','ckeditor',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (35,'2016-04-05 03:45:00.799628','12','ckeditor',2,'Changed blog_content.',7,1);
INSERT INTO `django_admin_log` VALUES (36,'2016-04-05 03:47:24.968110','12','ckeditor',2,'Changed blog_content.',7,1);
INSERT INTO `django_admin_log` VALUES (37,'2016-04-05 03:52:57.297021','12','ckeditor',2,'Changed blog_content.',7,1);
INSERT INTO `django_admin_log` VALUES (38,'2016-04-05 10:34:20.550684','13','1',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (39,'2016-04-05 10:34:27.601858','14','2',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (40,'2016-04-05 10:34:34.985213','15','3',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (41,'2016-04-05 10:34:42.246195','16','4',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (42,'2016-04-05 10:34:51.620073','17','5',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (43,'2016-04-05 11:45:55.251319','18','3',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (44,'2016-04-05 12:00:04.719913','19','2015',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (45,'2016-04-06 10:45:15.455494','20','166',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (46,'2016-04-06 12:21:55.300007','21','201507',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (47,'2016-04-07 02:01:59.063412','3','cat',1,'',11,1);
INSERT INTO `django_admin_log` VALUES (48,'2016-04-07 02:02:01.621429','22','cat',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (49,'2016-04-07 07:24:29.354365','23','你好世界',1,'',7,1);
INSERT INTO `django_admin_log` VALUES (50,'2016-04-07 07:37:45.270619','2','2',3,'',11,1);
CREATE TABLE "blog_tag" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "tag" varchar(20) NOT NULL);
INSERT INTO `blog_tag` VALUES (1,'js');
INSERT INTO `blog_tag` VALUES (2,'good');
CREATE TABLE "blog_files" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "file" varchar(100) NOT NULL);
INSERT INTO `blog_files` VALUES (1,'upload/me.jpeg');
CREATE TABLE "blog_category" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "category" varchar(20) NOT NULL);
INSERT INTO `blog_category` VALUES (1,'js');
INSERT INTO `blog_category` VALUES (3,'cat');
CREATE TABLE "blog_blog_tags" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "blog_id" integer NOT NULL REFERENCES "blog_blog" ("id"), "tag_id" integer NOT NULL REFERENCES "blog_tag" ("id"), UNIQUE ("blog_id", "tag_id"));
CREATE TABLE "blog_blog" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "blog_title" varchar(200) NOT NULL, "pub_date" datetime NOT NULL, "blog_author_id" integer NOT NULL REFERENCES "blog_author" ("id"), "blog_category_id" integer NOT NULL REFERENCES "blog_category" ("id"), "blog_content" text NOT NULL);
INSERT INTO `blog_blog` VALUES (8,'汉字','2016-04-04 11:32:07',1,1,'汉字');
INSERT INTO `blog_blog` VALUES (9,'html','2016-04-04 14:01:40',1,1,'hello
hello
world');
INSERT INTO `blog_blog` VALUES (10,'markup','2016-04-04 14:58:51',1,1,'## Enable Math

1. Math rendering is disabled by default, to enable it, check on the *Enable Math* option in *Preferences* > *General* > *All Documents*:.

2. Make sure you''ve connected to the internet.

   The Math rendering is powered by [MathJax](http://www.mathjax.org), the resources such as fonts are all online, thus the internet connection is needed for it to work.
   
3. For Users in mainland China

   Users in mainland China, if the Math option doesn''t work for you, try if you can visit [MathJax](http://www.mathjax.org) without VPN connected. If you can''t, maybe it''s blocked by the Great Firewall of China. Try connect to a VPN, climb over the wall, then the Math rendering should work.

### Known issues of Math option

1. It makes the Preview blink and blink again whenever typing.

   Math support is a good addition, except that it makes the Preview blink and blink again whenever typing, as it needs to refresh the whole typesetting.

2. It makes the Right View always scroll to top whenever typing.

 
That''s why I make it disabled by default. I suggest only enable it when you write Math Formulas, or better, only enable it when you export document to HTML which contains Math Formulas, when you are writing, disable it.


## Block level vs Inline level

Use double US dollors sign pair for Block level Math formula, and three US dollors sign pair for Inline Level.

For example this is a Block level $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$ formula, and this is an inline Level $$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$$ formula.


## The Math Syntax

The syntax is the same as [**Tex**](http://en.wikipedia.org/wiki/TeX), expect one thing:

Because the characters such as \ and _ and * and so on have special meanings in Markdown language, you need to add an extra \ character before them to escape them to make the Math renders correctly.

For example in TeX syntax it starts with \[ but here you need to add an extra \ to escape it, thus \\[

And so on… Luckily you don''t have to escape every \ characters, normally escape the beginning \[ and ending \] is enough, and perhaps \\ to \\\. 

#### The Quadratic Formula

$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}$$

#### The Lorenz Equations

\\[\begin{aligned}
\dot{x} & = \sigma(y-x) \\\
\dot{y} & = \rho x - y - xz \\\
\dot{z} & = -\beta z + xy
\end{aligned} \\]

#### The Cauchy-Schwarz Inequality

\\[ \left( \sum\_{k=1}^n a_k b_k \right)^2 \leq \left( \sum\_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right) \\]

#### A Cross Product Formula

\\[\mathbf{V}\_1 \times \mathbf{V}\_2 =  \begin{vmatrix}
\mathbf{i} & \mathbf{j} & \mathbf{k} \\\
\frac{\partial X}{\partial u} &  \frac{\partial Y}{\partial u} & 0 \\\
\frac{\partial X}{\partial v} &  \frac{\partial Y}{\partial v} & 0
\end{vmatrix} \\]

#### The probability of getting $$$k$$$ heads when flipping $$$n$$$ coins is

\\[P(E) = {n \choose k} p^k (1-p)^{ n-k} \\]

#### An Identity of Ramanujan

\\[ \frac{1}{\Bigl(\sqrt{\phi \sqrt{5}}-\phi\Bigr) e^{\frac25 \pi}} =
1+\frac{e^{-2\pi}} {1+\frac{e^{-4\pi}} {1+\frac{e^{-6\pi}}
{1+\frac{e^{-8\pi}} {1+\ldots} } } } \\]

#### Maxwell’s Equations

\\[  \begin{aligned}
\nabla \times \vec{\mathbf{B}} -\, \frac1c\, \frac{\partial\vec{\mathbf{E}}}{\partial t} & = \frac{4\pi}{c}\vec{\mathbf{j}} \\   \nabla \cdot \vec{\mathbf{E}} & = 4 \pi \rho \\
\nabla \times \vec{\mathbf{E}}\, +\, \frac1c\, \frac{\partial\vec{\mathbf{B}}}{\partial t} & = \vec{\mathbf{0}} \\
\nabla \cdot \vec{\mathbf{B}} & = 0 \end{aligned}
\\]

#### A Rogers-Ramanujan Identity

\\[  1 +  \frac{q^2}{(1-q)}+\frac{q^6}{(1-q)(1-q^2)}+\cdots =
\prod_{j=0}^{\infty}\frac{1}{(1-q^{5j+2})(1-q^{5j+3})},
\quad\quad \text{for $|q|<1$}. \\]');
INSERT INTO `blog_blog` VALUES (12,'ckeditor','2016-04-05 03:38:47',1,1,'<h2 style="font-style:italic">终于把富文本编辑器弄好了。</h2>

<p>不过，不兼容markdown好可惜。</p>

<p>&nbsp;</p>

<p><img alt="a" src="http://img.sfw.cn/admin/w/news/uploadfile/20120807162943433.jpg" style="height:262px; width:476px" /></p>
');
INSERT INTO `blog_blog` VALUES (13,'1','2016-04-05 10:34:18',1,1,'<p>1</p>
');
INSERT INTO `blog_blog` VALUES (14,'2','2016-04-05 10:34:25',1,1,'<p>2</p>
');
INSERT INTO `blog_blog` VALUES (15,'3','2016-04-05 10:34:33',1,1,'<p>3</p>
');
INSERT INTO `blog_blog` VALUES (16,'4','2016-04-05 10:34:40',1,1,'<p>4</p>
');
INSERT INTO `blog_blog` VALUES (17,'5','2016-04-05 10:34:50',1,1,'<p>5</p>
');
INSERT INTO `blog_blog` VALUES (18,'3','2016-03-08 11:45:53',1,1,'<p>3</p>
');
INSERT INTO `blog_blog` VALUES (19,'2015','2015-08-08 12:00:02',1,1,'<p>2015</p>
');
INSERT INTO `blog_blog` VALUES (20,'166','2016-05-06 10:45:08',1,1,'<p>166</p>
');
INSERT INTO `blog_blog` VALUES (21,'201507','2015-07-06 12:21:53',1,1,'<p>7</p>
');
INSERT INTO `blog_blog` VALUES (22,'cat','2016-04-07 02:01:52',1,3,'<p>cat</p>
');
INSERT INTO `blog_blog` VALUES (23,'你好世界','2016-04-07 07:24:23',1,1,'<p>你好世界</p>

<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />
tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />
quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />
consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />
cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />
proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
');
CREATE TABLE "blog_author" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "website" varchar(200) NOT NULL);
INSERT INTO `blog_author` VALUES (1,'DoubiMike','','');
CREATE TABLE "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), UNIQUE ("user_id", "permission_id"));
CREATE TABLE "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id"), "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), UNIQUE ("user_id", "group_id"));
INSERT INTO `auth_user_groups` VALUES (1,2,1);
INSERT INTO `auth_user_groups` VALUES (2,3,1);
CREATE TABLE "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "is_superuser" bool NOT NULL, "username" varchar(30) NOT NULL UNIQUE, "first_name" varchar(30) NOT NULL, "last_name" varchar(30) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "last_login" datetime NULL);
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$IKSK2PXBHU9a$Fz5Jf2ecG4OvsFmSrRqlX46SXDkvmuQU2KXdMqSrn8w=',1,'admin','','','',1,1,'2016-04-02 15:09:53.427886','2016-04-07 08:25:44.264503');
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$20000$DnkTtOy0PfPe$taYHIg2N0oJy7lpEp2uxtCx9UouKaBPzmtCBUUTgvW0=',0,'mike','','','',0,1,'2016-04-03 15:48:16','2016-04-04 03:30:48.236249');
INSERT INTO `auth_user` VALUES (3,'pbkdf2_sha256$20000$GK4UNMqkendq$9/Qxs/4SDuvRNONhSlSoTypf0aV4l9J+5gtJ7WBGo5I=',0,'mikea','','','',1,1,'2016-04-03 16:10:30','2016-04-04 03:13:15.454259');
INSERT INTO `auth_user` VALUES (4,'pbkdf2_sha256$20000$tvBOxvoz9Iul$wuN2fNlhu9FI00Iyd7/xy9nbC19DuRo9RLYIMpS8Eow=',0,'a','','','',0,1,'2016-04-03 17:58:10.816200',NULL);
INSERT INTO `auth_user` VALUES (5,'pbkdf2_sha256$20000$8QQnWK5NJhtN$eIy9V0gEtI28Fhee6SssW+3NZk0UjeUqRHI+P1Rq5jc=',0,'jing','','','',0,1,'2016-04-04 03:44:00.075518','2016-04-04 03:44:10.114074');
INSERT INTO `auth_user` VALUES (6,'pbkdf2_sha256$20000$xFq6r4fsSyIy$DzxG7d6wLMZ+5/mHw8twVCfO6tRgCAXtdUD8/fSFOR8=',0,'aaaaaaa','','','',0,1,'2016-04-04 11:16:40.430635',NULL);
CREATE TABLE "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id"), "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL, UNIQUE ("content_type_id", "codename"));
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry');
INSERT INTO `auth_permission` VALUES (2,1,'change_logentry','Can change log entry');
INSERT INTO `auth_permission` VALUES (3,1,'delete_logentry','Can delete log entry');
INSERT INTO `auth_permission` VALUES (4,2,'add_permission','Can add permission');
INSERT INTO `auth_permission` VALUES (5,2,'change_permission','Can change permission');
INSERT INTO `auth_permission` VALUES (6,2,'delete_permission','Can delete permission');
INSERT INTO `auth_permission` VALUES (7,3,'add_group','Can add group');
INSERT INTO `auth_permission` VALUES (8,3,'change_group','Can change group');
INSERT INTO `auth_permission` VALUES (9,3,'delete_group','Can delete group');
INSERT INTO `auth_permission` VALUES (10,4,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (11,4,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (12,4,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (13,5,'add_contenttype','Can add content type');
INSERT INTO `auth_permission` VALUES (14,5,'change_contenttype','Can change content type');
INSERT INTO `auth_permission` VALUES (15,5,'delete_contenttype','Can delete content type');
INSERT INTO `auth_permission` VALUES (16,6,'add_session','Can add session');
INSERT INTO `auth_permission` VALUES (17,6,'change_session','Can change session');
INSERT INTO `auth_permission` VALUES (18,6,'delete_session','Can delete session');
INSERT INTO `auth_permission` VALUES (19,7,'add_blog','Can add blog');
INSERT INTO `auth_permission` VALUES (20,7,'change_blog','Can change blog');
INSERT INTO `auth_permission` VALUES (21,7,'delete_blog','Can delete blog');
INSERT INTO `auth_permission` VALUES (22,8,'add_user','Can add user');
INSERT INTO `auth_permission` VALUES (23,8,'change_user','Can change user');
INSERT INTO `auth_permission` VALUES (24,8,'delete_user','Can delete user');
INSERT INTO `auth_permission` VALUES (25,9,'add_tag','Can add tag');
INSERT INTO `auth_permission` VALUES (26,9,'change_tag','Can change tag');
INSERT INTO `auth_permission` VALUES (27,9,'delete_tag','Can delete tag');
INSERT INTO `auth_permission` VALUES (28,10,'add_author','Can add author');
INSERT INTO `auth_permission` VALUES (29,10,'change_author','Can change author');
INSERT INTO `auth_permission` VALUES (30,10,'delete_author','Can delete author');
INSERT INTO `auth_permission` VALUES (31,11,'add_category','Can add category');
INSERT INTO `auth_permission` VALUES (32,11,'change_category','Can change category');
INSERT INTO `auth_permission` VALUES (33,11,'delete_category','Can delete category');
INSERT INTO `auth_permission` VALUES (34,12,'add_files','Can add files');
INSERT INTO `auth_permission` VALUES (35,12,'change_files','Can change files');
INSERT INTO `auth_permission` VALUES (36,12,'delete_files','Can delete files');
CREATE TABLE "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id"), "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id"), UNIQUE ("group_id", "permission_id"));
INSERT INTO `auth_group_permissions` VALUES (1,1,19);
INSERT INTO `auth_group_permissions` VALUES (2,1,20);
INSERT INTO `auth_group_permissions` VALUES (3,1,21);
CREATE TABLE "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(80) NOT NULL UNIQUE);
INSERT INTO `auth_group` VALUES (1,'client');
CREATE INDEX "django_session_de54fa62" ON "django_session" ("expire_date");
CREATE INDEX "django_admin_log_e8701ad4" ON "django_admin_log" ("user_id");
CREATE INDEX "django_admin_log_417f1b1c" ON "django_admin_log" ("content_type_id");
CREATE INDEX "blog_blog_tags_76f094bc" ON "blog_blog_tags" ("tag_id");
CREATE INDEX "blog_blog_tags_64458f32" ON "blog_blog_tags" ("blog_id");
CREATE INDEX "blog_blog_cf9a5a78" ON "blog_blog" ("blog_author_id");
CREATE INDEX "blog_blog_ccdfb85f" ON "blog_blog" ("blog_category_id");
CREATE INDEX "auth_user_user_permissions_e8701ad4" ON "auth_user_user_permissions" ("user_id");
CREATE INDEX "auth_user_user_permissions_8373b171" ON "auth_user_user_permissions" ("permission_id");
CREATE INDEX "auth_user_groups_e8701ad4" ON "auth_user_groups" ("user_id");
CREATE INDEX "auth_user_groups_0e939a4f" ON "auth_user_groups" ("group_id");
CREATE INDEX "auth_permission_417f1b1c" ON "auth_permission" ("content_type_id");
CREATE INDEX "auth_group_permissions_8373b171" ON "auth_group_permissions" ("permission_id");
CREATE INDEX "auth_group_permissions_0e939a4f" ON "auth_group_permissions" ("group_id");
COMMIT;
