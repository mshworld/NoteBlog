CREATE TABLE PUBLIC.T_ABOUT (
  ID      INTEGER     NOT NULL DEFAULT NULL AUTO_INCREMENT,
  NAME    VARCHAR(50)          DEFAULT NULL,
  TAB     VARCHAR(50) NOT NULL,
  CONTENT CLOB,
  CONSTRAINT CONSTRAINT_T_ABOUT PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_ABOUT
  ON PUBLIC.T_ABOUT (ID);


CREATE TABLE PUBLIC.T_ARTICLE (
  ID           INTEGER      NOT NULL,
  TITLE        VARCHAR(100) NOT NULL,
  CATE_ID      INTEGER      NOT NULL,
  COVER        VARCHAR(255)          DEFAULT NULL,
  SUMMARY      VARCHAR(300)          DEFAULT NULL,
  CONTENT      CLOB         NOT NULL,
  TEXT_CONTENT CLOB         NOT NULL,
  AUTHOR_ID    INTEGER      NOT NULL,
  POST         TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  "MODIFY"     TIMESTAMP             DEFAULT NULL,
  VIEWS        INTEGER      NOT NULL DEFAULT '0',
  APPROVE_CNT  INTEGER      NOT NULL DEFAULT '0',
  COMMENTED    TINYINT      NOT NULL DEFAULT '1',
  APPRECIABLE  TINYINT      NOT NULL DEFAULT '1',
  DRAFT        TINYINT      NOT NULL DEFAULT '1',
  TOP          INTEGER      NOT NULL DEFAULT '0',
  CONSTRAINT CONSTRAINT_T_ARTICLE PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_ARTICLE
  ON PUBLIC.T_ARTICLE (ID);


CREATE TABLE PUBLIC.T_CATE (
  ID      INTEGER     NOT NULL DEFAULT NULL AUTO_INCREMENT,
  NAME    VARCHAR(50) NOT NULL,
  CN_NAME VARCHAR(50)          DEFAULT NULL,
  CONSTRAINT CONSTRAINT_T_CATE PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_CATE
  ON PUBLIC.T_CATE (ID);


CREATE TABLE PUBLIC.T_COMMENT (
  ID         INTEGER NOT NULL DEFAULT NULL AUTO_INCREMENT,
  USER_ID    INTEGER NOT NULL,
  ARTICLE_ID INTEGER NOT NULL,
  COMMENT    VARCHAR(1000)    DEFAULT NULL,
  POST       TIMESTAMP        DEFAULT NULL,
  IP_ADDR    VARCHAR(50)      DEFAULT NULL,
  IP_CN_ADDR VARCHAR(100)     DEFAULT NULL,
  USER_AGENT VARCHAR(255)     DEFAULT NULL,
  ENABLE     TINYINT NOT NULL DEFAULT '1',
  CONSTRAINT CONSTRAINT_T_COMMENT PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_COMMENT
  ON PUBLIC.T_COMMENT (ID);


CREATE TABLE PUBLIC.T_FILE (
  ID   INTEGER      NOT NULL DEFAULT NULL AUTO_INCREMENT,
  NAME VARCHAR(255) NOT NULL,
  URL  VARCHAR(500)          DEFAULT NULL,
  POST TIMESTAMP             DEFAULT NULL,
  CONSTRAINT CONSTRAINT_T_FILE PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_FILE
  ON PUBLIC.T_FILE (ID);


CREATE TABLE PUBLIC.T_KEYWORD (
  ID     INTEGER      NOT NULL DEFAULT NULL AUTO_INCREMENT,
  WORDS  VARCHAR(255) NOT NULL,
  ENABLE TINYINT      NOT NULL DEFAULT '1',
  CONSTRAINT CONSTRAINT_T_KEYWORD PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_KEYWORD
  ON PUBLIC.T_KEYWORD (ID);


CREATE TABLE PUBLIC.T_MESSAGE (
  ID         INTEGER      NOT NULL DEFAULT NULL AUTO_INCREMENT,
  USER_ID    INTEGER      NOT NULL,
  IP_CN_ADDR VARCHAR(50)           DEFAULT NULL,
  IP_ADDR    VARCHAR(50)           DEFAULT NULL,
  COMMENT    VARCHAR(255) NOT NULL,
  POST       TIMESTAMP             DEFAULT NULL,
  USER_AGENT VARCHAR(255)          DEFAULT NULL,
  ENABLE     TINYINT      NOT NULL,
  CONSTRAINT CONSTRAINT_T_MESSAGE PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_MESSAGE
  ON PUBLIC.T_MESSAGE (ID);


CREATE TABLE PUBLIC.T_NOTE (
  ID            INTEGER      NOT NULL DEFAULT NULL AUTO_INCREMENT,
  TITLE         VARCHAR(50)  NOT NULL,
  CLEAR_CONTENT VARCHAR(999)          DEFAULT NULL,
  CONTENT       VARCHAR(999) NOT NULL,
  TOP           TINYINT      NOT NULL DEFAULT '0',
  SHOW          TINYINT      NOT NULL DEFAULT '1',
  POST          TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  "MODIFY"      TIMESTAMP             DEFAULT NULL,
  CONSTRAINT CONSTRAINT_T_NOTE PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_NOTE
  ON PUBLIC.T_NOTE (ID);


CREATE TABLE PUBLIC.T_PARAM (
  ID     INTEGER      NOT NULL DEFAULT NULL AUTO_INCREMENT,
  NAME   VARCHAR(50)  NOT NULL,
  VALUE  VARCHAR(600) NOT NULL,
  REMARK VARCHAR(255)          DEFAULT NULL,
  CONSTRAINT CONSTRAINT_T_PARAM PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_PARAM
  ON PUBLIC.T_PARAM (ID);


CREATE TABLE PUBLIC.T_ROLE (
  ID      INTEGER     NOT NULL DEFAULT NULL AUTO_INCREMENT,
  NAME    VARCHAR(50) NOT NULL,
  CN_NAME VARCHAR(50)          DEFAULT NULL,
  CONSTRAINT CONSTRAINT_T_ROLE PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_ROLE
  ON PUBLIC.T_ROLE (ID);


CREATE TABLE PUBLIC.T_TAG (
  ID   INTEGER     NOT NULL DEFAULT NULL AUTO_INCREMENT,
  NAME VARCHAR(50) NOT NULL,
  CONSTRAINT CONSTRAINT_T_TAG PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_TAG
  ON PUBLIC.T_TAG (ID);


CREATE TABLE PUBLIC.T_TAG_REFER (
  ID       INTEGER     NOT NULL DEFAULT NULL AUTO_INCREMENT,
  REFER_ID INTEGER     NOT NULL,
  TAG_ID   INTEGER     NOT NULL,
  SHOW     TINYINT     NOT NULL DEFAULT '0',
  "TYPE"   VARCHAR(50) NOT NULL,
  CONSTRAINT CONSTRAINT_T_TAG_REFER PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_TAG_REFER
  ON PUBLIC.T_TAG_REFER (ID);


CREATE TABLE PUBLIC.T_UPLOAD (
  ID           INTEGER      NOT NULL DEFAULT NULL AUTO_INCREMENT,
  DISK_PATH    VARCHAR(255) NOT NULL,
  VIRTUAL_PATH VARCHAR(255) NOT NULL,
  UPLOAD       TIMESTAMP             DEFAULT NULL,
  "TYPE"       VARCHAR(50)  NOT NULL,
  CONSTRAINT CONSTRAINT_T_UPLOAD PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_UPLOAD
  ON PUBLIC.T_UPLOAD (ID);


CREATE TABLE PUBLIC.T_USER (
  ID              INTEGER NOT NULL DEFAULT NULL AUTO_INCREMENT,
  USERNAME        VARCHAR(20)      DEFAULT NULL,
  NICKNAME        VARCHAR(50)      DEFAULT NULL,
  PASSWORD        VARCHAR(50)      DEFAULT NULL,
  AVATAR          VARCHAR(255)     DEFAULT NULL,
  QQ_NUM          VARCHAR(20)      DEFAULT NULL,
  DEFAULT_ROLE_ID INTEGER NOT NULL,
  ENABLE          TINYINT          DEFAULT '1',
  "CREATE"        TIMESTAMP        DEFAULT NULL,
  OPEN_ID         VARCHAR(32)      DEFAULT NULL,
  CONSTRAINT CONSTRAINT_T_USER PRIMARY KEY (ID)
);
CREATE UNIQUE INDEX PRIMARY_KEY_T_USER
  ON PUBLIC.T_USER (ID);


