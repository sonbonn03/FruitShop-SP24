package controller.admin;

import dal.OrderDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Orders;

public class ManagerOrderServlet extends HttpServlet {
   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        OrderDAO orderDao = new OrderDAO();
        ArrayList<Orders> listOrders = orderDao.getOrders();
        System.out.println(listOrders);
        request.setAttribute("orders", listOrders);
        
        request.getRequestDispatcher("/views/admin/order.jsp").forward(request, response);
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    }

   

}
