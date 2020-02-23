package com.baizhi.service.impl;

import com.baizhi.dao.ProductDao;
import com.baizhi.entity.Product;
import com.baizhi.service.ProductService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public Map findAll(Integer page,Integer rows) {
        Map map = new HashMap();
        List<Product> products = productDao.selectByRowBounds(new Product(), new RowBounds((page - 1) * rows, rows));
        int records = productDao.selectCount(new Product());
        int total = records % rows == 0 ? records / rows : records / rows + 1;
        map.put("rows", products);
        map.put("records", records);
        map.put("total",total);
        map.put("page", page);
        return map;
    }
}
