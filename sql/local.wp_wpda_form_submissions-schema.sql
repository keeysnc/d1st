/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `wp_wpda_form_submissions` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fk_submit_time_id` int(9) NOT NULL,
  `fk_field_id` int(9) NOT NULL,
  `field_value` longtext,
  PRIMARY KEY (`id`),
  KEY `wp_wpda_form_submissions_ibfk_1` (`fk_submit_time_id`),
  KEY `wp_wpda_form_submissions_ibfk_2` (`fk_field_id`),
  CONSTRAINT `wp_wpda_form_submissions_ibfk_1` FOREIGN KEY (`fk_submit_time_id`) REFERENCES `wp_wpda_form_submit_time` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_wpda_form_submissions_ibfk_2` FOREIGN KEY (`fk_field_id`) REFERENCES `wp_wpda_form_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
