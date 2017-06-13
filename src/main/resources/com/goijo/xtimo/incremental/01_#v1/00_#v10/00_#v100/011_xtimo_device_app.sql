/**
 * Device based on Application
 * - will create new Device Application if user_unique_key changed
 * - if xtimo_device_id, xtimo_app_id and user_unique_key already exists, will replace data timezone, and last_running_datetime
 * - flag_push : 'Y'/'N'. used for push notification based on platform_type (not used)
 * - last_running_datetime : identify that device still running that application
 * - status : 
 * 		REGISTER - new User Unique Key and not registered in xtimo_app_user. Need Admin approval to run the application
 * 		ACTIVATE - User Unique Key already exists and active in xtimo_app_user. Not need Admin approval to run the application
 * 		INACTIVE - User Unique Key already exists but not-active in xtimo_app_user. Need Admin approval to run the application
 * 		RUNNING - Device already running.
 * 		NOTRUNNING - Device not running in x hours.
 * - there will be scheduler for make status RUNNING to be INACTIVE if (now - last_running_datetime) > 24 hours. 
 * - active : 'Y' = current device App. 'N' = historical device App
 */
CREATE TABLE xtimo_device_app
(
  xtimo_device_app_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_device_id bigint NOT NULL,
  xtimo_app_version_id bigint NOT NULL,
  user_unique_key varchar(100) NOT NULL,
  timezone bigint,
  flag_push varchar(1),
  last_running_datetime varchar(14) NOT NULL,
  status varchar(20) NOT NULL,
  remark varchar (1024) NOT NULL,
  active varchar(1) NOT NULL,
  active_datetime varchar(14) NOT NULL,
  non_active_datetime varchar(14) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_device_app_id)
);

CREATE UNIQUE INDEX xtimo_device_app_index_01
	ON xtimo_device_app
	(xtimo_device_id, xtimo_app_version_id, user_unique_key, active_datetime);