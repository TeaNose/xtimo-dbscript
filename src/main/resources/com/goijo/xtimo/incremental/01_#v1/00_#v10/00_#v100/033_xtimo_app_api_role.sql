/**
 * Application API Role based
 * - API List that can be accessed based on Role
 * - API and Role must be in the same APP
 * - If not registered here, then API is not authorized for that Role
 */
CREATE TABLE xtimo_app_api_role
(
  xtimo_app_api_role_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_app_role_id bigint,
  xtimo_api_id bigint,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_app_api_role_id)
);

CREATE UNIQUE INDEX xtimo_app_api_role_index_01
	ON xtimo_app_api_role 
	(xtimo_app_role_id, xtimo_api_id);