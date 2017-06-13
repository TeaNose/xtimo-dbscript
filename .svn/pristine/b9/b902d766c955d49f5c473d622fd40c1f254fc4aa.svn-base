/**
 * Application User
 * - Register User unique key for Application.
 * - Device will be registered in xtimo_device_app and 
 * 		if User Unique Key already registered in xtimo_app_user, Device can use the application, status in xtimo_device_app = 'ACTIVATED'
 * 		if User Unique Key not registered in xtimo_app_user, Device cannot use the applicaton, and need approval on data User. Status in xtimo_device_app = 'REGISTERED'
 * 		If User Unique Key already registered in xtimo_app_user, but active = 'N', Device cannot use the application, and need approval on data User. Status in xtimo_device_app = 'INACTIVE'
 * - Cannot add new User Unique Key if already reach max_allowed_device on xtimo_app
 * - If flag active change to 'N', it will change status on mg_device_app to be INACITVE for all data with app_id and user_unique_key.
 * 		Must give confirmation to User that there are x device with status ACTIVE / RUNNING. Are you sure want to continue? 
 * - If flag active = 'N', but there will be device_app that will be ACTIVATED, then application must give confirmation,
 * 		Do you want to activate for User Unique Key, because status active = 'N'?
 */
CREATE TABLE xtimo_app_user
(
  xtimo_app_user_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_app_id bigint NOT NULL,
  user_unique_key varchar(100) NOT NULL,
  remark varchar(1024) NOT NULL,
  active varchar(1) NOT NULL,
  active_datetime varchar(14) NOT NULL,
  non_active_datetime varchar(14) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_app_user_id)
);

CREATE UNIQUE INDEX xtimo_app_user_index_01
	ON xtimo_app_user 
	(xtimo_app_id, user_unique_key);