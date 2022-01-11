-- liquibase formatted sql

-- changeset Datical:1641933945624-1
CREATE TABLE book (id MEDIUMINT UNSIGNED AUTO_INCREMENT NOT NULL, title VARCHAR(200) NOT NULL, tags LONGTEXT NULL, CONSTRAINT PK_BOOK PRIMARY KEY (id));

-- changeset Datical:1641933945624-2
CREATE TABLE department (id INT NOT NULL, name VARCHAR(50) NOT NULL, active BIT DEFAULT 1 NULL, Email VARCHAR(255) NULL, CONSTRAINT PK_DEPARTMENT PRIMARY KEY (id));

-- changeset Datical:1641933945624-3
CREATE TABLE shop (article INT UNSIGNED DEFAULT 0 NOT NULL, dealer CHAR(20) DEFAULT '' NOT NULL, price DECIMAL(16, 2) DEFAULT 0 NOT NULL, CONSTRAINT PK_SHOP PRIMARY KEY (article, dealer));

-- changeset Datical:1641933945624-4
ALTER TABLE book ADD CONSTRAINT tags CHECK (json_valid(`tags`));

-- changeset Datical:1641933945624-5 splitStatements:false
CREATE PROCEDURE `get_shopcount`()
BEGIN
Select count(*) from shop1;
END;

-- changeset Datical:1641933945624-6
CREATE INDEX idx_department ON department(id, active);

