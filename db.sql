/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - guoxuewenhuawangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`guoxuewenhuawangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `guoxuewenhuawangzhan`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/guoxuewenhuawangzhan/upload/1617792685141.jpg'),(2,'轮播图2','http://localhost:8080/guoxuewenhuawangzhan/upload/1617792698376.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-06 20:48:36'),(2,'sex_types','性别',2,'女',NULL,'2021-04-06 20:48:36'),(3,'single_seach_types','单页数据类型',1,'美的历程介绍',NULL,'2021-04-07 11:42:51');

/*Table structure for table `huihua` */

DROP TABLE IF EXISTS `huihua`;

CREATE TABLE `huihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huihua_name` varchar(200) DEFAULT NULL COMMENT '绘画名   ',
  `huihua_photo` varchar(200) DEFAULT NULL COMMENT '绘画图片',
  `huihua_content` text COMMENT '绘画内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '绘画时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='绘画';

/*Data for the table `huihua` */

insert  into `huihua`(`id`,`huihua_name`,`huihua_photo`,`huihua_content`,`insert_time`,`create_time`) values (1,'绘画1','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617713610411.jpg','一起，人的觉醒是在对旧传统旧信仰旧价值旧风习的破坏、对抗和怀疑中取得的。“何不饮美酒，被服纨与素”，与儒家教义显然不相容，是对抗着的。曹氏父子破坏了东汉重节操伦常的价值标准，正始名士进一步否定了传统观念和礼俗。但“非汤、武而薄周、孔”，嵇康终于被杀头；阮籍也差一点，维护“名教”的何曾就劝司马氏杀阮，理由是“纵情背礼败俗”。这有刘伶《酒德颂》所说，当时是“贵介公子，缙绅处士......奋袂攘襟，努目切齿，陈说礼法，是非蜂起”，可见思想对立和争斗之改变。从哲学到文艺，从观念到风习，看来是如此狂诞不经的新东西，毕竟战胜和取代了一本正经而更加虚伪的旧事物。才性胜过节操，薄葬取替厚葬，王弼超越汉儒，“竹林七贤”成了六朝的理想人物，甚至在墓室的砖画上，也取代或挤进了两汉的神仙迷信、忠臣义士的行列。非圣无法、大遭物议并被杀头的人物竟然嵌进了地下庙堂的画壁，而这些人物既无显赫的功勋，又不具无边的法力，更无可称道的节操，却以其个体人格本身，居然可以成为人们的理想和榜样，这不能不是这种新世界观人生观的胜利表现。人们并不一定要学那种种放浪形骸、饮酒享乐，而是被那种内在的才情、性貌、品格、风神吸引着，感召着。人在这里不再如两汉那样以外在的功业、节操、学问，而这主要以其内在的思辨风神和精神状态，受到了尊敬和顶礼。是人和人格而不是外在事物，日益成为这一历史时期哲学和文艺的中心。当然，这里讲的“人”仍是有具体社会性的，他们即是门阀士族。由对人生的感喟咏叹到对人物的讲究品评，由人的觉醒意识的出现到人的存在风貌的追求，其间正以门阀士族的政治制度和取才标准为中介。后者在造成这一将着眼点转向人的内在精神的社会氛围和心理状况上，有直接的关系。自曹丕确定九品中正制度以来，对人的评议正式成为社会、政治、文化谈论的中心。又由于它不再停留在东汉时代的道德、操守、儒学、气节的品评，于是人的才情、气质、格调、风貌、性分、能力便成了重点所在。总之，不是人的外在的行为节操，而是人的内在的精神性(亦即被看做是潜在的无限可能性)，成了最高的标准和原则。完全适应着门阀士族们的贵族气派，讲求脱俗的风度神貌成了一代美的理想。不是一般的、世俗的、表面的、外在的，而是表达出某种内在的、本质的、特殊的、超脱的风貌资容，才成为人们所欣赏、所评价、所议论、所鼓吹的对象。从《人物志》到《世说新语》，可以清晰地看出这一特点愈来愈明显。《世说新语》津津有味地论述着那么多的神情笑貌、传闻逸事，其中并不都是功臣名将们的赫赫战功或忠臣义士的烈烈操守，相反，更多的倒是手执拂尘，口吐玄言，扪虱而谈，辩才无碍。重点展示的是内在的智慧，高超的精神，脱俗的言行，漂亮的风貌；而所谓漂亮，就是以美如自然景物的外观，体现出人的内在的智慧和品格。例如：时人目王右军，飘如游云，矫若惊龙。嵇叔夜之为人也，宕宕若孤松之独立；其醉也，傀俄若玉山之将崩。<img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617784057108.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617784057108.jpg\">\r\n“朗朗如日月之入怀”，“双眸闪闪若岩下电”，“濯濯如春月柳”，“谡谡如劲松下风”，“若登山临下，幽然深远”，“岩岩清峙，壁立千仞”……这种种夸张地对人物风貌的形容品评，要求以漂亮的外在风貌表达出高超的内在人格，正是当时这个阶级的审美理想和趣味。本来，\r\n','2021-04-06 20:53:48','2021-04-06 20:53:48'),(2,'绘画2','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617792442699.jpg','绘画2的内容的\r\n','2021-04-07 18:47:32','2021-04-07 18:47:32');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字   ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (2,'美的历程',1,'一起，人的觉醒是在对旧传统旧信仰旧价值旧风习的破坏、对抗和怀疑中取得的。“何不饮美酒，被服纨与素”，与儒家教义显然不相容，是对抗着的。曹氏父子破坏了东汉重节操伦常的价值标准，正始名士进一步否定了传统观念和礼俗。但“非汤、武而薄周、孔”，嵇康终于被杀头；阮籍也差一点，维护“名教”的何曾就劝司马氏杀阮，理由是“纵情背礼败俗”。这有刘伶《酒德颂》所说，当时是“贵介公子，缙绅处士......奋袂攘襟，努目切齿，陈说礼法，是非蜂起”，可见思想对立和争斗之改变。从哲学到文艺，从观念到风习，看来是如此狂诞不经的新东西，毕竟战胜和取代了一本正经而更加虚伪的旧事物。才性胜过节操，薄葬取替厚葬，王弼超越汉儒，“竹林七贤”成了六朝的理想人物，甚至在墓室的砖画上，也取代或挤进了两汉的神仙迷信、忠臣义士的行列。非圣无法、大遭物议并被杀头的人物竟然嵌进了地下庙堂的画壁，而这些人物既无显赫的功勋，又不具无边的法力，更无可称道的节操，却以其个体人格本身，居然可以成为人们的理想和榜样，这不能不是这种新世界观人生观的胜利表现。人们并不一定要学那种种放浪形骸、饮酒享乐，而是被那种内在的才情、性貌、品格、风神吸引着，感召着。人在这里不再如两汉那样以外在的功业、节操、学问，而这主要以其内在的思辨风神和精神状态，受到了尊敬和顶礼。是人和人格而不是外在事物，日益成为这一历史时期哲学和文艺的中心。当然，这里讲的“人”仍是有具体社会性的，他们即是门阀士族。由对人生的感喟咏叹到对人物的讲究品评，由人的觉醒意识的出现到人的存在风貌的追求，其间正以门阀士族的政治制度和取才标准为中介。后者在造成这一将着眼点转向人的内在精神的社会氛围和心理状况上，有直接的关系。自曹丕确定九品中正制度以来，对人的评议正式成为社会、政治、文化谈论的中心。又由于它不再停留在东汉时代的道德、操守、儒学、气节的品评，于是人的才情、气质、格调、风貌、性分、能力便成了重点所在。总之，不是人的外在的行为节操，而是人的内在的精神性(亦即被看做是潜在的无限可能性)，成了最高的标准和原则。完全适应着门阀士族们的贵族气派，讲求脱俗的风度神貌成了一代美的理想。不是一般的、世俗的、表面的、外在的，而是表达出某种内在的、本质的、特殊的、超脱的风貌资容，才成为人们所欣赏、所评价、所议论、所鼓吹的对象。从《人物志》到《世说新语》，可以清晰地看出这一特点愈来愈明显。《世说新语》津津有味地论述着那么多的神情笑貌、传闻逸事，其中并不都是功臣名将们的赫赫战功或忠臣义士的烈烈操守，相反，更多的倒是手执拂尘，口吐玄言，扪虱而谈，辩才无碍。重点展示的是内在的智慧，高超的精神，脱俗的言行，漂亮的风貌；而所谓漂亮，就是以美如自然景物的外观，体现出人的内在的智慧和品格。例如：时人目王右军，飘如游云，矫若惊龙。嵇叔夜之为人也，宕宕若孤松之独立；其醉也，傀俄若玉山之将崩。\r\n<img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617783083808.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617783083808.jpg\">\r\n“朗朗如日月之入怀”，“双眸闪闪若岩下电”，“濯濯如春月柳”，“谡谡如劲松下风”，“若登山临下，幽然深远”，\r\n<img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617783095618.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617783095618.jpg\">\r\n“岩岩清峙，壁立千仞”……这种种夸张地对人物风貌的形容品评，要求以漂亮的外在风貌表达出高超的内在人格，正是当时这个阶级的审美理想和趣味。本来，\r\n','2021-04-07 15:36:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','hkv65c46oai9x4njjvjnwn0a2vjsz2ez','2021-04-06 20:46:30','2021-04-07 19:45:58'),(2,1,'a1','yonghu','用户','jhejur5r4x2mven4o7fv1ykv4gsygud7','2021-04-06 21:38:38','2021-04-07 18:45:07'),(3,2,'a2','yonghu','用户','ur3vc0b277cfs14ggnn4it04rdc2rzja','2021-04-07 18:52:52','2021-04-07 19:57:35'),(4,3,'a3','yonghu','用户','22cu35ysoixdyzvdcem130ru5fjni9xa','2021-04-07 18:56:24','2021-04-07 19:56:25');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `wenxue` */

DROP TABLE IF EXISTS `wenxue`;

CREATE TABLE `wenxue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wenxue_name` varchar(200) DEFAULT NULL COMMENT '文学名   ',
  `wenxue_photo` varchar(200) DEFAULT NULL COMMENT '文学图片',
  `wenxue_content` text COMMENT '文学内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '绘画时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文学';

/*Data for the table `wenxue` */

insert  into `wenxue`(`id`,`wenxue_name`,`wenxue_photo`,`wenxue_content`,`insert_time`,`create_time`) values (1,'俗话红楼：黛玉要嫁宝玉的功利理由','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617716127558.jpg','许多人都宁可相信，《红楼梦》中黛玉宝玉之爱是真实的。笔者也相信，但从现代功利视角，黛玉也的确有必嫁宝玉的理由。\r\n黛玉的娘家——姑苏林家“已经没什么人”，又爹妈早死，这么一个孤女，在那种社会几乎处于绝境，只好依赖亲戚。而女子早晚要嫁走，出嫁之后能得到什么待遇还是未知数，那么嫁在亲戚家就是一个很好的功利选择——亲戚到底是亲戚，通常能留点底线的余地。\r\n顺便，那岁月表兄妹是可以结婚的（主要指姨表亲）。\r\n亲戚结亲有个好处是“知根知底”。到底一起玩了几年，宝玉是什么心性，黛玉是瞭解的——怠懒疏狂任性的纨绔派头自然有，但总的来说根底里并不是坏人，文化素质过关，对女孩子也尚可。再加上家世，对于一个女孩子，已经具备了足够的吸引力，哪怕是林黛玉这样好洁清高之女。\r\n所以芳心暗许也算理所应当。\r\n可结局方面，黛玉身体状况不大好，受影响多愁善感，或思想容易走极端，后来嫁不成，很多事一起涌上心头——所谓理想爱情各种破灭，或也包括对未来的担忧，造成病势加重，也就把小命送掉了。\r\n话说如果没有宝玉，黛玉拖它几年之后，会不会嫁给贾家或薛家其它什么人？存在这个可能。当然也得差不多，薛蟠贾珍贾琏那样的，恐怕黛玉宁死也不会同意。\r\n\r\n','2021-04-06 21:36:40','2021-04-06 21:36:40'),(2,' “红色经典”不是“经典”','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617716234282.jpg','对于“经典作品”的定义，各人有各人的见解，那么在特定时代背景下完全迎合政治意识形态的“红色经典”是经过历史选择出来的“经久不衰”、“最有价值”的作品吗？属于“经典”吗？\r\n“红色经典”——从广义上理解，是指十七年时期的音乐、电影和文学等艺术领域里带有鲜明政治意识形态并产生一定社会影响的作品；从狭义上理解，是指以“三红一创，青山保林”这八部长篇<a href=\"http://www.zgycwx.com/forum-38-1.html\" target=\"_blank\" class=\"relatedlink\" style=\"overflow-wrap: break-word; color: rgb(51, 102, 153); border-bottom: 1px solid blue; font-family: 微软雅黑, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">小说为主要代表作的“革命历史小说”，这也是本文所针对的红色经典作品。为什么会出现这类作品？因为建国后的十七年，我国正处于新旧两个社会的转型期，文学肩则负着政治和历史的双重使命：一方面，新中国刚刚建立，需要文学作品来回顾光辉伟大的革命历程，为新的社会提供存在的合法性依据；另一方面，中华民族从鸦片战争开始已历经百年屈辱，此时国家从战争转入建设，需要以文学艺术的手段来鼓舞人心，感召人们热情地投入到社会主义建设中。所以鲜艳、热烈、积极的“红色”很好地代表了这类完全符合主流意识形态的作品，突出了那个年代写作的特殊性。\r\n“红色经典”很“红色”，可是否“经典”呢？据当时有关资料的不完全统计，《铁道游击队》发行量达400多万册，《林海雪原》累计印数已在156万册以上。特别是《红岩》，《红岩》一出，全国为之轰动，在不到两年的时间里，作品发行了四百多万册，到80年代为止，先后印刷二十多次，发行量达八百多万册，创下了当代小说的发行最高纪录。从这些数据以及效果来看，我们绝对可以说这些作品影响了一个时代，影响了一个时代的人，但我不认为这些作品是“经典”，这些作品影响巨大，尤其是对生活于20世纪50－60年代的人，但这种影响不是潜移默化的，而是刻意安排之下形成的。首先，在1949年召开的第一次文代会上，来自解放区的文艺界领导人周扬明确宣布了新中国的文学以延安文学方向即工农兵方向作为唯一正确的方向。这一政策扼杀了当时中国文学天地的“百花齐放”，比如受到较多读者喜爱的鸳鸯蝴蝶派通俗小说就被严厉禁止。文学作品种类单一再加上当时文化产品选择少，那么带有英雄传奇色彩的红色经典，如《林海雪原》自然就受到广泛欢迎。另一方面，当时读者的思想已经被当时的革命意识形态所浸染，文学阅读趣味和选择已被当时的革命文学批评话语所左右，红色经典自然成为首选的“精神食粮”。\r\n由此可见，人们对红色经典的阅读不是自主选择的，而且文化政策对文学作品的限制一定程度上阻碍了人的全面发展。如当时作品中的“革命＋爱情”模式，将人类向往的爱情用纯洁的革命友谊代替，将恋人关系写成战友关系，有人曾这样回忆那一代青年阅读《青春之歌》和《苦菜花》这类小说时的奇异现象：“涉及性爱的张页犹如扑克牌中的王牌，都被翻得格外旧。”我们都知道“红色经典”中对爱情的描写少到可以忽略不计，而那个时代的青年要想从中获得类似的情感体验，完全是缘木求鱼之举。从某种意义上说，这些作品以革命的名义扼杀了文学的人性特质。这也是当时被官方禁读的鸳鸯蝴蝶派小说屡禁不止的原因以及红色经典难以感动现代人的根本原因之一。所以，这样的文学作品怎么可以跻身于“经典”的行列呢?\r\n经典是个人独特的世界观和不可重复的创造，富有原创性和持久的震撼力，《诗经》《离骚》《史记》《红楼梦》等作品便是如此。其中《诗经》的每个作者虽然都是没留下姓名的普通人，但他们“饥者歌其食，劳者歌其事”的质朴而真实的个人体验表达，让“昔我来矣，杨柳依依；今我来思，雨雪霏霏”这样的诗句千载之后仍能打动人心。而“红色经典”往往是集体意志的产物，《红岩》的创作过程就是极典型的例子——《红岩》的写作缘起与作者的创作冲动无关，完全是在共青团中央和中国青年出版社的建议下开始的，而且还有各界人士为写作“献计献策”,其中还包括党的高层领导。所以，《红岩》虽然署的是两位作者的名字,但实际上完全是集体写作的产物。但其实从第一次文代会开始，作家就不再是自由写作的职业，而是由作家协会进行管理的文学体制内成员，他们的文学创作从此与政党政治密切相关。\r\n于此背景下，作家的写作必须“小心翼翼”，否则便会有如洪水猛兽的批判袭来。所以红色经典虽故事各异，但写作叙事模式趋同——控诉黑暗旧秩序（诉苦）→被黑暗逼向绝境→走向革命；英雄主人公性格趋同——有坚定的理想信念、聪明能干、百折不挠、勤劳勇敢等；小说结局趋同——革命成功、战争胜利、继续前进，少部分是英雄光荣牺牲，但英雄的牺牲是悲壮的，相比于悲伤，我们更多感受到的是一种气贯长虹的精神激励。因此，将红色经典作品放在一起阅读时，我们会发现作者本身具有的独特性、作品应有的独特性几乎不复存在，这又如何称之为经典呢？\r\n最后，谈谈红色经典的艺术性。以《红旗谱》《林海雪原》为例，小说借鉴了我国古代传统小说的叙事模式——绿林传奇、英雄叙事、家族恩怨、报仇血恨、才子佳人、淑女英雄，这赋予了小说传奇浪漫色彩，极大提高了小说的艺术性，激发了读者的阅读兴趣，尤其在当时文学作品要么是革命历史题材，要么是农村题材的情况下。但这种艺术手法是借鉴过去的，不是原创的。若将这些所谓的“老模式”去除，小说还剩下什么？恐怕只是无聊空洞、高度政治化的“革命的历史教科书”和“农村改革的工作报告”。由此可见，是旧文学传统赋予了、挽救了红色经典的文学性，但可笑的是当作品遭受批判时，人们同样也归罪于小说中“才子佳人”这类老套路，真可谓“成也萧何，败也萧何”。\r\n红色经典借鉴传统经典小说叙事元素，有了艺术性，但又因迎合政治，所以缺陷明显，以《红旗谱》为例。首先，在小说前部分，朱老忠是侠肝义胆、嫉恶如仇、有勇有谋的完美的农民英雄形象。但是，由于作者要突出“中国农民只有党的领导下，才能获得自身的解放”的主题，所以朱老忠在遇见党、认识党、加入党以后，虽然离成功复仇的目标越来越近，但其性格也被明显矮化，一切以党为主，变成党活动的“支持者”甚至是“旁观者”的存在，人物地位明显骤降，造成主人公朱老忠人物形象的前后分裂。除此之外，小说在人物塑造上还存在人物形象单调化，人物性格符号化的缺陷。反观小说经典《红楼梦》，其中的人物堪称“没有一句话不合身份”且人物性格丰满全面——比如贾宝玉既能心疼那些姐姐妹妹，让晴雯撕自己的扇子取乐，也能因为丫鬟没有及时给自己开门就上去一记窝心脚、茶没泡好直接让茜雪走人。\r\n在叙事结构上，经典小说《水浒传》从四方好汉各自的故事，到最后各路英雄齐聚梁山泊，情节线索汇合归一，各章节独立又串联，形成串珠式的结构，使小说结构清晰，情节紧凑。《红旗谱》也像《水浒传》一样有许多独立的故事，如“朱老巩大闹柳树林”、“朱老忠归来”、“脯红鸟事件”、“反割头税运动”、“二师学潮”，每一个单独的故事都写得有声有色，但故事与故事之间的衔接却不如《水浒传》自然。但与《水浒传》相比，《红旗谱》在结构上最主要的问题是叙事重心转移突兀，情节没有糅合成整体，叙事结构存在错位、割裂问题。首先是人物重心的突然转移，全书分为三卷，第一卷主要是对朱老忠性格的塑造和表现他作为农民的“成长”历程，后两卷本应继续呈现，保持故事的延续性，但作者笔锋一转，将第三代人物直接推到了舞台的中心，主人公成了江涛、严萍、严知孝和第二师范里的学生们，而朱老忠这个前主人公像是完成任务似的被“走开”，作用微乎其微。比如第二卷描写的“反割头税”运动是由江涛鼓动农民们兴起的，朱老忠只是第一个响应了他的号召。又比如在街头摆开杀猪锅操刀杀猪的是大贵，散发传单、在集市上讲话的是江涛。第二是叙事场景的突然转移，小说第三卷将叙事场景直接从农村换到了城市和学校，这便使农民无法充分发挥自己的作用，从书写农民的成长变成书写知识分子的成长，且农民的成长叙事中断，造成整个故事的叙事结构的断裂。读者在阅读作品是也可以明显感觉到作品前后部分连接和过渡得十分生硬。\r\n通过阅读这些作品，我们可以看到人物塑造单一与叙事结构断裂的问题普遍存在于红色经典之中，除此之外，情节模式化、语言粗糙、结局缺乏悬念，也是红色经典不可忽视的缺陷。\r\n综上可知，“红色经典”产生的影响有人为作用的刻意性、作品书写缺乏独创性，像批量生产的模式化产品、艺术性上存在明显的不足，这样的作品如何能够与《红楼梦》一同享有“经典”的地位。我们承认红色经典凝聚着革命时期的特殊感情,包含着那段激情燃烧的岁月的珍贵历史记忆，是民族宝贵的精神财富，我们应该敬畏这种情感、尊重这种记忆、保护这种财富，但不可过分拔高，不可因民族情感影响我们对经典的判断，滥用“经典”一词。\r\n','2021-04-06 21:37:27','2021-04-06 21:37:27'),(3,'少时诵诗书','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617784111941.jpg','一起，人的觉醒是在对萨达撒多萨达as\r\n','2021-04-07 13:39:36','2021-04-07 13:39:36'),(4,'1111','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617784102518.jpg','  张三撒大苏打思维方法烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦反反复复烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦反反复复烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦反反复复烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦反反复复烦烦烦烦烦烦烦烦烦烦烦烦gh 回车1回车2  回车3   加两个空格\r\n','2021-04-07 15:47:49','2021-04-07 15:47:49'),(5,'《假如给我三天光明》读后感','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617792493270.jpg','今天，我在作文辅导班学了一篇文章，名字叫《假如我失去三天光明》。\r\n《假如我失去三天光明》一文，讲述了\"我\"会用一个暂时的盲人的手去接触这个世界，用盲人的耳朵去谛听这个世界，用整个心灵去接受这个世界！\"我\"要感受盲人的生活。\r\n盲人生活第一天，\"我\"要感受一下大自然的盎然生机。这句话使我感受到了：一个失去视觉的人，只能用耳朵去聆听世界的所有声音，用鼻子去闻世界的所有气味，用嘴去咀嚼世界的所有味道，用手去触摸世界的所有东西，看不见所有色彩、所有美景、所有你至亲至爱的人们。其实盲人比我们强多了！因为正因为他们失去视觉，才会用心去感受世界，感受生活，感受万物。\r\n盲人生活第二天，\"我\"将以一个盲人的身份去盲童学校上学，亲自和那些在光明上背叛了无期徒刑的孩子们促膝谈心。这句话使我感受到了：以前，每当我在街道上看到盲人总会在心里嘲笑一番：哈哈！这景色可真漂亮啊！这么让人养眼，还让人感到神清气爽、心旷神怡啊！要是有人失去了光明，那可怎么活啊？还不如一墙撞死算了！可是自从我读了这篇文章，对残疾人的看法有了很大的改变。残疾人也是个有自尊心的人啊！我凭什么去侮辱他们？嘲笑他们？难道残疾是他们的错吗？他们与正常人拥有着同样对美好生活的向往啊！\r\n<img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617792519614.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617792519614.jpg\">\r\n\r\n盲人生活第三天，\"我\"将走向社会，体验社会的温暖。这句话使我知道了：以后遇到残疾人，我非但不嘲笑他们，而且还要鼓励他们，尽我所能的去帮助残疾人。在路上，他们摔倒时，我过来搀扶，在商场，他们找不到东西时，我帮着找。所有盲人的毕生梦想都是恢复视觉，其他别无所求。可正常人往往都是很贪心，最终导致自身受到伤害。\r\n读完之后，我掩卷沉思：平时自己那些不保护眼睛的事情，像看电影一样一幕幕展现在我的眼前：写作业时，我一写就一两个小时，且从不休息，看书时，我躺在床上，把书放在眼前，一看就是两三小时；看电视时，我离得很近，目不转睛地盯着电视，一盯就是几个小时......\r\n小朋友们，要爱护自己的眼睛，用我们的眼睛去观察这美好的世界，去感受光明，感受爱。\r\n\r\n','2021-04-07 18:48:24','2021-04-07 18:48:24');

/*Table structure for table `wudao` */

DROP TABLE IF EXISTS `wudao`;

CREATE TABLE `wudao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wudao_name` varchar(200) DEFAULT NULL COMMENT '舞蹈名   ',
  `wudao_photo` varchar(200) DEFAULT NULL COMMENT '舞蹈图片',
  `wudao_video` varchar(200) DEFAULT NULL COMMENT '舞蹈视频',
  `wudao_content` text COMMENT '舞蹈详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='舞蹈';

/*Data for the table `wudao` */

insert  into `wudao`(`id`,`wudao_name`,`wudao_photo`,`wudao_video`,`wudao_content`,`create_time`) values (1,'舞蹈1','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617713902145.jpg','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617713861601.mp4','舞蹈详情1<img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617713880897.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617713880897.jpg\"><img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617713884486.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617713884486.jpg\"><img src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617713889670.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/guoxuewenhuawangzhan/upload/1617713889670.jpg\">\r\n','2021-04-06 20:58:26'),(2,'舞蹈视频1','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617792575024.jpg','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617792565041.mp4','舞蹈详情的\r\n','2021-04-07 18:49:57');

/*Table structure for table `wudao_collection` */

DROP TABLE IF EXISTS `wudao_collection`;

CREATE TABLE `wudao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wudao_id` int(11) DEFAULT NULL COMMENT '舞蹈id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='舞蹈收藏';

/*Data for the table `wudao_collection` */

insert  into `wudao_collection`(`id`,`wudao_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,2,2,'2021-04-07 18:53:28','2021-04-07 18:53:28');

/*Table structure for table `yinyue` */

DROP TABLE IF EXISTS `yinyue`;

CREATE TABLE `yinyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinyue_name` varchar(200) DEFAULT NULL COMMENT '音乐名   ',
  `yinyue_photo` varchar(200) DEFAULT NULL COMMENT '音乐封面',
  `yinyue_music` varchar(200) DEFAULT NULL COMMENT '音乐文件',
  `yinyue_content` text COMMENT '音乐详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间   ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='音乐';

/*Data for the table `yinyue` */

insert  into `yinyue`(`id`,`yinyue_name`,`yinyue_photo`,`yinyue_music`,`yinyue_content`,`create_time`) values (1,'出去就别回来','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617714629510.jpg','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617714684715.mp3','出去就别回来 啊啊啊 啊 \r\n','2021-04-06 21:11:50'),(2,'庐州月','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617715770758.jpg','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617715762680.mp3','音乐2的详情\r\n','2021-04-06 21:29:42'),(3,'如果当时','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617792619152.jpg','http://localhost:8080/guoxuewenhuawangzhan/file/download?fileName=1617792626429.mp3','如果当时的详情\r\n','2021-04-07 18:50:38');

/*Table structure for table `yinyue_collection` */

DROP TABLE IF EXISTS `yinyue_collection`;

CREATE TABLE `yinyue_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yinyue_id` int(11) DEFAULT NULL COMMENT '音乐id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='音乐收藏';

/*Data for the table `yinyue_collection` */

insert  into `yinyue_collection`(`id`,`yinyue_id`,`yonghu_id`,`insert_time`,`create_time`) values (7,1,1,'2021-04-07 10:50:35','2021-04-07 10:50:35'),(8,3,2,'2021-04-07 18:53:08','2021-04-07 18:53:08'),(9,1,2,'2021-04-07 18:53:15','2021-04-07 18:53:15');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '用户性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号   ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`create_time`) values (1,'a1','123456','张1',1,'410224199610232011','17703786911','2021-04-06 21:38:13'),(2,'a2','123456','张2',2,'410224199610232022','17703786933','2021-04-07 18:46:27'),(3,'a3','123456','张三',2,'410224199610232033','17703786931',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
