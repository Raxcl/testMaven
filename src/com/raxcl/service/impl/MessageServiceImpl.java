package com.raxcl.service.impl;

import com.raxcl.base.BaseDao;
import com.raxcl.base.BaseServiceImpl;
import com.raxcl.mapper.MessageMapper;
import com.raxcl.po.Message;
import com.raxcl.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl extends BaseServiceImpl<Message> implements MessageService {
    @Autowired
    private MessageMapper messageMapper;

    @Override
    public BaseDao<Message> getBaseDao() {
        return messageMapper;
    }
}
