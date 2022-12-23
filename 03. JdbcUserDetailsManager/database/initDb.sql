CREATE TABLE users (
    id int not null AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  enabled TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
);

CREATE TABLE authorities (
  id int NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  authority VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES ('admin', 'admin', 1);

INSERT INTO `authorities` (`authority`, `username`) VALUES ('write', 'admin');
