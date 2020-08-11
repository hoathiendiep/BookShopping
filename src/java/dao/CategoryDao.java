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
import model.Category;

/**
 *
 * @author Lenovo
 */
public class CategoryDao extends BaseDao {

    public ArrayList<Category> getData() {

        ArrayList<Category> dm = new ArrayList<>();
        try {
            String sql = "SELECT [ID_Cate]\n"
                    + "      ,[Name_Cate]\n"
                    + "  FROM [dbo].[Category]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dm.add(new Category(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        for (Category category : dm) {
            System.out.println(category.getName());
        }
        return dm;
    }

    public Category getById(int id) {
        Category s = null;
        try {
            String sql = "SELECT [ID_Cate]\n"
                    + "      ,[Name_Cate]\n"
                    + "  FROM [dbo].[Category] where [ID_Cate] = '" + id + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new Category(rs.getInt(1), rs.getString(2));
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

}
