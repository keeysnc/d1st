/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `wp_wpda_form_fields` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `fieldtype` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `is_required` int(1) NOT NULL,
  `fk_form_id` int(9) DEFAULT NULL,
  `position` int(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wp_wpda_form_fields_ibfk_1` (`fk_form_id`),
  CONSTRAINT `wp_wpda_form_fields_ibfk_1` FOREIGN KEY (`fk_form_id`) REFERENCES `wp_wpda_form_forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
