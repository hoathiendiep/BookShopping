/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Item;
import model.Order;
import model.Product;

/**
 *
 * @author Lenovo
 */
public class OrderDao extends BaseDao {

    public void insertOrder(int userId, String orderId, double total, String fname, String lname, String phone, String email, String address) {
        try {
            String sql = "INSERT INTO [dbo].[Order]\n"
                    + "           ([ID_Order]\n"
                    + "           ,[ID_User]\n"
                    + "           ,[Total]\n"
                    + "           ,[Date]\n"
                    + "           ,[Status]\n"
                    + "           ,[firstname]\n"
                    + "           ,[lastname]\n"
                    + "           ,[phone]\n"
                    + "           ,[email]\n"
                    + "           ,[address])\n"
                    + "     VALUES\n"
                    + "           ('" + orderId + "','" + userId + "'," + total + ",GETDATE(),0,N'" + fname + "',N'" + lname + "','" + phone + "','" + email + "',N'" + address + "')";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void insertDetails(ArrayList<Item> lst, String orderId) {
        try {
            for (Item item : lst) {
                Product product = item.getProduct();
                int quantity = item.getQuantity();
                String sql = "INSERT INTO [dbo].[Order_Details]\n"
                        + "           ([ID_Order]\n"
                        + "           ,[ID_Product]\n"
                        + "           ,[Quantity])\n"
                        + "     VALUES\n"
                        + "           ('" + orderId + "'," + product.getId() + "," + quantity + ")";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.execute();
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList<String> orderId() {
        ArrayList<String> lst = new ArrayList<>();
        try {
            String sql = "SELECT [ID_Order]\n"
                    + "  FROM [dbo].[Order]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                lst.add(rs.getString(1));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    public ArrayList<Order> getData(int id) {
        ArrayList<Order> lst = new ArrayList<>();
        try {
            String sql = "SELECT [ID_Order]\n"
                    + "      ,[ID_User]\n"
                    + "      ,[Total]\n"
                    + "      ,[Date]\n"
                    + "      ,[Status]\n"
                    + "      ,[firstname]\n"
                    + "      ,[lastname]\n"
                    + "      ,[phone]\n"
                    + "      ,[email]\n"
                    + "      ,[address]\n"
                    + "  FROM [dbo].[Order] WHERE [ID_User]=" + id;
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                lst.add(new Order(rs.getString(1), new UserDao().getById(rs.getInt(2)), rs.getDouble(3), rs.getDate(4), rs.getBoolean(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    public ArrayList<Item> getItems(int uid, String oid) {
        ArrayList<Item> lst = new ArrayList<>();
        try {
            String sql = " select [dbo].[Product].[ID_Product],[Order_Details].[Quantity]\n"
                    + "  from [dbo].[Order_Details],\n"
                    + " [dbo].[Order],\n"
                    + " [dbo].[Product],\n"
                    + " [dbo].[User] \n"
                    + "  where [dbo].[Order_Details].[ID_Order] = [dbo].[Order].[ID_Order] \n"
                    + "  and [dbo].[Order_Details].[ID_Product] = [dbo].[Product].[ID_Product]\n"
                    + "  and [dbo].[Order].[ID_User] = [dbo].[User].[User_ID] and [dbo].[User].[User_ID] = '" + uid + "' and [Order].[ID_Order] = '" + oid + "' ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                lst.add(new Item(new ProductDao().getById(rs.getInt(1)), rs.getInt(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lst;
    }

    public Order getOrderbyId(String id) {
            Order order = null;
        try {
            String sql = "SELECT [ID_Order]\n"
                    + "      ,[ID_User]\n"
                    + "      ,[Total]\n"
                    + "      ,[Date]\n"
                    + "      ,[Status]\n"
                    + "      ,[firstname]\n"
                    + "      ,[lastname]\n"
                    + "      ,[phone]\n"
                    + "      ,[email]\n"
                    + "      ,[address]\n"
                    + "  FROM [dbo].[Order] where [ID_Order]='"+id+"'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {                
                order = new Order(rs.getString(1), new UserDao().getById(rs.getInt(2)), rs.getDouble(3), rs.getDate(4), rs.getBoolean(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return order;
    }
}
