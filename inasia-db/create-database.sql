CREATE DATABASE IF NOT EXISTS angularcode;
USE angularcode;

--
-- Table structure for table `customers_auth`
--
CREATE TABLE IF NOT EXISTS `customers_auth` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `gender` varchar(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `firstname` varchar (50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mailinglist` boolean NOT NULL default 0,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Table structure for table `orders`
--
CREATE TABLE IF NOT EXISTS `orders` (
  `idorder` int (11)  NOT NULL AUTO_INCREMENT,
  `uid_customer` int (11) NOT NULL,
  `odate` date NOT NULL,
  `otime` time NOT NULL,
  `total` float(50) NOT NULL,
  -- etat de la commande(1.payé, 2. pas payé  3.en attent de paiment)
  `etat` int (5) UNSIGNED NOT NULL,
  PRIMARY KEY(`idorder`),
  FOREIGN KEY(`uid_customer`) REFERENCES customers_auth(`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Table structure for table `speciality`
--

CREATE TABLE IF NOT EXISTS `speciality` (
  `idspeciality` int (11) NOT NULL AUTO_INCREMENT,
  `description` varchar (50) NULL,
  PRIMARY KEY(`idspeciality`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;


--
-- Table structure for table `restaurant`
--
CREATE TABLE IF NOT EXISTS `restaurant` (
  `idrestaurant` int (11) NOT NULL AUTO_INCREMENT,
  `specialty_idspecialty` int (11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `city` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  PRIMARY KEY(`idrestaurant`),
  FOREIGN KEY(`specialty_idspecialty`) REFERENCES speciality(`idspeciality`)
)ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

--
-- Table structure for table `product`
--
CREATE TABLE IF NOT EXISTS `product` (
  `idproduct` int (11) NOT NULL AUTO_INCREMENT,
  `restaurant_idrestaurant` int (11) NOT NULL,
  `name` varchar (50) NOT NULL,
  `stock` int (50) NOT NULL,
  PRIMARY KEY(`idproduct`),
  FOREIGN KEY(`restaurant_idrestaurant`) REFERENCES restaurant(`idrestaurant`)
 ) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;

 
--
-- Table structure for table `orderdetails`
--
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orders_idorder` int (11) AUTO_INCREMENT NOT NULL,
  `product_idproduct` int (11)  NOT NULL,
  `quantity` int (50) NOT NULL,
  `price` float (50) NOT NULL,
 FOREIGN KEY(`product_idproduct`)  REFERENCES product (`idproduct`),
 FOREIGN KEY(`orders_idorder`) REFERENCES orders (`idorder`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=187 ;
