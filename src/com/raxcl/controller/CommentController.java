package com.raxcl.controller;

import com.raxcl.base.BaseController;
import com.raxcl.po.Comment;
import com.raxcl.service.CommentService;
import com.raxcl.utils.Consts;
import com.raxcl.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 评论
 */
@Controller
@RequestMapping("/comment")
public class CommentController extends BaseController {
    @Autowired
    private CommentService commentService;

    /**
     * 添加评论
     */
    @RequestMapping("/exAdd")
    public String exAdd(Comment comment,HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if (attribute==null){
            return "redirect:/login/toLogin";
        }
        Integer userId = Integer.valueOf(attribute.toString());
        comment.setAddTime(new Date());
        commentService.insert(comment);
        return "redirect:/itemOrder/my.action";
    }


}
