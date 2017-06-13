/**
 * Application User Role
 * - User List based on Role
 * - 1 User can registered on more than 1 Role.
 * - User and Role must be in the same APP
 * - Cannot Add User for Role that not Active
 */
CREATE TABLE xtimo_app_user_role
(
  xtimo_app_user_role_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_app_user_id bigint,
  xtimo_app_role_id bigint,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_app_user_role_id)
);

CREATE UNIQUE INDEX xtimo_app_user_role_index_01
	ON xtimo_app_user_role 
	(xtimo_app_user_id, xtimo_app_role_id);