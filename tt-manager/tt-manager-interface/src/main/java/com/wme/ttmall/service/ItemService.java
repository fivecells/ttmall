package com.wme.ttmall.service;

import com.wme.ttmall.pojo.dto.Page;
import com.wme.ttmall.pojo.dto.Result;
import com.wme.ttmall.pojo.po.TbItem;
import com.wme.ttmall.pojo.vo.TbItemCustomer;

import java.util.List;

public interface ItemService {
    Result<TbItemCustomer> itemListByPage(Page page);

    int updateItems(List<Long> list,Byte status);
}
