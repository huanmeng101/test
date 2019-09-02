package com.wowo;

import com.sun.corba.se.impl.orbutil.ObjectUtility;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/ajax1Servlet")
public class Ajax1Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
           doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          //发送数据给客户端AJAX
        String id=request.getParameter("id");
        PrintWriter out =response.getWriter();
        out.println("<h2>Hell AJAX"+id+"</h2>");
        out.close();
    }
}
