package com.raxcl.po;

import java.io.Serializable;
import java.util.Date;

/**
 * 评论
 */
public class Comment implements Serializable {
    //主键
    private Integer id;

    private Integer userId;

    private User user;

    private Integer ItemId;

    //公告标题
    private String name;

    //内容
    private String content;

    //发布时间
    private Date addTime;

    public Comment(Integer id, Integer userId, Integer itemId, String name, String content, Date addTime) {
        this.id = id;
        this.userId = userId;
        ItemId = itemId;
        this.name = name;
        this.content = content;
        this.addTime = addTime;
    }

    public Comment() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getItemId() {
        return ItemId;
    }

    public void setItemId(Integer itemId) {
        ItemId = itemId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", userId=" + userId +
                ", user=" + user +
                ", ItemId=" + ItemId +
                ", name='" + name + '\'' +
                ", content='" + content + '\'' +
                ", addTime=" + addTime +
                '}';
    }
}
