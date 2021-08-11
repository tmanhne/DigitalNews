/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Article;

/**
 *
 * @author ADMIN
 */
@WebServlet(name = "SearchArticleController", urlPatterns = {"/searcharticle"})
public class SearchArticleController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SearchArticleController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchArticleController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            DAO dao = new DAO();
            String text = request.getParameter("text");
            String index = request.getParameter("page");
            //default the curent page is 1
            if (index == null) {
                index = "1";
            }
            // get most and five recent article
            List<Article> listTop5 = dao.getTop5RecentNews();
            request.setAttribute("top5News", listTop5);
            Article recentnews = dao.getRecentNews();
            request.setAttribute("recentnews", recentnews);
            //get List Article by id
            List<Article> list = dao.pagingSearchArticle(text, Integer.parseInt(index));
            request.setAttribute("listA", list);
            //get number page
            int endPage = dao.countTotalSearchArticle(text) / 3;
            //check padding page
            if (dao.countTotalSearchArticle(text) % 3 != 0) {
                endPage = endPage + 1;
            }
            request.setAttribute("endPage", endPage);
            request.setAttribute("index", index);
            request.setAttribute("text", text);
            if (list.size() == 0) {
                request.setAttribute("alert","<h3> No search result\n"
                        + "                    </h3>");
            }
            request.getRequestDispatcher("search.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", "Sorry! Error occurred");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            DAO dao = new DAO();
            String text = request.getParameter("text");
            //get nmuber of page 
            int endPage = dao.countTotalSearchArticle(text) / 3 + (dao.countTotalSearchArticle(text) % 3 == 0 ? 0 : 1);
            List<Article> list = dao.getTop5RecentNews();
            Article recentnews = dao.getRecentNews();
            String index = request.getParameter("page");
            //default the curent page is 1
            if (index == null) {
                index = "1";
            }
            //to see what the user just typed
            List<Article> listA = dao.pagingSearchArticle(request.getParameter("text"), Integer.parseInt(index));
            request.setAttribute("recentnews", recentnews);
            request.setAttribute("endPage", endPage);
            request.setAttribute("text", text);
            request.setAttribute("index", index);
            request.setAttribute("top5News", list);
            request.setAttribute("listA", listA);
            // check list Article empty
            if (listA.size() == 0) {
                request.setAttribute("alert", "<h3> No search result\n"
                        + "                    </h3>");
            }
            request.getRequestDispatcher("search.jsp").forward(request, response);
        } catch (Exception ex) {
            request.setAttribute("error", "Sorry! Error occurred");
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
