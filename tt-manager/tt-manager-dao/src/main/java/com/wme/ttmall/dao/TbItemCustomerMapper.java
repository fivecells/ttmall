package com.wme.ttmall.dao;

import com.wme.ttmall.pojo.dto.Page;
import com.wme.ttmall.pojo.vo.TbItemCustomer;

import java.util.List;

public interface TbItemCustomerMapper {
    List<TbItemCustomer> listItemsByPage(Page page);

    Long countItems();
}