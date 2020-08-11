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
public class Order {
    private String id;
    private User user;
    private double total;
    private Date date;
    private boolean status;
    private String fname,lname,phone,email,address;

    public Order(String id, User user, double total, Date date, boolean status, String fname, String lname, String phone, String email, String address) {
        this.id = id;
        this.user = user;
        this.total = total;
        this.date = date;
        this.status = status;
        this.fname = fname;
        this.lname = lname;
        this.phone = phone;
        this.email = email;
        this.address = address;
    }

    public String getId() {
        return id;
    }

    public User getUser() {
        return user;
    }

    public double getTotal() {
        return total;
    }

    public Date getDate() {
        return date;
    }

    public boolean isStatus() {
        return status;
    }

    public String getFname() {
        return fname;
    }

    public String getLname() {
        return lname;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getAddress() {
        return address;
    }
    
    
}
