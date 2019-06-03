<%-- 
    Document   : Cart
    Created on : May 13, 2019, 11:32:17 AM
    Author     : Harsh
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
        }
    </style>
    <body background="images/book.jpg">
        <header><h2>Orders</h2></header>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
        Statement statement = con.createStatement();
         session=request.getSession(false);  
         String s=(String)session.getAttribute("S_email");
        ResultSet rs = statement.executeQuery("  select bookid , count(bookid) as quantity , B_email from buyproduct where S_email='"+s+"'  group by bookid,B_email");
        %>
        <form action="BuyPage.jsp" method="get">
                <table class="table table-dark" id="Q" border="1">
                <thead>
                  <tr>
                      <th scope="col">User_Id</th>
                      <th scope="col">Book-id</th>
                    <th scope="col">Title</th>
                    <th scope="col">Author</th>
                    <th scope="col">Subject</th>
                    <th scope="col">Price(Rs.)</th>
                  <th scope="col">Quantity</th>
                   <th scope="col">Total_price(Rs.)</th>
                  </tr>
                </thead>
                <tbody>
        <%
            String User_Id=null;
            String title=null;
            String author=null;
            String subject=null;
            int price=0;
            int quantity=0;
           int total_price=0;
            if(rs!=null)
        {
            while(rs.next())
            {    
                User_Id=rs.getString("B_email");
                String book=rs.getString("bookid");
                System.out.println("book="+book);
                quantity=rs.getInt("quantity");
                statement = con.createStatement();
                ResultSet rs1=statement.executeQuery("select * from books where bookid='"+book+"'");
                if(rs1!=null)
        {
            while(rs1.next())
            {   
                
                title=rs1.getString("title");
                author=rs1.getString("author");
                subject=rs1.getString("subject");
                price=rs1.getInt("price");
                System.out.println("price="+price);
        %>
        <%
                total_price=quantity*price;
                System.out.println(total_price);
            }
        }
                %>
               
                <tr>
                    <td><% out.print(User_Id); %></td>
                    <td><% out.print(book); %></td>
                    <td><% out.print(title); %></td>
                    <td><% out.print(author); %></td>
                    <td><% out.print(subject); %></td>
                    <td><% out.print(price); %></td>
                 <td><% out.print(quantity); %></td>
                 <td><% out.print(total_price); %></td>

                </tr>
                  
            <%
                }
        }
%>
                </tbody>
              </table>
        </form>
        </body>
</html>
