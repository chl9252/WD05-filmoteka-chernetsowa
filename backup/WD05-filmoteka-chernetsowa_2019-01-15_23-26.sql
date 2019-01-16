#SKD101|WD05-filmoteka-chernetsowa|2|2019.01.15 23:26:52|10|7|3

DROP TABLE IF EXISTS `films`;
CREATE TABLE `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `year` text NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `films` VALUES
(1, 'Такси-2', 'комедия', '2000', '\"\"\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!\"\"\"', '32145690.jpg'),
(2, 'Такси-255555555555', 'комедия', '2000', '\"\"\"\"\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!\"\"\"\"\"', '82594909.jpg'),
(3, 'Аватар', 'драма', '2010', '\"\"\"\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!\"\"\"\"', '62943115.jpg'),
(4, 'Облачный атлас', 'драма', '2010', '\"\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!\"\"', '82831115.jpg'),
(5, 'Покровские ворота', 'комедия', '1982', '\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"', '71907958.jpg'),
(6, 'Облачный атлас5555555555555', 'драма', '2000', '\"\"', '44216918.jpg'),
(7, 'Такси-3', 'комедия', '2003', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quae id reprehenderit, cumque laboriosam quisquam aut sit quos voluptas provident ex omnis, repudiandae quasi delectus dolores. Voluptatibus eum temporibus, nesciunt porro!', '46988220.jpg');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` char(100) NOT NULL,
  `password` char(100) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 /*!40101 DEFAULT CHARSET=utf8 */;

INSERT INTO `users` VALUES
(1, 'admin', '12345', 1),
(2, 'user1', '11111', 0),
(3, 'user2', '22222', 0);

