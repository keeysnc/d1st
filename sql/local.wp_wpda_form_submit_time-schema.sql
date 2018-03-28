/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `wp_wpda_form_submit_time` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fk_form_id` int(9) NOT NULL,
  `submit_time` decimal(16,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wp_wpda_form_submit_time_ibfk_1` (`fk_form_id`),
  CONSTRAINT `wp_wpda_form_submit_time_ibfk_1` FOREIGN KEY (`fk_form_id`) REFERENCES `wp_wpda_form_forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
