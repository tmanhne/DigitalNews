/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import model.Article;
import context.DBContext;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DAO {

    public Article getRecentNews() throws Exception {
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT TOP 1 * FROM Article ORDER BY PublishedDate DESC;";
        try {
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate"));
            }

        } // Handle any errors that may have occurred. 
        catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            db.closeConnection(conn, ps, rs);
        }
        return null;
    }

    public List<Article> getTop5RecentNews() throws Exception {
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Article> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT TOP 5 * FROM Article WHERE PublishedDate != ( SELECT MAX(PublishedDate)FROM Article ) ORDER BY PublishedDate DESC;";
        try {
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate")));
            }

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            db.closeConnection(conn, ps, rs);
        }
        return list;
    }

    public Article viewArticleById(String id) throws Exception {
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT * FROM Article WHERE ID = ?;";
        try {
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate"));
            }

        } // Handle any errors that may have occurred. 
        catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            db.closeConnection(conn, ps, rs);
        }
        return null;
    }

    public int countTotalSearchArticle(String text) throws Exception {
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT COUNT(*) FROM Article WHERE Title LIKE ?;";
        try {
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");// 1 first ?
            rs = ps.executeQuery();
            // Iterate through the data in the result set and return it.
            while (rs.next()) {
                return rs.getInt(1);
            }

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            db.closeConnection(conn, ps, rs);
        }
        return 0;
    }

    public List<Article> pagingSearchArticle(String text, int index) throws Exception {
        DBContext db = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        List<Article> list = new ArrayList<>();
        // Create and execute an SQL statement that returns some data.
        String sql = "SELECT  * FROM Article where Title like ?\n"
                + "ORDER BY (SELECT NULL)\n"
                + "OFFSET (?-1)*3 ROWS FETCH NEXT 3 ROWS ONLY";
        try {
            db = new DBContext();
            conn = db.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + text + "%");
            ps.setInt(2, index);
            rs = ps.executeQuery();
            // Iterate through the data in the result set and add it to list.
            while (rs.next()) {
                list.add(new Article(rs.getInt("ID"),
                        rs.getString("Title"),
                        rs.getString("Content"),
                        rs.getString("Summary"),
                        rs.getString("Writer"),
                        rs.getString("PublishedDate")));
            }

        } // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
            throw e;
        } finally {
            db.closeConnection(conn, ps, rs);
        }
        return list;
    }

    public static void main(String[] args) {
        try {
            DAO dao = new DAO();
            List<Article> list = dao.pagingSearchArticle("quisque", 12);
            System.out.println(list.size());
//            for (Article o : list) {
//                System.out.println(o);
//            }
        } catch (Exception ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
