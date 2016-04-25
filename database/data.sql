-- *****************************************************************************
-- This script contains INSERT statements for populating tables with seed data
-- *****************************************************************************


-- TEST --

-- users -- 
INSERT INTO flyer_user (first_name, last_name, password, salt, user_name, email) VALUES ('Hayden', 'Thompson', '6tTGJCbV+09/DCwqDGCt/g==', 'YnrgCxHq3NS8RQ79qZP6h5vYu+wkyIFqRQ2mCC4zxjHdlAPoh+cJiMECMv7q95pRW8pTbe/LPv8EtVj6W5eUN//YKTICZ1MA6IKkdDlt16x5uyAubpH0CjAOUIJV8WaxYQKze9acfD6pZaQPr6NC7pgYfMWFqODCK+x2c9CcbhI=', 'ttttt', 'hayden@techelevator.com');
INSERT INTO flyer_user (first_name, last_name, password, salt, user_name, email) VALUES ('Kevin', 'Glick', '6tTGJCbV+09/DCwqDGCt/g==', 'YnrgCxHq3NS8RQ79qZP6h5vYu+wkyIFqRQ2mCC4zxjHdlAPoh+cJiMECMv7q95pRW8pTbe/LPv8EtVj6W5eUN//YKTICZ1MA6IKkdDlt16x5uyAubpH0CjAOUIJV8WaxYQKze9acfD6pZaQPr6NC7pgYfMWFqODCK+x2c9CcbhI=', 'kkkkkk', 'kevin@techelevator.com');
INSERT INTO flyer_user (first_name, last_name, password, salt, user_name, email) VALUES ('Jonathan', 'Funk', '6tTGJCbV+09/DCwqDGCt/g==', 'YnrgCxHq3NS8RQ79qZP6h5vYu+wkyIFqRQ2mCC4zxjHdlAPoh+cJiMECMv7q95pRW8pTbe/LPv8EtVj6W5eUN//YKTICZ1MA6IKkdDlt16x5uyAubpH0CjAOUIJV8WaxYQKze9acfD6pZaQPr6NC7pgYfMWFqODCK+x2c9CcbhI=', 'ffffff', 'funk@techelevator.com');
INSERT INTO flyer_user (first_name, last_name, password, salt, user_name, email) VALUES ('Sean', 'Jenkins', '6tTGJCbV+09/DCwqDGCt/g==', 'YnrgCxHq3NS8RQ79qZP6h5vYu+wkyIFqRQ2mCC4zxjHdlAPoh+cJiMECMv7q95pRW8pTbe/LPv8EtVj6W5eUN//YKTICZ1MA6IKkdDlt16x5uyAubpH0CjAOUIJV8WaxYQKze9acfD6pZaQPr6NC7pgYfMWFqODCK+x2c9CcbhI=', 'jjjjjj', 'sean@techelevator.com');

-- flyer --
INSERT INTO flyer (isRetired, company, flyer_id, user_name, flyer_name, create_date, start_date, end_date, num_tabs, tabs_taken, flyer_info, category) VALUES (false, 'TECH ELEVATOR','2', 'kkkkkk', 'Car Wash', '2015-01-01' ,  '2016-01-01' , '2016-11-20','5', '4', 'free car wash! redeem tab', 'Automobile');
INSERT INTO flyer (isRetired, company, flyer_id, user_name, flyer_name, create_date, start_date, end_date, num_tabs, tabs_taken, flyer_info, category) VALUES (false, 'TECHNO ESCALATOR', '1','ttttt', 'FREE DJ', '2016-11-12' ,'2016-11-12' , '2016-11-26','5', '5' ,  'free DJ! redeem tab', 'Entertainment');
INSERT INTO flyer (isRetired, company, flyer_id, user_name, flyer_name, create_date, start_date, end_date, num_tabs, tabs_taken, flyer_info, category) VALUES (false, 'TECHNOLOGICAL ELEPHANT', '3','ffffff', 'Mind Reading Class', '2016-11-11' , '2016-11-11' , '2016-12-12','7', '2' ,'Come learn how to read your own mind!! redeem tab', 'Social');
INSERT INTO flyer (isRetired, company, flyer_id, user_name, flyer_name, create_date, start_date, end_date, num_tabs, tabs_taken, flyer_info, category) VALUES (false, 'LOGICAL ELEPHANT','4', 'jjjjjj', 'Rebellion Signup', '2016-01-23', '2016-01-23', '2016-10-22','20', '2', 'Freedom Fighters Rebellion Sign Up! redeem tab', 'Social');

-- tab -- 

INSERT INTO tab (isRedeemed,pull_date, flyer_id, user_name) VALUES (false,'2016-01-01', '1' ,'kkkkkk');
INSERT INTO tab (isRedeemed,pull_date, flyer_id, user_name) VALUES (false,'2016-01-01','2' ,'ttttt');
INSERT INTO tab (isRedeemed,pull_date, flyer_id, user_name) VALUES (true,'2016-01-01', '3' , 'ffffff');
INSERT INTO tab (isRedeemed,pull_date, flyer_id, user_name) VALUES (true,'2016-01-01',  '4' ,'jjjjjj');

