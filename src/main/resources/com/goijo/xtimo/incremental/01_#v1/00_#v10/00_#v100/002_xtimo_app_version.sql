/**
 * Application Version data
 * - if Application Version not active, force User to Update the application. 
 * - TODO Untuk pengecekan download, belum
 */
CREATE TABLE xtimo_app_version
(
  xtimo_app_version_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_app_id bigint NOT NULL,
  app_version varchar(50) NOT NULL,
  url_download varchar(1024) NOT NULL,
  remark varchar(1024) NOT NULL,
  active varchar(1) NOT NULL,
  active_datetime varchar(14) NOT NULL,
  non_active_datetime varchar(14) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_app_version_id)
);

CREATE UNIQUE INDEX xtimo_app_version_index_01
	ON xtimo_app_version 
	(xtimo_app_id, app_version);