<%-- 
    Document   :Deletepage
    Created on : Apr 9, 2019, 2:50:05 AM
    Author     : Lenovo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
try{
      String book_id[] = request.getParameterValues("bookid");
       System.out.println(book_id);
        int l = book_id.length;
      Class.forName("com.mysql.jdbc.Driver");
      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
      Statement statement = con.createStatement();
     for(int i=0;i<l;i++){
    statement.executeUpdate("delete from books where bookid='"+book_id[i]+"'");
    out.print("<script> alert('Successfully Delete'); location='Dshowsubject.jsp';</script>");

}
}
catch(Exception ex){
    System.out.print(ex);
    out.print("<script> alert('Something want wrong TRY AGAIN'); location='Dshowsubject.jsp';</script>");

}
%>