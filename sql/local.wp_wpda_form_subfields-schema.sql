/*!40101 SET NAMES binary*/;
/*!40014 SET FOREIGN_KEY_CHECKS=0*/;

CREATE TABLE `wp_wpda_form_subfields` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `fk_form_id` int(9) NOT NULL,
  `fk_field_id` int(9) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `selected_value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_form_id` (`fk_form_id`),
  KEY `fk_field_id` (`fk_field_id`),
  CONSTRAINT `wp_wpda_form_subfields_ibfk_1` FOREIGN KEY (`fk_form_id`) REFERENCES `wp_wpda_form_forms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wp_wpda_form_subfields_ibfk_2` FOREIGN KEY (`fk_field_id`) REFERENCES `wp_wpda_form_fields` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
