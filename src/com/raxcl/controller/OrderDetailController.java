package com.raxcl.controller;

import com.raxcl.base.BaseController;
import com.raxcl.po.ItemOrder;
import com.raxcl.po.OrderDetail;
import com.raxcl.service.ItemOrderService;
import com.raxcl.service.OrderDetailService;
import com.raxcl.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 订单详情c层
 */
@Controller
@RequestMapping("/orderDetail")
public class OrderDetailController extends BaseController {
    @Autowired
    private OrderDetailService orderDetailService;


    @RequestMapping("/ulist")
    public String findBySql(OrderDetail orderDetail, Model model){
        //分页查询
        String sql = "select * from order_detail where order_id= "+orderDetail.getOrderId();
        Pager<OrderDetail> pagers = orderDetailService.findBySqlRerturnEntity(sql);
        model.addAttribute("pagers",pagers);
        //存储查询条件
        model.addAttribute("obj",orderDetail);
        return "orderDetail/ulist";
    }


}
