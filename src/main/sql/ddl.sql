-- �������ݿ�
CREATE database seckill;
-- ʹ�����ݿ�
use seckill;
-- ������ɱ����
create TABLE seckill(
  `seckill_id` bigint not null auto_increment comment '��Ʒ���ID',
  `name` varchar(120) not null comment '��Ʒ����',
  `number` int not null comment '��Ʒ����',
  `start_time` TIMESTAMP NOT NULL COMMENT '��ɱ����ʱ��',
  `end_time` TIMESTAMP NOT NULL COMMENT '��ɱ����ʱ��',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '����ʱ��',
  PRIMARY KEY (seckill_id),
  key idx_start_time(start_time),
  key idx_end_time(end_time),
  key idx_create_time(create_time)
)engine=Innodb auto_increment=1000 DEFAULT charset=utf8 comment='��ɱ����';

-- ��ʼ������
INSERT INTO seckill.seckill(name, number, start_time, end_time) VALUES
  ('1000Ԫ��ɱiphone6',100,'2017-02-23', '2017-02-25'),
  ('500Ԫ��ɱipad',200,'2017-02-23', '2017-02-25'),
  ('300Ԫ��ɱС��4',300,'2017-02-23', '2017-02-25'),
  ('200Ԫ��ɱ����note',400,'2017-02-23', '2017-02-25');

-- ��ɱ�ɹ���ϸ��
create TABLE success_killed(
  `seckill_id` bigint not null comment '��Ʒ���ID',
  `user_phone` BIGINT NOT NULL COMMENT '�û��ֻ���',
  `state` TINYINT NOT NULL DEFAULT -1 COMMENT '״̬��ʶ -1:��Ч 0���ɹ� 1���Ѹ���',
  `create_time` TIMESTAMP NOT NULL  COMMENT '����ʱ��',
  PRIMARY KEY (seckill_id, user_phone),
  KEY idx_create_time(create_time)
)engine=Innodb DEFAULT charset=utf8 comment='��ɱ�ɹ���ϸ��';

