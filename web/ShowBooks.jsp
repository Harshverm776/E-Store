<%-- 
    Document   : ShowBooks
    Created on : Apr 8, 2019, 1:55:49 AM
    Author     : Lenovo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books deatils</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <style>
        body{
            background-repeat: no-repeat;
            background-size:1600px;
        }
        header{
            background-color: black;
            color:antiquewhite;
            height: 60px;
            text-align: center;
            position: static;
            margin-top: 0px;
            border: solid dodgerblue;
            width:1600px;
        }
        h2{
            margin-top: 0px;
            font-size: 40px;
            font-family: fantasy;
        }
        #Q{
            margin-left:300px;margin-top: 10px;
            width: 50%;
        }
        #cart{
            margin-left:300px;
        }
    </style>
    <body background="images/book.jpg">
        <header><h2>Book Store</h2></header>
        <%
        String sub=request.getParameter("sub");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
        String qr="select title, author, price from books where subject=?";
        Statement statement = con.createStatement();
        ResultSet rs = statement.executeQuery("SELECT * FROM books where subject='"+sub+"'");
        %>
          <%
                if(rs.next())
        {
          %>
        <form action="BuyPage.jsp" method="get">
                <table class="table table-dark" id="Q">
                <thead>
                  <tr>
                      <th scope="col">Select</th>
                    <th scope="col">Title</th>
                    <th scope="col">Author</th>
                    <th scope="col">Price(Rs.)</th>
                  </tr>
                </thead>
                <tbody>
           <%
            rs = statement.executeQuery("SELECT * FROM books where subject='"+sub+"'");
            while(rs.next())
            {
                %>
                 <tr>
                     <td><input type="checkbox" name="bookid" value="<% out.print(rs.getString("bookid")); %>"</td>
                    <td><% out.print(rs.getString("title")); %></td>
                    <td><% out.print(rs.getString("author")); %></td>
                    <td><% out.print(rs.getInt("price")); %></td>
                  </tr>
                  
         <%
            }
                        session=request.getSession(false);  
                        String s=(String)session.getAttribute("B_email");
                    %>
                <input type="text" name="B_email" value="<%out.print(s);%>" hidden>
                </tbody>
              </table>
        <button type="submit" class="btn btn-primary btn-lg" id="cart">BUY</button>
        </form>
   
   <% }
       else{
   
            System.out.println("else part");
               out.print("<script> alert('Book not found'); location='ShowSubjects.jsp';</script>");
            }
   %>
        
        </body>
</html>
