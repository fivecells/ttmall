package com.wme.ttmall.pojo.vo;

import com.wme.ttmall.pojo.po.TbItem;

public class TbItemCustomer extends TbItem{
    private String catName;

    private String statusName;

    public String getStatusName() {
        return statusName;
    }

    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }

    public String getCatName() {
        return catName;
    }

    public void setCatName(String catName) {
        this.catName = catName;
    }
}
