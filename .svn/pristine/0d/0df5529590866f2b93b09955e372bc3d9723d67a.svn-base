/**
 * Device
 * - platform_type : ANDROID, BB, BB10, IOS
 */
CREATE TABLE xtimo_device
(
  xtimo_device_id bigint NOT NULL AUTO_INCREMENT,
  imei varchar(50) NOT NULL,
  platform_type varchar(10) NOT NULL,
  remark varchar (1024) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_device_id)
);

CREATE UNIQUE INDEX xtimo_device_index_01
	ON xtimo_device
	(imei);