create table role(
  role_id INT NOT NULL AUTO_INCREMENT,
  role_name VARCHAR(100) NOT NULL,
  PRIMARY KEY ( role_id )
);

create table permission(
  permission_id INT NOT NULL AUTO_INCREMENT,
  permission_name VARCHAR(100) NOT NULL,
  PRIMARY KEY ( permission_id )
);

create table USER(
  user_id INT NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(100) NOT NULL,
  password VARCHAR(200) NOT NULL,
  user_type VARCHAR(200) ,
  email VARCHAR(200) ,
  contact_number INT ,
  rating int ,
  dor DATE ,
  role_role_id INT,
  role_id INT,

  PRIMARY KEY ( user_id )
);

create table oauth_client_details(
  id INT NOT NULL AUTO_INCREMENT,
  client_id VARCHAR(100) NOT NULL,
  client_secret VARCHAR(200) NOT NULL,
  access_token_validity INT ,
  scope VARCHAR(100) ,
  authorities VARCHAR(100),
  authorized_grant_types VARCHAR(100),
  refresh_token_validity INT,
  resource_ids VARCHAR(100),
  web_server_redirect_uri VARCHAR(100),
  autoapprove VARCHAR(100),
  additional_information VARCHAR(100),
  PRIMARY KEY ( id )
);

INSERT INTO oauth2_test.oauth_client_details (id, client_id, client_secret, access_token_validity, scope, authorities, authorized_grant_types, refresh_token_validity, resource_ids, web_server_redirect_uri, autoapprove, additional_information) VALUES (1, 'abc', '$2a$10$PcJHQWhZ6sF0qfSPc8.bZOAM8ahRb5GA4Y5atCTJ8ti4UqGNyeMuG', 36000, 'foo,read,write', 'ROLE_CLIENT', 'password,authorization_code,refresh_token,client_credentials', 36000, 'user-resource,utility-resource', 'http://localhost:8082/login,http://localhost:8083/login,http://localhost:8084/login', 'true', null);
INSERT INTO oauth2_test.oauth_client_details (id, client_id, client_secret, access_token_validity, scope, authorities, authorized_grant_types, refresh_token_validity, resource_ids, web_server_redirect_uri, autoapprove, additional_information) VALUES (2, 'abc2', '{bcrypt}$2a$10$0SzoaymZt.sC3kK/mVCAgOPKuhwYRVlvEnPeQe0jVP8tBZ/ao7cS6', 36000, 'foo,read,write', 'ROLE_CLIENT', 'password,authorization_code,refresh_token,client_credentials', 36000, 'user-resource,utility-resource', 'http://localhost:8082/login,http://localhost:8083/login,http://localhost:8084/login', 'true', null);
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (1, 'read_user');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (2, 'create_user');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (3, 'update_user');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (4, 'delete_user');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (5, 'read_users');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (6, 'read_utility');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (7, 'create_utility');
INSERT INTO oauth2_test.permission (permission_id, permission_name) VALUES (8, 'update_utility');
INSERT INTO oauth2_test.role (role_id, role_name) VALUES (1, 'user');
INSERT INTO oauth2_test.role (role_id, role_name) VALUES (2, 'admin');
INSERT INTO oauth2_test.role (role_id, role_name) VALUES (3, 'Manager');
INSERT INTO oauth2_test.user (user_id, user_name, password, contact_number, rating, role_role_id, dor, email, user_type, role_id) VALUES (1, 'Sam', '{bcrypt}$2y$12$WBcP53NiC20Gyksn2nN5SOttJWN.kdHQz71Vt7pkSQXVbcqx/trVK', 43243, 5, 2, null, null, null, null);
INSERT INTO oauth2_test.user (user_id, user_name, password, contact_number, rating, role_role_id, dor, email, user_type, role_id) VALUES (2, 'Gaby', '{bcrypt}$2y$12$WBcP53NiC20Gyksn2nN5SOttJWN.kdHQz71Vt7pkSQXVbcqx/trVK', 43243, 5, 1, null, null, null, null);
INSERT INTO oauth2_test.user (user_id, user_name, password, contact_number, rating, role_role_id, dor, email, user_type, role_id) VALUES (3, 'Sudha Santha Kumar', 'sudha.santhakumar@gmail.com', 42435, 3, 3, null, null, null, null);
INSERT INTO oauth2_test.user (user_id, user_name, password, contact_number, rating, role_role_id, dor, email, user_type, role_id) VALUES (4, 'abcww', '$2a$10$PcJHQWhZ6sF0qfSPc8.bZOAM8ahRb5GA4Y5atCTJ8ti4UqGNyeMuG
', 42435, 3, 3, null, null, null, null);
INSERT INTO oauth2_test.user (user_id, user_name, password, contact_number, rating, role_role_id, dor, email, user_type, role_id) VALUES (5, 'abc', '$2a$10$PcJHQWhZ6sF0qfSPc8.bZOAM8ahRb5GA4Y5atCTJ8ti4UqGNyeMuG', null, null, 2, null, null, null, 2);
