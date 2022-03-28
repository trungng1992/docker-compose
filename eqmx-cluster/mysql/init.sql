CREATE  TABLE  `iot_mqtt_acl` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'primary key' ,
    `username` varchar ( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mqtt username' ,
    `topic` varchar ( 255 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Topic Filter' ,
    `access` int DEFAULT NULL  COMMENT  'Access rights 1: subscribe, 2: publish, 3: pubsub' ,
    `create_time` datetime DEFAULT NULL COMMENT 'Creation date' ,
    `del_flag` int DEFAULT '0' COMMENT 'Whether to delete 0 but not delete 1 delete' ,  
    PRIMARY KEY ( `id` ) USING BTREE, KEY `idx_username` ( `username` ) USING BTREE
) ENGINE = InnoDB DEFAULT CHARSET =utf8mb3 ROW_FORMAT=DYNAMIC COMMENT = 'mqtt ACL rule table';

CREATE  TABLE  `iot_mqtt_user` (
    `id` int NOT NULL AUTO_INCREMENT COMMENT 'Primary key' ,
    `username` varchar ( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mqtt username' ,
    `password` varchar ( 64 ) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mqtt encrypted password' ,
    `login_pwd` varchar ( 64 ) CHARACTER  SET utf8 COLLATE utf8_general_ci NOT  NULL  COMMENT  'mqtt plaintext password' ,
    `is_superuser` tinyint( 1 ) DEFAULT NULL COMMENT 'Is it a super user (1-yes, 0-no)' ,
    `create_by` varchar ( 32 ) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'created by' ,
    `create_time` datetime DEFAULT NULL COMMENT 'created date' ,
    `update_by` varchar ( 32 ) CHARACTER  SET utf8 COLLATE utf8_general_ci DEFAULT  NULL  COMMENT  'updated person' , 
    `update_time` datetime DEFAULT NULL COMMENT 'updated date' , `del_flag` int DEFAULT '0' COMMENT 'whether deleted 0 not deleted 1 deleted' ,  
    PRIMARY KEY ( `id` ) USING BTREE, KEY `idx_username` ( `username` ) USING BTREE, KEY `idx_sn` (`sn` ) USING BTREE 
) ENGINE = InnoDB  DEFAULT  CHARSET =utf8mb3 ROW_FORMAT=DYNAMIC COMMENT = 'mqtt user table' ;