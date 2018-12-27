#SKD101|WD05-filmoteka-chernetsowa|1|2018.12.28 02:09:54|4|4

DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `films` VALUES
(1, 'Облачный атлас', 'драма', 2012),
(2, 'Такси-2', 'комедия', 2000),
(4, 'Аватар', 'драма', 2010),
(16, 'Вариант Омега', 'драма', 1978);

