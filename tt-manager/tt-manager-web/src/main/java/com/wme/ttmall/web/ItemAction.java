package com.wme.ttmall.web;

import com.wme.ttmall.pojo.dto.Page;
import com.wme.ttmall.pojo.dto.Result;
import com.wme.ttmall.pojo.po.TbItem;
import com.wme.ttmall.pojo.vo.TbItemCustomer;
import com.wme.ttmall.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ItemAction {

    private Logger logger = LoggerFactory.getLogger(this.getClass());
    @Autowired
    private ItemService service;

    @RequestMapping(value="/items",method = RequestMethod.POST)
    @ResponseBody
    public Result<TbItemCustomer> itemList(Page page){
        Result<TbItemCustomer> result = null;
        try {
            result = service.itemListByPage(page);

        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/item/batch",method = RequestMethod.POST)
    public int updateItems(@RequestParam("lds[]")List<Long> list,Byte status){
        int i=0;
        try {
            i = service.updateItems(list,status);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            e.printStackTrace();
        }
        return i;
    }

}
