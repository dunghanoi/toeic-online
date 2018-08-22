CREATE DATABASE toeic CHARACTER SET UTF8;
CREATE TABLE tbl_user(
	id int NOT null PRIMARY KEY AUTO_INCREMENT,
  username varchar(50) NOT null,
  password varchar(255) NOT null,
  fullname varchar(255) NOT null,
  created_date date NOT null
  role_id int
);
-- tao bang role
CREATE TABLE tbl_role(
	id int NOT null PRIMARY KEY AUTO_INCREMENT,
  role_name varchar(100) NOT null
);

ALTER TABLE `tbl_user` ADD FOREIGN KEY (`role_id`) REFERENCES `tbl_role`(`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
  