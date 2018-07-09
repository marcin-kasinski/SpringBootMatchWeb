DROP TABLE IF EXISTS `flag`;
DROP TABLE IF EXISTS `match_type`;
DROP TABLE IF EXISTS `type`;
DROP TABLE IF EXISTS `user_role`;
DROP TABLE IF EXISTS `user`;
DROP TABLE IF EXISTS `role`;

DROP TABLE IF EXISTS `match`;
DROP TABLE IF EXISTS `game`;

CREATE TABLE `flag` (
  `flag_id` int(11) NOT NULL AUTO_INCREMENT,
  `team` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`flag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `flag` ( `team`, `url`) VALUES ('Rosja', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Russia.svg/188px-Flag_of_Russia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Arabia Saudyjska', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/188px-Flag_of_Saudi_Arabia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Egipt', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/188px-Flag_of_Egypt.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Urugwaj', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Uruguay.svg/188px-Flag_of_Uruguay.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Maroko', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2c/Flag_of_Morocco.svg/188px-Flag_of_Morocco.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Iran', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Flag_of_Iran.svg/188px-Flag_of_Iran.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Portugalia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/188px-Flag_of_Portugal.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Hiszpania', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Spain.svg/188px-Flag_of_Spain.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Francja', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/188px-Flag_of_France.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Australia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Flag_of_Australia.svg/188px-Flag_of_Australia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Argentyna', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/188px-Flag_of_Argentina.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Islandia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Iceland.svg/188px-Flag_of_Iceland.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Peru', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Flag_of_Peru_%28state%29.svg/188px-Flag_of_Peru_%28state%29.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Dania', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Flag_of_Denmark.svg/188px-Flag_of_Denmark.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Chorwacja', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/188px-Flag_of_Croatia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Nigeria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Flag_of_Nigeria.svg/188px-Flag_of_Nigeria.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Kostaryka', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Costa_Rica_%28state%29.svg/188px-Flag_of_Costa_Rica_%28state%29.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Serbia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Flag_of_Serbia.svg/188px-Flag_of_Serbia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Niemcy', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/188px-Flag_of_Germany.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Meksyk', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fc/Flag_of_Mexico.svg/188px-Flag_of_Mexico.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Brazylia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/188px-Flag_of_Brazil.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Szwajcaria', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f3/Flag_of_Switzerland.svg/188px-Flag_of_Switzerland.svg.png');

INSERT INTO `flag` ( `team`, `url`) VALUES ('Szwecja', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Flag_of_Sweden.svg/188px-Flag_of_Sweden.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Korea Po³udniowa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/09/Flag_of_South_Korea.svg/188px-Flag_of_South_Korea.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Belgia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/Flag_of_Belgium.svg/188px-Flag_of_Belgium.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Panama', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Flag_of_Panama.svg/188px-Flag_of_Panama.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Tunezja', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Flag_of_Tunisia.svg/188px-Flag_of_Tunisia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Anglia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/Flag_of_England.svg/188px-Flag_of_England.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Kolumbia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Colombia.svg/188px-Flag_of_Colombia.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Japonia', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/188px-Flag_of_Japan.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Polska', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Flag_of_Poland.svg/188px-Flag_of_Poland.svg.png');
INSERT INTO `flag` ( `team`, `url`) VALUES ('Senegal', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fd/Flag_of_Senegal.svg/188px-Flag_of_Senegal.svg.png');



CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `user` ( `active`, `email`, `last_name`, `name`, `password`) VALUES ( 1, 'marcin.kasinski@gmail.com', 'Kasiñski', 'Marcin', '$2a$10$kRJ/CcrubD55BtwYSrl3EOMAVxaonsvdkQ7AbdLvH2YwQXV2IOtAG'); -- 1qaz2wsx
INSERT INTO `user` ( `active`, `email`, `last_name`, `name`, `password`) VALUES ( 1, 'michal.korycki@stx-jamboree.com', 'Korycki', 'Micha³', '$2a$10$kRJ/CcrubD55BtwYSrl3EOMAVxaonsvdkQ7AbdLvH2YwQXV2IOtAG'); -- 1qaz2wsx
INSERT INTO `user` ( `active`, `email`, `last_name`, `name`, `password`) VALUES ( 1, 'mariuszpanek17@gmail.com', 'Panek', 'Mariusz', '$2a$10$kRJ/CcrubD55BtwYSrl3EOMAVxaonsvdkQ7AbdLvH2YwQXV2IOtAG'); -- 1qaz2wsx



CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `role` (`role_id`, `role`) VALUES (1, 'ADMIN');
INSERT INTO `role` (`role_id`, `role`) VALUES (2, 'USER');

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `user_role` (`user_id`, `role_id`) VALUES (1, 1);
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES (2, 2);
INSERT INTO `user_role` (`user_id`, `role_id`) VALUES (3, 2);



CREATE TABLE `game` (
  `game_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `game` (`game_id`, `name`) VALUES (NULL, 'MŒ Rosja 2018');
INSERT INTO `game` (`game_id`, `name`) VALUES (NULL, 'Jakaœ inna gra');

CREATE TABLE `match` (
  `match_id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) NOT NULL,
  `play_time` DATETIME NOT NULL,
  `team1` varchar(255) NOT NULL,
  `team2` varchar(255) NOT NULL,
  `score1` int NULL,
  `score2` int NULL,
  `closed` boolean NOT NULL,
  PRIMARY KEY (`match_id`),
  CONSTRAINT `sdsdFK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`game_id`) REFERENCES `game` (`game_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `match` ADD `penalties` BIT NOT NULL DEFAULT 0 AFTER `score2` ;
ALTER TABLE `match` ADD `penaltieswinner` VARCHAR( 120 ) NULL DEFAULT NULL AFTER `penalties` ;
ALTER TABLE `match` CHANGE `penaltieswinner` `penaltieswinner` VARCHAR( 120 ) CHARACTER SET utf8 COLLATE utf8_polish_ci NULL DEFAULT NULL ;




INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-14 16:00:00', 'Rosja', 'Arabia Saudyjska', '5', '0', '1');
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-15 12:00:00', 'Egipt', 'Urugwaj', '0', '1', '1');
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-15 16:00:00', 'Maroko', 'Iran', '0', '1', '1');
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-15 20:00:00', 'Portugalia', 'Hiszpania', '3', '3', '1');
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-16 12:00:00', 'Francja', 'Australia', 2, 1, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-16 15:00:00', 'Argentyna', 'Islandia', 1, 1, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-16 18:00:00', 'Peru', 'Dania', 0, 1, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-16 21:00:00', 'Chorwacja', 'Nigeria', 2, 0, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-17 14:00:00', 'Kostaryka', 'Serbia', 0,1, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-17 17:00:00', 'Niemcy', 'Meksyk', 0,1, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-17 20:00:00', 'Brazylia', 'Szwajcaria', 1,1, 1);

INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-18 14:00:00', 'Szwecja', 'Korea Po³udniowa', 1,0, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-18 17:00:00', 'Belgia', 'Panama', 3,0, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-18 20:00:00', 'Tunezja', 'Anglia', 1,2, 1);

-- Mecze 19.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-19 14:00:00', 'Kolumbia', 'Japonia', 1,2, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-19 17:00:00', 'Polska', 'Senegal', 1,2, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-19 20:00:00', 'Rosja', 'Egipt', 3,1, 1);

-- Mecze 20.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-20 14:00:00', 'Portugalia', 'Maroko', 1,0, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-20 17:00:00', 'Urugwaj', 'Arabia Saudyjska', 1,0, 1);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-20 20:00:00', 'Iran', 'Hiszpania', 0,1, 1);

-- Mecze 21.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-21 14:00:00', 'Dania', 'Australia', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-21 17:00:00', 'Francja', 'Peru', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-21 20:00:00', 'Argentyna', 'Chorwacja', NULL,NULL, 0);

-- Mecze 22.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-22 14:00:00', 'Brazylia', 'Kostaryka', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-22 17:00:00', 'Nigeria', 'Islandia', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-22 20:00:00', 'Serbia', 'Szwajcaria', NULL,NULL, 0);

-- Mecze 23.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-23 14:00:00', 'Belgia', 'Tunezja', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-23 17:00:00', 'Korea Po³udniowa', 'Meksyk', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-23 20:00:00', 'Niemcy', 'Szwecja', NULL,NULL, 0);

-- Mecze 24.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-24 14:00:00', 'Anglia', 'Panama', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-24 17:00:00', 'Japonia', 'Senegal', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-24 20:00:00', 'Polska', 'Kolumbia', NULL,NULL, 0);

-- Mecze 25.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-25 16:00:00', 'Arabia Saudyjska', 'Egipt', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-25 16:00:00', 'Urugwaj', 'Rosja', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-25 20:00:00', 'Iran', 'Portugalia', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-25 20:00:00', 'Hiszpania', 'Maroko', NULL,NULL, 0);

-- Mecze 26.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-26 16:00:00', 'Australia', 'Peru', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-26 16:00:00', 'Dania', 'Francja', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-26 20:00:00', 'Nigeria', 'Argentyna', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-26 20:00:00', 'Islandia', 'Chorwacja', NULL,NULL, 0);

-- Mecze 27.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-27 16:00:00', 'Meksyk', 'Szwecja', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-27 16:00:00', 'Korea Po³udniowa', 'Niemcy', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-27 20:00:00', 'Szwajcaria', 'Kostaryka', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-27 20:00:00', 'Serbia', 'Brazylia', NULL,NULL, 0);

-- Mecze 28.06
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-28 16:00:00', 'Senegal', 'Kolumbia', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-28 16:00:00', 'Japonia', 'Polska', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-28 20:00:00', 'Anglia', 'Belgia', NULL,NULL, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`, `closed`) VALUES (1,  '2018-06-28 20:00:00', 'Panama', 'Tunezja', NULL,NULL, 0);


-- Mecze 1/8 fina³u
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-06-30 16:00:00', 'Francja', 'Argentyna', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-06-30 20:00:00', 'Urugwaj', 'Portugalia', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-01 16:00:00', 'Hiszpania', 'Rosja', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-01 20:00:00', 'Chorwacja', 'Dania', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-02 16:00:00', 'Brazylia', 'Meksyk', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-02 20:00:00', 'Belgia', 'Japonia', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-03 16:00:00', 'Szwecja', 'Szwajcaria', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-03 20:00:00', 'Kolumbia', 'Anglia', NULL,NULL,1, 0);

-- Mecze 1/4 fina³u
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-06 16:00:00', 'Urugwaj', 'Francja', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-06 20:00:00', 'Brazylia', 'Belgia', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-07 16:00:00', 'Szwecja', 'Anglia', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-07 20:00:00', 'Rosja', 'Chorwacja', NULL,NULL,1, 0);


-- Mecze Pólfina³
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-10 20:00:00', 'Francja', 'Belgia', NULL,NULL,1, 0);
INSERT INTO `match` (`game_id`,`play_time`, `team1`, `team2`, `score1`, `score2`,`penalties`, `closed`) VALUES (1,  '2018-07-11 20:00:00', 'Chorwacja', 'Anglia', NULL,NULL,1, 0);


CREATE TABLE `type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `score1` int NOT NULL,
  `score2` int NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`),
  CONSTRAINT `vvaFK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `type` ADD `penaltieswinner` VARCHAR( 120 ) NULL DEFAULT NULL AFTER `score2` ;
ALTER TABLE `type` CHANGE `penaltieswinner` `penaltieswinner` VARCHAR( 120 ) CHARACTER SET utf8 COLLATE utf8_polish_ci NULL DEFAULT NULL ;

CREATE TABLE `match_type` (
  `match_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`match_id`,`type_id`),
  CONSTRAINT `aFKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`match_id`) REFERENCES `match` (`match_id`),
  CONSTRAINT `aFK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--  Rosja Arabia
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (1,  2, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 1, 1);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (2,  1, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 1, 2);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (3,  2, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 1, 3);-- mariuszpanek17@gmail.com


--  Egipt Urugwaj
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (5,  1, 3, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 2, 5);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (6,  1, 3, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 2, 6);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (7,  0, 3, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 2, 7);-- mariuszpanek17@gmail.com

--  Maroko Iran
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (8,  1, 1, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 3, 8);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (9,  1, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 3, 9);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (10,  0, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 3, 10);-- mariuszpanek17@gmail.com


-- Portugalia Hiszpania
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (11,  2, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 4, 11);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (12,  1, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 4, 12);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (13,  0, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 4, 13);-- mariuszpanek17@gmail.com


-- Francja Australia
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (14,  4, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 5, 14);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (15,  3, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 5, 15);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (16,  3, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 5, 16);-- mariuszpanek17@gmail.com


-- Agrentyna Islandia
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (17,  3, 1, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 6, 17);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (18,  2, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 6, 18);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (19,  1, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 6, 19);-- mariuszpanek17@gmail.com


-- Peru Dania
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (20,  2, 2, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 7, 20);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (21,  0, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 7, 21);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (22,  0, 2, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 7, 22);-- mariuszpanek17@gmail.com



-- Chorwacja Nigeria
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (23,  3, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 8, 23);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (24,  1, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 8, 24);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (25,  2, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 8, 25);-- mariuszpanek17@gmail.com

-- Kostaryka Serbia
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (26,  0, 2, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 9, 26);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (27,  0, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 9, 27);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (28,  0, 2, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 9, 28);-- mariuszpanek17@gmail.com

-- Niemcy Meksyk
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (29,  3, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 10, 29);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (30,  2, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 10, 30);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (31,  2, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 10, 31);-- mariuszpanek17@gmail.com

-- Brazylia Szwajcaria
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (32,  1, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 11, 32);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (33,  2, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 11, 33);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (34,  3, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 11, 34);-- mariuszpanek17@gmail.com

-- Szwecja Korea
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (35,  2, 1, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 12, 35);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (36,  2, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 12, 36);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (37,  1, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 12, 37);-- mariuszpanek17@gmail.com

-- Belgia Panama
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (38,  3, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 13, 38);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (39,  3, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 13, 39);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (40,  4, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 13, 40);-- mariuszpanek17@gmail.com

-- Tunezja Anglia
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (41,  0, 3, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 14, 41);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (42,  0, 2, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 14, 42);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (43,  0, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 14, 43);-- mariuszpanek17@gmail.com

-- Kolumbia Japonia
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (44,  2, 1, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 15, 44);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (45,  1, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 15, 45);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (46,  1, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 15, 46);-- mariuszpanek17@gmail.com

-- Polska Senegal
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (47,  2, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 16, 47);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (48,  2, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 16, 48);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (49,  1, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 16, 49);-- mariuszpanek17@gmail.com

-- Rosja Egipt
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (50,  0, 1, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 17, 50);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (51,  1, 1, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 17, 51);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (52,  1, 1, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 17, 52);-- mariuszpanek17@gmail.com

-- Portugalia Maroko
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (53,  2, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 18, 53);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (54,  3, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 18, 54);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (55,  3, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 18, 55);-- mariuszpanek17@gmail.com

-- Urugwaj Arabia Saudyjska
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (56,  4, 0, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 19, 56);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (57,  3, 0, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 19, 57);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (58,  3, 0, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 19, 58);-- mariuszpanek17@gmail.com

-- Iran Hiszpania
INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (59,  0, 2, 1);-- marcin.kasinski@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 20, 59);-- marcin.kasinski@gmail.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (60,  0, 3, 2);-- michal.korycki@stx-jamboree.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 20, 60);-- michal.korycki@stx-jamboree.com

INSERT INTO `type` ( `type_id`, `score1`, `score2`,`user_id`) VALUES (61,  0, 2, 3);-- mariuszpanek17@gmail.com
INSERT INTO `match_type` ( `match_id`, `type_id`) VALUES ( 20, 61);-- mariuszpanek17@gmail.com



