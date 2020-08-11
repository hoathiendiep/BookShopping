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
import model.Brand;
import model.Category;

/**
 *
 * @author Lenovo
 */
public class BrandDao extends BaseDao {
    
    public BrandDao() {
    }
    
    public ArrayList<Brand> getData(int cateId) {
        ArrayList<Brand> dm = new ArrayList<>();
        try {
            String sql = "SELECT [ID_Brand]\n"
                    + "      ,[Name_Brand]\n"
                    + "      ,[ID_Category]\n"
                    + "  FROM [dbo].[Brand]";
            if (cateId != -1) {
                sql +=" WHERE [ID_Category] = "+cateId;
            }
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dm.add(new Brand(rs.getInt(1), rs.getString(2), new CategoryDao().getById(rs.getInt(3))));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return dm;
    }    
    public ArrayList<Brand> getByIdCate(Integer id) {
        ArrayList<Brand> dm = new ArrayList<>();
        try {
            String sql = "SELECT [ID_Brand]\n"
                    + "      ,[Name_Brand]\n"
                    + "      ,[ID_Category]\n"
                    + "  FROM [dbo].[Brand]";
            if (id != null && id != -1 ) {
                sql += " where [ID_Category] =  '"+id+"'";
            }
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dm.add(new Brand(rs.getInt(1), rs.getString(2), new CategoryDao().getById(rs.getInt(3))));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dm;
    }
    public Brand getById(int id) {
        Brand s = null;
        try {
            String sql = "SELECT [ID_Brand]\n"
                    + "      ,[Name_Brand]\n"
                    + "      ,[ID_Category]\n"
                    + "  FROM [dbo].[Brand] where [ID_Brand] = '" + id + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new Brand(rs.getInt(1), rs.getString(2), new CategoryDao().getById(rs.getInt(3)));
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
}
