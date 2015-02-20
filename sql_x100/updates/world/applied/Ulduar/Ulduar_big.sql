DELETE FROM `disables` WHERE `sourceType` = '4' AND `entry` IN
(10042, 10352,
10342, 10355,
10340, 10353,
10341, 10354,
10598, 10599,
10348, 10357,
10351, 10363,
10439, 10719,
10403, 10404,
10582, 10583,
10347, 10361,
10349, 10362,
10350, 10364
);
 
DELETE FROM `achievement_criteria_data` WHERE `type` = '11' AND `criteria_id` IN
(10042, 10352,
10342, 10355,
10340, 10353,
10341, 10354,
10598, 10599,
10348, 10357,
10351, 10363,
10439, 10719,
10403, 10404,
10582, 10583,
10347, 10361,
10349, 10362,
10350, 10364
);
 
DELETE FROM `achievement_criteria_data` WHERE `type` = '18' AND `criteria_id` IN
(10042, 10352,
10342, 10355,
10340, 10353,
10341, 10354,
10598, 10599,
10348, 10357,
10351, 10363,
10439, 10719,
10403, 10404,
10582, 10583,
10347, 10361,
10349, 10362,
10350, 10364
);
 
INSERT INTO `achievement_criteria_data` (`criteria_id`, `type`) VALUES
('10042', '18'),
('10352', '18'),
('10342', '18'),
('10355', '18'),
('10340', '18'),
('10353', '18'),
('10341', '18'),
('10354', '18'),
('10598', '18'),
('10599', '18'),
('10348', '18'),
('10357', '18'),
('10351', '18'),
('10363', '18'),
('10439', '18'),
('10719', '18'),
('10403', '18'),
('10404', '18'),
('10582', '18'),
('10583', '18'),
('10347', '18'),
('10361', '18'),
('10349', '18'),
('10362', '18'),
('10350', '18'),
('10364', '18');