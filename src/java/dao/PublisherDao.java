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
import model.Publisher;

/**
 *
 * @author Lenovo
 */
public class PublisherDao extends BaseDao {

    public PublisherDao() {
    }

    public ArrayList<Publisher> getData() {
        ArrayList<Publisher> dm = new ArrayList<>();
        try {
            String sql = "SELECT [ID_Publish]\n"
                    + "      ,[Name_Publish]\n"
                    + "      ,[Address]\n"
                    + "      ,[Phone]\n"
                    + "  FROM [dbo].[Publish]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dm.add(new Publisher(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(PublisherDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return dm;
    }

    public Publisher getById(int id) {
        Publisher s = null;
        try {
            String sql = "SELECT [ID_Publish]\n"
                    + "      ,[Name_Publish]\n"
                    + "      ,[Address]\n"
                    + "      ,[Phone]\n"
                    + "  FROM [dbo].[Publish] where [ID_Publish] = '" + id + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new Publisher(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (Exception ex) {
            Logger.getLogger(PublisherDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

}
