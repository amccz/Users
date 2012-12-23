-- Adminer 3.5.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `email`) VALUES
(5,	'anna@k.cz'),
(6,	'barca@bramburka.cz'),
(1,	'franta@vokurka.cz'),
(4,	'gerda@zapasnikova.cz'),
(8,	'hajdy@zhor.cz'),
(7,	'hilda@zelena.cz'),
(9,	'johanka@vplutu.com'),
(2,	'lojza@lojza.cz'),
(3,	'mala@tonicka.cz');

DROP TABLE IF EXISTS `users_`;
CREATE TABLE `users_` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(60) NOT NULL,
  `name` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

INSERT INTO `users_` (`id`, `email`, `password`, `name`, `role`) VALUES
(7,	'cz.lang@gmail.com',	'f04003366fb2f36149d392b547a7440d778046d7',	'Peter Láng',	'admin'),
(8,	'langos@volny.cz',	'63bd403741ea91cf49d392b547a7440d778046d7',	'Lojza Opršálek',	'guest'),
(9,	'franta@vokurka.cz',	'f63d757c919a7707aa6c0af5946fd24a28015779',	'Franta Vokurka',	'guest'),
(10,	'lojza@lojza.cz',	'ebad7341ea91cf83593b0638817c16a563bd4037',	'Lojza Přechodník',	'guest'),
(11,	'mala@tonicka.cz',	'e1822661e05f4595d4ccaf4c8cd5b7f997a5e82c',	'Tonička Malá',	'guest'),
(12,	'gerda@zapasnikova.cz',	'51fcf163696a95f0674f123509a469092fc2d34e',	'Gerda Zápasníková',	'guest'),
(14,	'anna@k.cz',	'1ec2131552f3bd668591b0b99407b23355ba1ebc',	'Anna Kareninová',	'guest'),
(15,	'barca@bramburka.cz',	'f04003366fb2f36149d392b547a7440d778046d7',	'Barbora Brambora',	'guest'),
(16,	'hilda@zelena.cz',	'e08c606ff2fbc1a1991febf00b0fa8721d7d09ca',	'Hilda Zelená',	'guest'),
(17,	'hajdy@zhor.cz',	'626a453385ad62ad723655f706a2993eeb5c2922',	'Hajdy Zhor',	'guest'),
(18,	'johanka@vplutu.com',	'2b49d3bf378036984695dfd2a96bee427627e87d',	'Johanka Tazpluta',	'guest');

-- 2012-12-16 14:40:56