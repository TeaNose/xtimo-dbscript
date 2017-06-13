/**
 * API Task Log per API Task
 * - data_category : INPUT / OUTPUT
 * - success : Y/N
 */
CREATE TABLE xtimo_api_task_device_log
(
  xtimo_api_task_device_log_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_api_device_log_id bigint NOT NULL,
  xtimo_api_task_id bigint NOT NULL,
  server_datetime varchar(14) NOT NULL,
  data_category varchar(10) NOT NULL,
  data_json TEXT,
  success varchar(1) NOT NULL,
  version bigint NOT NULL,
  primary key (xtimo_api_task_device_log_id)
);

CREATE UNIQUE INDEX xtimo_api_task_device_log_index_01
	ON xtimo_api_task_device_log
	(xtimo_api_device_log_id, xtimo_api_task_id, server_datetime);