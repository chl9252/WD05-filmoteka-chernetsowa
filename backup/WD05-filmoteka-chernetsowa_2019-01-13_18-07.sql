#SKD101|WD05-filmoteka-chernetsowa|1|2019.01.13 18:07:35|7|7

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

