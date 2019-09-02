package com.wowo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/sugServlet")
public class sugServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          //获得客户端传来的名字
        String[] arr = {
                "Anna", "Brittany", "Cinderella", "Diana",
                "Eva", "Fiona", "Gunda", "Hege", "Inga", "Johanna",
                "Kitty", "Linda", "Nina", "Ophelia", "Petunia", "Amanda",
                "Raquel", "Cindy", "Doris", "Eve", "Evita", "Sunniva",
                "Tove", "Unni", "Violet", "Liza", "Elizabeth", "Ellen",
                "Wenche", "Vicky"
        };

        String username=request.getParameter("username");
//        System.out.println("username"+username);
        String result="";
        for(String name:arr){
            if (name.contains(username)){
                result += name+",";
            }
        }
        if(result.length()>1){
            result=result.substring(0,result.length()-1);
        }
        //从名字库中找与相关的名字
        //将这些相关的名字传给客户端
        PrintWriter out=response.getWriter();
        out.println(result);
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             doPost(request,response);
    }
}
