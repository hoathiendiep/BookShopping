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
public class Author {

    private int id;
    private String firstname, lastname;
    private Date dob;
    private String country;
    private String des, pic;

    public Author() {
    }

    public Author(int id, String firstname, String lastname, Date dob, String country, String des, String pic) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.dob = dob;
        this.country = country;
        this.des = des;
        this.pic = pic;
    }

    public int getId() {
        return id;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public Date getDob() {
        return dob;
    }

    public String getCountry() {
        return country;
    }

    public String getDes() {
        return des;
    }

    public String getPic() {
        return pic;
    }

}
