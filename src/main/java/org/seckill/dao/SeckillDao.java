package org.seckill.dao;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

import java.util.Date;
import java.util.List;

/**
 * Created by Administrator on 2017/2/23.
 */
public interface SeckillDao {

    /**
     * �����
     * @param seckillId
     * @param killTime
     * @return
     */
    int reduceNumber(@Param("seckillId") long seckillId, @Param("killTime") Date killTime);

    /**
     * ����ID��ѯ��ɱ����
     * @param seckillId
     * @return
     */
    Seckill queryById(long seckillId);

    /**
     * ����ƫ������ѯ��ɱ�б�
     * @param offet
     * @param limit
     * @return
     */
    List<Seckill> queryAll(@Param("offet") int offet, @Param("limit") int limit);
}
