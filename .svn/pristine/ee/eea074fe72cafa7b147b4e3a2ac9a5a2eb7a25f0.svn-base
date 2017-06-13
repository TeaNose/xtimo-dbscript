/**
 * API Task List
 * - apakah data mau dipisahkan berdasarkan tenant (untuk yang khusus?)
 * - url : used for redirecting service based on order_no
 * - transfor_in & transform_out : not used
 */
CREATE TABLE xtimo_api_task
(
  xtimo_api_task_id bigint NOT NULL AUTO_INCREMENT,
  xtimo_api_id bigint NOT NULL,
  order_no bigint NOT NULL,
  url varchar(255) NOT NULL,
  transform_in varchar(255) NOT NULL,
  transform_out varchar(255) NOT NULL,
  remark varchar (1024) NOT NULL,
  version bigint NOT NULL,
  create_datetime varchar(14) NOT NULL,
  create_user_id bigint,
  update_datetime varchar(14) NOT NULL,
  update_user_id bigint,
  primary key (xtimo_api_task_id)
);

CREATE UNIQUE INDEX xtimo_api_task_index_01
	ON xtimo_api_task
	(xtimo_api_id, order_no);