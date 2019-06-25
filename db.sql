create database IF NOT EXISTS workers CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

create table IF NOT EXISTS user_type(
	user_type_id int AUTO_INCREMENT NOT NULL,
	user_type_name varchar(255)
	PRIMARY KEY (user_type_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table IF NOT EXISTS user(
	user_id int AUTO_INCREMENT NOT NULL,
	user_name varchar(255),
	user_email varchar(255),
	user_password varchar(255),
	user_type int,
	PRIMARY KEY (user_id),
	FOREIGN KEY (user_type) references user_type(user_type_id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table IF NOT EXISTS log_type(
	log_type_id int AUTO_INCREMENT NOT NULL,
	log_type_name varchar(100),
	PRIMARY KEY (log_type_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table IF NOT EXISTS log(
	log_id int AUTO_INCREMENT NOT NULL,
	log_date datetime,
	log_type int,
	log_father int,
	PRIMARY KEY log_id,
	FOREIGN KEY (log_type) references log_type(log_id) on update cascade on delete cascade,
	FOREIGN KEY (log_father) references log(log_id) on update cascade on delete cascade
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

