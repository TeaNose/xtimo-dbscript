/**
 * Application data
 * - Cannot access application if expired date < Today
 * - encode_data : if 'Y', will decode Json data and will return encode Json data using pass_key
 * - Cannot access application if status active = 'N'
 * - Cannot access application if max_device_allowed < device_app with status ACTIVATED, RUNNING
 */
CREATE TABLE xtimo_app
(
  xtimo_app_id bigint NOT NULL AUTO_INCREMENT,
  app_id varchar(50) NOT NULL,
  tenant_key varchar(50) NOT NULL,
  expired_date varchar(8) NOT NULL,
  encode_data varchar(1) NOT NULL,
  pass_key varchar(50) NOT NULL,
  max_device_allowed bigint NOT NULL,
  remark varchar(1024) NOT NULL,
  active varchar(1) NOT NULL,
  active_datetime varchar(14) NOT NULL,
  non_active_datetime varchar(14) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_app_id)
);

CREATE UNIQUE INDEX xtimo_app_index_01
	ON xtimo_app 
	(app_id);