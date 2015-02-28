CREATE TABLE IF NOT EXISTS `user` (
  `id` SMALLINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `flag` TINYINT(1) NOT NULL DEFAULT '1',
  `name` VARCHAR(20) NOT NULL DEFAULT '',
  `password` VARCHAR(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `post` (
  `id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `views` INT(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` VARCHAR(100) NOT NULL DEFAULT '',
  `markdown` MEDIUMTEXT NOT NULL,
  `html` MEDIUMTEXT NOT NULL,
  `add_time` datetime NOT NULL,
  `edit_time` datetime NULL,
  `post_status` INT(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS `category`(
  `post_id` MEDIUMINT(8) UNSIGNED NOT NULL,
  `category_name` VARCHAR(80) NOT NULL DEFAULT '1',
  KEY `category_name` (`category_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `tag`(
  `post_id` MEDIUMINT(8) UNSIGNED NOT NULL,
  `tag_name` VARCHAR(80) NOT NULL DEFAULT '1',
  KEY `tag_name` (`tag_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
