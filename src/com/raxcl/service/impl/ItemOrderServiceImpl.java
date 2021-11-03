package com.raxcl.service.impl;

import com.raxcl.base.BaseDao;
import com.raxcl.base.BaseServiceImpl;
import com.raxcl.mapper.ItemCategoryMapper;
import com.raxcl.mapper.ItemOrderMapper;
import com.raxcl.po.ItemCategory;
import com.raxcl.po.ItemOrder;
import com.raxcl.service.ItemCategoryService;
import com.raxcl.service.ItemOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemOrderServiceImpl extends BaseServiceImpl<ItemOrder> implements ItemOrderService {

    @Autowired
    private ItemOrderMapper itemOrderMapper;

    @Override
    public BaseDao<ItemOrder> getBaseDao() {
        return itemOrderMapper;
    }
}
