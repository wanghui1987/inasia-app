USE angularcode;

-- Dumping data for table `customers_auth`

INSERT INTO `customers_auth` (`uid`, `gender`, `name`, `firstname`, `email`, `phone`, `password`, `address`, `city`, `created`, `mailinglist`) VALUES
(169, 'Mr', 'Swadesh Behera', 'Test1', 'swadesh@gmail.com', '1234567890', '$2a$10$251b3c3d020155f7553c1ugKfEH04BD6nbCbo78AIDVOqS3GVYQ46', '4092 Furth Circle', 'Singapore', '2014-08-31 18:21:20', 0),
(170, 'Mr', 'Ipsita Sahoo', 'Test2','ipsita@gmail.com', '1111111111', '$2a$10$d84ffcf46967db4e1718buENHT7GVpcC7FfbSqCLUJDkKPg4RcgV2', '2, rue du Commerce', 'NYC', '2014-08-31 18:30:58', 0),

(171, 'Mr', 'Trisha Tamanna Priyadarsini', 'Test3', 'trisha@gmail.com', '2222222222', '$2a$10$c9b32f5baa3315554bffcuWfjiXNhO1Rn4hVxMXyJHJaesNHL9U/O', 'C/ Moralzarzal, 86', 'Burlingame', '2014-08-31 18:32:03', 0),
(172, 'Mr', 'Sai Rimsha', 'Test4', 'rimsha@gmail.com', '3333333333', '$2a$10$477f7567571278c17ebdees5xCunwKISQaG8zkKhvfE5dYem5sTey', '897 Long Airport Avenue', 'Madrid', '2014-08-31 20:34:21', 0),
(173, 'Mr', 'Satwik Mohanty', 'Test5','satwik@gmail.com', '4444444444', '$2a$10$2b957be577db7727fed13O2QmHMd9LoEUjioYe.zkXP5lqBumI6Dy', 'Lyonerstr. 34', 'San Francisco\n', '2014-08-31 20:36:02', 0),
(174, 'Mr', 'Tapaswini Sahoo', 'Test6', 'linky@gmail.com', '5555555555', '$2a$10$b2f3694f56fdb5b5c9ebeulMJTSx2Iv6ayQR0GUAcDsn0Jdn4c1we', 'ul. Filtrowa 68', 'Warszawa', '2014-08-31 20:44:54', 0),
(175, 'Mr', 'Manas Ranjan Subudhi', 'Test7', 'manas@gmail.com', '6666666666', '$2a$10$03ab40438bbddb67d4f13Odrzs6Rwr92xKEYDbOO7IXO8YvBaOmlq', '5677 Strong St.', 'Stavern\n', '2014-08-31 20:45:08', 0),
(178, 'Mr', 'AngularCode Administrator', 'Test8','admin@angularcode.com', '0000000000', '$2a$10$72442f3d7ad44bcf1432cuAAZAURj9dtXhEMBQXMn9C8SpnZjmK1S', 'C/1052, Bangalore', '', '2014-08-31 21:00:26', 0);


-- Dumping data for table `orders`

INSERT INTO `orders` (`idorder`, `uid_customer`,`odate`,`otime`,`total`,`etat`) VALUES
(1, 172, '01/02/2015','12:20',15,2),
(2, 169, '01/02/2015','12:38',10.50,1),
(3, 170, '01/02/2015','14:20',20.50,3),
(4, 175, '01/02/2015','15:12',18.30,2);

-- Dumping data for table `speciality`

INSERT INTO `speciality` (`idspeciality`, `description`) VALUES
(1, 'chinois'),
(2, 'japonais'),
(3, 'thalandais'),
(4,'coréen'),
(5,'indien'),
(6,'vietnamien'),
(7,'divers');

-- Dumping data for table `restaurant`

INSERT INTO `restaurant` (`idrestaurant`, `specialty_idspecialty`, `name`,`cp`,`city`,`address`) VALUES
(1, 1, 'Délice de Qingdao','75009','paris','3 rue Budapest'),
(2, 1, 'New China Town','75013','paris','24 rue javelot'),
(3, 2, 'Le Chti Long','59800','lille','22 rue jeanne Maillotte'),
(4, 3, 'Gourmet','33000','bordeaux','32 rue Paul Louis Lande');

-- Dumping data for table `product`

INSERT INTO `product` (`idproduct`, `restaurant_idrestaurant`, `name`,`stock`) VALUES
(1, 3, 'Brochette de poulet', 20),
(2, 1, 'Nem au poulet', 42),
(3, 2, 'Soupe de raviolie', 57),
(4, 1, 'Orangina', 75);

-- Dumping data for table `orderdetails`

INSERT INTO `orderdetails` (`orders_idorder`, `product_idproduct`,`quantity`,`price`) VALUES
(1, 1, 3, 12),
(2, 1, 1, 3),
(3, 3, 2, 8.5),
(4, 4, 5, 7.5);
