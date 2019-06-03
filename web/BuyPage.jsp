<%-- 
    Document   : BuyPage
    Created on : Apr 9, 2019, 2:50:05 AM
    Author     : Lenovo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
try{
String bookid[]=request.getParameterValues("bookid");
  int l = bookid.length; 
 
    String B_email=request.getParameter("B_email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
    Statement statement = con.createStatement();
    statement.executeUpdate("create table if not exists BuyProduct(S_email varchar(25) not null, Bookid varchar(25) not null,B_email varchar(25) not null)");
    for(int i=0;i<l;i++){
    ResultSet rs = statement.executeQuery("select S_email from books where bookid='"+bookid[i]+"'");
    String S_email=null;
    if(rs!=null)
    {
        while(rs.next()){
       S_email=rs.getString("S_email");
        }
    }
    statement.executeUpdate("insert into buyproduct values('"+S_email+"','"+bookid[i]+"','"+B_email+"')");
    }
    out.print("<script> alert('Successfully Purchased'); location='ShowSubjects.jsp';</script>");

}
catch(Exception ex){
    System.out.print(ex);
    out.print("<script> alert('Something want wrong TRY AGAIN'); location='ShowSubjects.jsp';</script>");

}
%>