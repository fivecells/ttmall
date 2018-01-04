package com.wme.ttmall.service.impl;

import com.wme.ttmall.dao.TbItemCustomerMapper;
import com.wme.ttmall.dao.TbItemMapper;
import com.wme.ttmall.pojo.dto.Page;
import com.wme.ttmall.pojo.dto.Result;
import com.wme.ttmall.pojo.po.TbItem;
import com.wme.ttmall.pojo.po.TbItemExample;
import com.wme.ttmall.pojo.vo.TbItemCustomer;
import com.wme.ttmall.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemServiceImpl implements ItemService {
    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private TbItemMapper mapper;
    @Autowired
    private TbItemCustomerMapper itemCustomerDao;
    @Override
    public Result<TbItemCustomer> itemListByPage(Page page) {
        Result<TbItemCustomer > result = new Result<>();
        Long total = itemCustomerDao.countItems();
        List<TbItemCustomer> list = null;
        try {
            list = itemCustomerDao.listItemsByPage(page);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        result.setRows(list);
        result.setTotal(total);
        return result;
    }

    @Override
    public int updateItems(List<Long> list,Byte status) {
        int i = 0;
        try {
            TbItem item = new TbItem();
            item.setStatus(status);
            TbItemExample example = new TbItemExample();
            TbItemExample.Criteria criteria = example.createCriteria();
            criteria.andIdIn(list);
            i = mapper.updateByExampleSelective(item,example);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

}
