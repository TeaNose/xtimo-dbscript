/**
 * List of API
 * - Cannot access application if status active = 'N'
 * - auth_user_api = 'Y' means, user need to : authorizeUserApi, authorizeDevice and mark as Running Device
 */
CREATE TABLE xtimo_api
(
  xtimo_api_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_app_id bigint NOT NULL,
  api varchar(50) NOT NULL,
  api_version varchar (10) NOT NULL,
  remark varchar(1024) NOT NULL,
  auth_user_api varchar(1) NOT NULL DEFAULT 'Y',
  active varchar(1) NOT NULL,
  active_datetime varchar(14) NOT NULL,
  non_active_datetime varchar(14) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_api_id)
);

CREATE UNIQUE INDEX xtimo_api_index_01
	ON xtimo_api 
	(xtimo_app_id, api, api_version);