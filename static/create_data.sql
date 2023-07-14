### WARNING! This SQL file is the home of creating all database tables, please do not alter this file unless you know what you are doing!###

CREATE TABLE IF NOT EXISTS `<DATA_PREFIX>configuration` (
    `hash` varchar(80) NOT NULL,
    `key` varchar(80) NOT NULL,
    `value` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;