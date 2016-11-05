CREATE TABLE IF NOT EXISTS `#__carshopping_survey` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
`q1` VARCHAR(255)  NOT NULL ,
`q11` VARCHAR(255)  NOT NULL ,
`q2` VARCHAR(255)  NOT NULL ,
`q3` VARCHAR(255)  NOT NULL ,
`q4` VARCHAR(255)  NOT NULL ,
`q5` VARCHAR(255)  NOT NULL ,
`q6` VARCHAR(255)  NOT NULL ,
`q7` VARCHAR(255)  NOT NULL ,
`q8` TEXT NOT NULL ,
`q9` VARCHAR(255)  NOT NULL ,
`q10` VARCHAR(255)  NOT NULL ,
`created_time` DATETIME NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_shoppingprofile` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
`q1` VARCHAR(255)  NOT NULL ,
`created_time` DATETIME NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_dilemma` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,

`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_by` INT(11)  NOT NULL ,
`q1` VARCHAR(255)  NOT NULL ,
`created_time` DATETIME NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_dilemma_choices` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`title` TEXT  NOT NULL ,
`tooltip` TEXT  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_city` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`name` TEXT  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_product_advisor_profile` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`dealer_id` INT(11)  NOT NULL ,
`city_id` INT(11)  NOT NULL ,
`year_of_experience` INT(11)  NOT NULL ,
`certified` TINYINT(1)  NOT NULL ,
`phone` VARCHAR(255)  NOT NULL ,
`profile_text` TEXT NULL,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_dealer_profile` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`showroom_name` VARCHAR(255)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_brand` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`brand_name` VARCHAR(255)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_product_advisors_brand` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`brand_id` INT(11)  NOT NULL ,
`product_advisor_id` INT(11)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_matches` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`customer_id` INT(11)  NOT NULL ,
`product_advisor_id` INT(11)  NOT NULL ,
`is_active` INT(11)  NOT NULL ,
`last_activity` DATETIME NULL ,
`token` VARCHAR(255)  NOT NULL, 
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_matches_messages` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`user_type` INT(11)  NOT NULL ,
`match_id` INT(11)  NOT NULL ,
`message` TEXT NOT NULL ,
`ip` VARCHAR(255)  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_recommendation` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`vehicle_id` INT(11)  NOT NULL ,
`note1` TEXT NOT NULL ,
`price` DECIMAL  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

CREATE TABLE IF NOT EXISTS `#__carshopping_buying_info` (
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`ordering` INT(11)  NOT NULL ,
`state` TINYINT(1)  NOT NULL ,
`checked_out` INT(11)  NOT NULL ,
`checked_out_time` DATETIME NOT NULL DEFAULT '0000-00-00 00:00:00',
`created_time` DATETIME NOT NULL ,
`created_by` INT(11)  NOT NULL ,
`vehiclemanager_orders_id` INT(11)  NOT NULL ,
`customer_id` INT(11)  NOT NULL ,
`vehicle_id` INT(11)  NOT NULL ,
`note1` TEXT NOT NULL ,
`price` DECIMAL  NOT NULL ,
PRIMARY KEY (`id`)
) DEFAULT COLLATE=utf8_general_ci;

INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(1, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I dont want to waste your time ', 'Would you worry about wasting a doctors time if you were ill? We are professionals and are here to find you something which suits your needs and budget. If there is a real problem you can count on us to be upfront about it. Click the button to let us know that you want to discuss this ');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(2, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I owe money on my last car', 'This is a situation we encounter often. Our financial professionals will go the extra mile to iron out any financial details and will be upfront about what is possible. Ask a sales advisor for further details. Click the button to let us know that you want to discuss this.');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(3, 0, 0, 0, '0000-00-00 00:00:00', 0, 'This is my first car', 'Congratulations! It is so nice to be able help people on an important occasion in their lives. We will do our very best to make sure it is a good experience. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(4, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Is someone else getting a better price?', 'There are many reasons why people might pay slightly different prices, such as province of registration or a history of loyalty to a brand or dealership.  Car shoppers have always done some negotiation on the price.  If that is not your thing you may find MyNextRide can smooth out the road. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(5, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I''m shopping for someone else', 'We understand that you have a busy life, and perhaps you divvy up the chores in your household so that one of you does the advance work.  But shopping for someone else''s car can be like shopping for someone else''s shoes.  If they do not fit, you are not doing them a favour. If someone is going to drive the car, it just makes sense to bring them in sooner rather than later. If you can do that we promise that the time and hassle you save will be worth the effort. But click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(6, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Your car X costs more than car Y', 'The car industry is extremely competitive and modern production techniques are extremely efficient.  The market keeps everyone honest.  The fair price of a vehicle is determined by the quality of the vehicle and the  demand for it.   Click the button to let us know that you want to discuss this ');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(7, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I dont have time to test drive', 'Whether you are spending 5 thousand or 50 thousand dollars on a vehicle, it is a big decision.  If you plan to  spend 25 thousand dollars on a car and skip a 10 minute test drive that could save you a bad decision - you are valuing your time at 41  dollars and 65 cents per second. Really? Nice work if you can get it! Take it from us - you will sleep easier if you try it out first. But click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(8, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I dont want to pay any interest', 'No one likes to pay interest. But there are usually a few models available at 0 percent, or low interest rate financing. Otherwise remember to work out what you actually pay. A point or two of interest rate will likely amount to less than you think. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(9, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I just wrote my car off', 'We are sorry to hear that and hope everyone was ok.  There may be a period of uncertainty while insurance matters are cleared up. In the meantime you should know that car loans are open and can be paid off at any time. Therefore there is no compelling financial reason to wait for the insurance to clear before getting a replacement car. Click here to let us know that you want to discuss this ');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(10, 0, 0, 0, '0000-00-00 00:00:00', 0, 'We are making a spreadsheet of cars', 'We understand that customers need to do some due diligence when looking at several models of vehicle. For the most part, those feature by features comparisons already exist on the internet. What a spreadsheet cannot do is represent your feelings about the vehicle.  These are important because it is likely going to be in your driveway for years. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(11, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Will this car fit in my garage?', 'No problem! Lets take the vehicle to your house and try it out. But click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(12, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Can I drop by next week?', 'Would you just drop by your dentist? Buying a vehicle is an even bigger decision! Appointments are not just for the product advisor. They are for the comfort and convenience of other customers like yourself who also deserve excellent wait-free unhurried service. Do product advisors take walk-ins? Sure, but do yourself a favour and give them a heads up before you arrive.  Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(13, 0, 0, 0, '0000-00-00 00:00:00', 0, 'No one seems to have the vehicle I want', 'New? Probably the vehicle you want is somewhere in the warehouse or in our regional network. Sometimes shortages can develop - but why not let us do the legwork? Come see a human and we will figure it out. Used? Decide what you want, and when you see it, snap it up. Used cars are one of a kind. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(14, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Give me your best price', 'When you come to a dealership in person, this tells the seller you are ready to do business and are not just fishing. For this reason the best price is always when you come to the dealership. If you prefer to deal online, we suggest you try our chose-a-price service. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(15, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Whats my trade worth?', 'Modern cars have 50000 moving parts and are worth thousands of dollars, so value can only be roughly estimated from books alone. We wish life were simpler, but there is no substitute for having the vehicle examined by an expert, in person. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(16, 0, 0, 0, '0000-00-00 00:00:00', 0, 'I had a bad experience with a sales person', 'We are sorry to hear that. Nobody is perfect. Any dealer participating in MyNextRide is committed to the highest levels of customer service. If you had a bad experience we want to hear about it.  Otherwise please contact one of our experienced and friendly product advisors.   Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(17, 0, 0, 0, '0000-00-00 00:00:00', 0, 'How long will it take to get the car?', 'Even if the car is on the lot it will take about 2 days to get it ready for delivery.  It is a bit more complex than a supermarket checkout, but like a supermarket checkout, cars are queued for delivery in order. Otherwise delays can vary from a week or two if it is in the warehouse, to 3 to 4 months for a factory order. Click the button to let us know that you want to discuss this');
INSERT INTO `#__carshopping_dilemma_choices` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_by`, `title`, `tooltip`) VALUES(18, 0, 0, 0, '0000-00-00 00:00:00', 0, 'Why do I have to pay freight?', 'New cars are usually sold in mint condition with 5 to 125 km on them.  For this to be the case dealers must ship the cars from the factory on a delivery truck and handle them with care.  For full disclosure, this cost is itemized for the customer. If you hate the freight, consider buying a used vehicle. But click the button to let us know that you want to discuss this');


INSERT INTO `#__carshopping_city` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_time`, `created_by`, `name`) VALUES(1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'New York');
INSERT INTO `#__carshopping_city` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_time`, `created_by`, `name`) VALUES(2, 2, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'Woshington');


INSERT INTO `#__carshopping_brand` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_time`, `created_by`, `brand_name`) VALUES(1, 1, 1, 0, '0000-00-00 00:00:00', '2015-01-16 12:30:21', 0, 'Toyota');
INSERT INTO `#__carshopping_brand` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `created_time`, `created_by`, `brand_name`) VALUES(2, 2, 1, 0, '0000-00-00 00:00:00', '2015-01-16 12:30:25', 0, 'Honda');
