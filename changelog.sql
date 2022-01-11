-- liquibase formatted sql changeLogId:954282b7-f980-465b-ab8e-c8025c8dbed1

-- changeset SteveZ:1588216
CREATE TABLE department 
(
  id INT NOT NULL, 
  name VARCHAR(50) NOT NULL, 
  active BIT(1) DEFAULT 1 NULL, 
  CONSTRAINT PK_DEPARTMENT PRIMARY KEY (id))
  ;
--rollback drop table department;

