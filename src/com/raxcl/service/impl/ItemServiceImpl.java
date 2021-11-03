package com.raxcl.service.impl;

import com.raxcl.base.BaseDao;
import com.raxcl.base.BaseServiceImpl;
import com.raxcl.mapper.ItemMapper;
import com.raxcl.po.Item;
import com.raxcl.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl extends BaseServiceImpl<Item> implements ItemService {
    @Autowired
    private ItemMapper itemMapper;

    @Override
    public BaseDao<Item> getBaseDao() {
        return itemMapper;
    }
}
