### WARNING! This SQL file is the home of creating all database tables, please do not alter this file unless you know what you are doing!###

CREATE TABLE IF NOT EXISTS `<DATA_PREFIX>configuration` (
    `hash` varchar(255) NOT NULL COMMENT 'Security Hash',
    `key` varchar(80) NOT NULL COMMENT 'Key for Option',
    `value` varchar(80) NOT NULL COMMENT 'Gives T/F or other option'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE IF NOT EXISTS `<DATA_PREFIX>activeUnits` (

    `callsignID` varchar(255) NOT NULL,
    `activeStatus` int(11) NOT NULL COMMENT `Unit Statuses go as follows: 0=Busy/Unavailable, 1=Available`,
    `statusDetails` int(11) NOT NULL COMMENT `Information related to the activeStatus table`,
    `id` int(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`),
    UNIQUE KEY `callsignID` (`callsignID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE IF NOT EXISTS `<DATA_PREFIX>boloVehicle` (
  `vBoloID` int(11) NOT NULL AUTO_INCREMENT,
  `vehicleMake` varchar(255) NOT NULL COMMENT 'Make of BOLO vehicle.',
  `vehicleModel` varchar(255) NOT NULL COMMENT 'Model of BOLO vehicle.',
  `vehiclePlate` varchar(255) NOT NULL COMMENT 'License of BOLO vehicle.',
  `primaryColor` varchar(255) NOT NULL COMMENT 'Primary color of BOLO vehicle.',
  `secondaryColor` varchar(255) NOT NULL COMMENT 'Secondary color of BOLO vehicle.',
  `reasonWanted` varchar(255) NOT NULL COMMENT 'Reason BOLO suspect is wanted.',
  `lastLocation` varchar(255) NOT NULL COMMENT 'Last observed location of BOLO vehicle.',
  PRIMARY KEY (`vehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

CREATE TABLE IF NOT EXISTS `<DATA_PREFIX>boloPerson` (
    `pBoloID` int(11) NOT NULL AUTO_INCREMENT,
    `firstName` varchar(255) NOT NULL COMMENT 'First name of BOLO suspect.',
    `lastName` varchar(255) NOT NULL COMMENT 'Last name of BOLO suspect.',
    `gender` varchar(255) NOT NULL COMMENT 'Gender of BOLO suspect.',
    `physicalDescription` varchar(255) NOT NULL COMMENT 'Physical description of BOLO suspect.',
    `reasonIssued` varchar(255) NOT NULL COMMENT 'Reason BOLO suspect is wanted.',
    `lastSeen` varchar(255) NOT NULL COMMENT 'Last observed location of BOLO suspect.',
  PRIMARY KEY (`id`) USING BTREE
)

CREATE TABLE IF NOT EXISTS `<DATA_PREFIX>AMBERALERT` (
    `alertID` int(11) NOT NULL AUTO_INCREMENT,
    `firstName` varchar(255) NOT NULL COMMENT 'This is the first name if needed in the Amber Alert.',
    `lastName` varchar(255) NOT NULL COMMENT 'This is the last name if needed in the Amber Alert.',
    `vehicleMake` varchar(255) NOT NULL COMMENT 'Make of AMBER ALERT vehicle.',
    `vehicleModel` varchar(255) NOT NULL COMMENT 'Model of AMBER ALERT vehicle.',
    `vehiclePlate` varchar(255) NOT NULL COMMENT 'License of AMBER ALERT vehicle.',
    `primaryColor` varchar(255) NOT NULL COMMENT 'Primary color of AMBER ALERT vehicle.',
    `lastSeen` varchar(255) NOT NULL COMMENT 'Last seen with... at...'
)