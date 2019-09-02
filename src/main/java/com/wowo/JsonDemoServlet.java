package com.wowo;

import com.fasterxml.jackson.databind.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/jsonDemoServlet")
public class JsonDemoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper mapper=new ObjectMapper();
        PrintWriter out= response.getWriter();
        String [] arr={"JSP","ASP","PHP"};
        User user=new User(1,"TOM",23);
//        out.print(mapper.writeValueAsString(arr));
//        out.print(mapper.writeValueAsString(user));
        List<User> users=new ArrayList<>();
        users.add(new User(2,"alice",24));
        users.add(new User(3,"timi ",22));
        users.add(new User(4,"jack",26));
        out.print(mapper.writeValueAsString(users));
        out.close();
    }
}
