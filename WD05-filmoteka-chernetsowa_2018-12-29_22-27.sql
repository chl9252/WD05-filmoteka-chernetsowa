#SKD101|WD05-filmoteka-chernetsowa|1|2018.12.29 22:27:07|4|4

DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `films` VALUES
(1, 'Облачный атлас', 'драма', 2012),
(2, 'Такси-2', 'комедия', 2000),
(4, 'Аватар', 'драма', 2010),
(19, 'Васаби', 'комедийный боевик', 2002);

