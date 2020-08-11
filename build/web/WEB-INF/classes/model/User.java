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
public class User {
    private String username,password,firstname, lastname,email;
    private Date dob;
    private String phone,address;
    private boolean gender;

    public User(String username, String password, String firstname, String lastname, String email, Date dob, String phone, String address, boolean gender) {
        this.username = username;
        this.password = password;
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
        this.dob = dob;
        this.phone = phone;
        this.address = address;
        this.gender = gender;
    }

    public String getUsername() {
        return username;
    }

    public String getPassword() {
        return password;
    }

    public String getFirstname() {
        return firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public String getEmail() {
        return email;
    }

    public Date getDob() {
        return dob;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public boolean isGender() {
        return gender;
    }



    @Override
    public String toString() {
        return firstname + "" + lastname + "" + email + "" + phone + "" + address;
    }
}
