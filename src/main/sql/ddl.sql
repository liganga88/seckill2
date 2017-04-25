-- 创建数据库
CREATE database seckill;
-- 使用数据库
use seckill;
-- 创建免杀库存表
create TABLE seckill(
  `seckill_id` bigint not null auto_increment comment '商品库存ID',
  `name` varchar(120) not null comment '商品名称',
  `number` int not null comment '商品数量',
  `start_time` TIMESTAMP NOT NULL COMMENT '秒杀开启时间',
  `end_time` TIMESTAMP NOT NULL COMMENT '秒杀结束时间',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)engine=Innodb auto_increment=1000 DEFAULT charset=utf8 comment='秒杀库存表';

-- 初始化数据
INSERT INTO seckill.seckill(name, number, start_time, end_time) VALUES
  ('1000元秒杀iphone6',100,'2017-02-23', '2017-02-25'),
  ('500元秒杀ipad',200,'2017-02-23', '2017-02-25'),
  ('300元秒杀小米4',300,'2017-02-23', '2017-02-25'),
  ('200元秒杀红米note',400,'2017-02-23', '2017-02-25');

-- 秒杀成功明细表
create TABLE success_killed(
  `seckill_id` bigint not null comment '商品库存ID',
  `user_phone` BIGINT NOT NULL COMMENT '用户手机号',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '状态标识 -1:无效 0：成功 1：已付款',
  `create_time` TIMESTAMP NOT NULL  COMMENT '创建时间',
  PRIMARY KEY (seckill_id, user_phone),
  KEY idx_create_time(create_time)
)engine=Innodb DEFAULT charset=utf8 comment='秒杀成功明细表';

