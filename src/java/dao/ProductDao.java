/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.*;

/**
 *
 * @author Lenovo
 */
public class ProductDao extends BaseDao {

    public Product getById(int id) {
        Product s = null;
        try {
            String sql = "SELECT [ID_Product]\n"
                    + "      ,[Name_Product]\n"
                    + "      ,[Pic_Product]\n"
                    + "      ,[Info_Product]\n"
                    + "      ,[Date]\n"
                    + "      ,[ID_Brand]\n"
                    + "      ,[Price]\n"
                    + "      ,[Author_ID]\n"
                    + "      ,[Publisher_ID]\n"
                    + "  FROM [dbo].[Product] where [ID_Product] = '" + id + "'";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                s = new Product(rs.getInt(1), rs.getString(2), "Picture\\" + rs.getString(3), rs.getString(4), rs.getDate(5), new BrandDao().getById(rs.getInt(6)), rs.getDouble(7), new AuthorDao().getById(rs.getInt(8)), new PublisherDao().getById(rs.getInt(9)));
            }
        } catch (Exception ex) {
            Logger.getLogger(CategoryDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public ArrayList<Product> getRecords(int start, int total, int cateId, Integer idBrand, String namePro, Integer publishId, Integer authorId, boolean asc, boolean desc) {
        ArrayList<Product> st = new ArrayList<>();
        String sql = "SELECT * FROM [dbo].[Product],[dbo].[Category],[dbo].[Brand] where [dbo].[Product].[ID_Brand] = [dbo].[Brand].[ID_Brand] and [dbo].[Brand].ID_Category = [ID_Cate] " + ((cateId == -1) ? "" : "and [ID_Cate]='" + cateId + "' ");
        try {
            HashMap<Integer, Object[]> params = new HashMap<>();
            Integer paramIndex = 0;
            if (idBrand != null) {
                paramIndex++;
                sql += " and [dbo].[Product].[ID_Brand] = ? ";
                Object[] param = new Object[2];
                param[0] = "INT";
                param[1] = idBrand;
                params.put(paramIndex, param);
            }
            if (namePro != null && !namePro.equals("")) {
                paramIndex++;
                sql += " and [Name_Product] like '%' + ? + '%' ";
                Object[] param = new Object[2];
                param[0] = "STRING";
                param[1] = namePro;
                params.put(paramIndex, param);
            }
            if (publishId != null) {
                paramIndex++;
                sql += " and [Publisher_ID] = ?  ";
                Object[] param = new Object[2];
                param[0] = "INT";
                param[1] = publishId;
                params.put(paramIndex, param);
            }
            if (authorId != null) {
                paramIndex++;
                sql += " and [Author_ID] = ? ";
                Object[] param = new Object[2];
                param[0] = "INT";
                param[1] = authorId;
                params.put(paramIndex, param);
            }

            String orderby;
            if (desc || asc) {
                if (desc) {
                    orderby = " [Price] DESC ";
                } else{
                    orderby = " [Price] ASC ";
                }
                sql += " ORDER BY " + orderby;
            }
            else{
                orderby = " [ID_Product] ";
                sql +=" ORDER BY "+ orderby;
            }
            
            //@@ROWCOUNT\n
            if (total != -1) {
                sql += " OFFSET " + (start-1) + " ROWS\n"
                        + " FETCH NEXT " + (total) + " ROWS ONLY;";
            }
            PreparedStatement ps = connection.prepareStatement(sql);
            for (Map.Entry<Integer, Object[]> entry : params.entrySet()) {
                Integer key = entry.getKey();
                Object[] value = entry.getValue();
                switch (value[0].toString()) {
                    case "INT":
                        ps.setInt(key, Integer.parseInt(value[1].toString()));
                        break;
                    case "STRING":
                        ps.setString(key, value[1].toString());
                        break;
                }
            }
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (cateId != -1) {
                    if (new BrandDao().getById(rs.getInt(6)).getCategory().getId() == cateId) {
                        st.add(new Product(rs.getInt(1), rs.getString(2), "Picture\\" + rs.getString(3), rs.getString(4), rs.getDate(5), new BrandDao().getById(rs.getInt(6)), rs.getDouble(7), new AuthorDao().getById(rs.getInt(8)), new PublisherDao().getById(rs.getInt(9))));
                    }
                } else {
                    st.add(new Product(rs.getInt(1), rs.getString(2), "Picture\\" + rs.getString(3), rs.getString(4), rs.getDate(5), new BrandDao().getById(rs.getInt(6)), rs.getDouble(7), new AuthorDao().getById(rs.getInt(8)), new PublisherDao().getById(rs.getInt(9))));
                }
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return st;
    }

}
