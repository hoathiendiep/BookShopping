/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

/**
 *
 * @author Lenovo
 */
public class UserDao extends BaseDao {

    public ArrayList<User> getData() {
        ArrayList<User> dm = new ArrayList<>();
        try {
            String sql = "SELECT [Username]\n"
                    + "      ,[Password]\n"
                    + "      ,[FirstName]\n"
                    + "      ,[LastName]\n"
                    + "      ,[Email]\n"
                    + "      ,[BirthDate]\n"
                    + "      ,[Phone]\n"
                    + "      ,[Address]\n"
                    + "      ,[Gender]\n"
                    + "  FROM [dbo].[User]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dm.add(new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getBoolean(9)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return dm;
    }

    public User getByUserName(String username) {
        User s = null;
        try {
            String sql = "SELECT [Username]\n"
                    + "      ,[Password]\n"
                    + "      ,[FirstName]\n"
                    + "      ,[LastName]\n"
                    + "      ,[Email]\n"
                    + "      ,[BirthDate]\n"
                    + "      ,[Phone]\n"
                    + "      ,[Address]\n"
                    + "      ,[Gender]\n"
                    + "  FROM [dbo].[User] where [Username] = '" + username + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getBoolean(9));
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public int getId(String username) {
        int id = -1;
        try {
            String sql = "SELECT [User_ID]\n"
                    + "  FROM [dbo].[User] where [Username] = '" + username + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                id = rs.getInt(1);
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return id;
    }

    public User getById(int id) {
        User s = null;
        try {
            String sql = "SELECT [User_ID]\n"
                    + "      ,[Username]\n"
                    + "      ,[Password]\n"
                    + "      ,[FirstName]\n"
                    + "      ,[LastName]\n"
                    + "      ,[Email]\n"
                    + "      ,[BirthDate]\n"
                    + "      ,[Phone]\n"
                    + "      ,[Address]\n"
                    + "      ,[Gender]\n"
                    + "  FROM [dbo].[User] where [User_ID] = '" + id + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new User(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getString(7), rs.getString(8), rs.getBoolean(9));
            }
        } catch (Exception ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public User getAccountByUsernameAndPassword(String username, String password) {
        ArrayList<User> dm = getData();
        for (User user : dm) {
            if (user.getUsername() != null) {
                if (user.getUsername().equals(username) && user.getPassword().equals(password)) {
                    return user;
                }
            }
        }
        return null;
    }

    public void insertUser(String username, String pwd, String fname, String lname, String mail, Date dob, String phone, String address, Boolean gender) {
        try {
            String sql = "INSERT INTO [dbo].[User]\n"
                    + "           ([Username]\n"
                    + "           ,[Password]\n"
                    + "           ,[FirstName]\n"
                    + "           ,[LastName]\n"
                    + "           ,[Email]\n"
                    + "           ,[BirthDate]\n"
                    + "           ,[Phone]\n"
                    + "           ,[Address]\n"
                    + "           ,[Gender])\n"
                    + "     VALUES\n"
                    + "           (?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, pwd);
            ps.setString(3, fname);
            ps.setString(4, lname);
            ps.setString(5, mail);
            ps.setDate(6, dob);
            ps.setString(7, phone);
            ps.setString(8, address);
            ps.setBoolean(9, gender);
            ps.execute();

        } catch (SQLException ex) {
        }
    }

    public void updateData(String uname, String pwd, String fname, String lname, String email, String dob, String phone, String address, Boolean gender) {
        try {
            String sql = "UPDATE [dbo].[User]\n"
                    + "   SET [FirstName] = ?\n"
                    + "      ,[LastName] = ?\n"
                    + "      ,[Email] = ?\n"
                    + "      ,[BirthDate] = ?\n"
                    + "      ,[Phone] = ?\n"
                    + "      ,[Address] = ?\n"
                    + "      ,[Gender] = ?\n"
                    + "      ,[Password] = ?\n"
                    + " WHERE [Username] = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, email);
            ps.setString(4, dob);
            ps.setString(5, phone);
            ps.setString(6, address);
            ps.setBoolean(7, gender);
            ps.setString(8, pwd);
            ps.setString(9, uname);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
