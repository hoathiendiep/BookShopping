/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author Lenovo
 */
public class Product {
    private int id;
    private String name,pic,info;
    private Date date;
    private Brand brand;
    private double price;
    private Author author;
    private Publisher publisher;

    public Product() {
    }

    public Product(int id, String name, String pic, String info, Date date, Brand brand, double price, Author author, Publisher publisher) {
        this.id = id;
        this.name = name;
        this.pic = pic;
        this.info = info;
        this.date = date;
        this.brand = brand;
        this.price = price;
        this.author = author;
        this.publisher = publisher;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPic() {
        return pic;
    }

    public String getInfo() {
        return info;
    }

    public Date getDate() {
        return date;
    }

    public Brand getBrand() {
        return brand;
    }

    public double getPrice() {
        return price;
    }

    public Author getAuthor() {
        return author;
    }

    public Publisher getPublisher() {
        return publisher;
    }
    
}
