/**
 * Application Role
 * - Role Type : ADMIN, USER
 * - Cannot change Active to be 'N' if there is User use this Role
 */
CREATE TABLE xtimo_app_role
(
  xtimo_app_role_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_app_id bigint NOT NULL,
  role_name varchar(100) NOT NULL,
  role_type varchar(5) NOT NULL,
  remark varchar(1024) NOT NULL,
  active varchar(1) NOT NULL,
  active_datetime varchar(14) NOT NULL,
  non_active_datetime varchar(14) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_app_role_id)
);

CREATE UNIQUE INDEX xtimo_app_role_index_01
	ON xtimo_app_role 
	(xtimo_app_id, role_name);