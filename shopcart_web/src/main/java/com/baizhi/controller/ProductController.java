package com.baizhi.controller;

import com.baizhi.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("product")
public class ProductController {
    @Autowired
    private ProductService productService;

    @RequestMapping("findAll")
    public Map findAll(Integer page,Integer rows) {
        return productService.findAll(page, rows);
    }
}
