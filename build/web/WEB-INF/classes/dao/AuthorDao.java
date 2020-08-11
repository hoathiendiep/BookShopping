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
import model.*;

/**
 *
 * @author Lenovo
 */
public class AuthorDao extends BaseDao {
    public ArrayList<Author> getData() {
        ArrayList<Author> dm = new ArrayList<>();
        try {
            String sql = "SELECT [Author_ID]\n"
                    + "      ,[FirstName]\n"
                    + "      ,[LastName]\n"
                    + "      ,[BirthDate]\n"
                    + "      ,[Country]\n"
                    + "      ,[Description]\n"
                    + "      ,[Pic]\n"
                    + "  FROM [dbo].[Author]";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                dm.add(new Author(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), "Picture\\"+rs.getString(7)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AuthorDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return dm;
    }

    public Author getById(int id) {
        Author s = null;
        try {
            String sql = "SELECT [Author_ID]\n"
                    + "      ,[FirstName]\n"
                    + "      ,[LastName]\n"
                    + "      ,[BirthDate]\n"
                    + "      ,[Country]\n"
                    + "      ,[Description]\n"
                    + "      ,[Pic]\n"
                    + "  FROM [dbo].[Author] where [Author_ID] = '" + id + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new Author(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5), rs.getString(6), "Picture\\"+rs.getString(7));
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

}
