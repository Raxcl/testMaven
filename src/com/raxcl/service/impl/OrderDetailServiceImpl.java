package com.raxcl.service.impl;

import com.raxcl.base.BaseDao;
import com.raxcl.base.BaseServiceImpl;
import com.raxcl.mapper.OrderDetailMapper;
import com.raxcl.po.OrderDetail;
import com.raxcl.service.OrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderDetailServiceImpl extends BaseServiceImpl<OrderDetail> implements OrderDetailService {

    @Autowired
    private OrderDetailMapper orderDetailMapper;

    @Override
    public BaseDao<OrderDetail> getBaseDao() {
        return orderDetailMapper;
    }
}
