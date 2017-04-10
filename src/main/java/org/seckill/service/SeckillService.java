package org.seckill.service;

import org.seckill.dto.Exposer;
import org.seckill.dto.SeckillExecution;
import org.seckill.entity.Seckill;
import org.seckill.exception.RepeatKillException;
import org.seckill.exception.SeckillCloseException;
import org.seckill.exception.SeckillException;

import java.util.List;

/**
 * ҵ��ӿ�
 * Created by Administrator on 2017/3/6.
 */
public interface SeckillService {

    /**
     * ��ѯ������ɱ��¼
     *
     * @return
     */
    List<Seckill> getSeckillList();

    /**
     * ��ѯ������ɱ��¼
     *
     * @param seckillId
     * @return
     */
    Seckill getById(long seckillId);

    /**
     * ��ɱ����ʱ�����ɱ��ַ
     * �������ϵͳʱ�����ɱʱ��
     * @param seckillId
     * @return
     */
    Exposer exportSeckillUrl(long seckillId);

    /**
     * ִ����ɱ����
     * @param seckillId
     * @param userPhone
     * @param md5
     */
    SeckillExecution executeSeckill(long seckillId, long userPhone, String md5)
            throws SeckillException, RepeatKillException, SeckillCloseException;
}
