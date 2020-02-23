package com.baizhi.entity;

import javax.persistence.Id;
import java.io.Serializable;

public class Product implements Serializable {
    @Id
    private String id;
    private String productName;
    private Double price;
    private String picpath;
    private String discription;


}
