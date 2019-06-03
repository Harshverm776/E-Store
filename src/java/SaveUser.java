import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveUser extends HttpServlet {

    Connection con; 
    PreparedStatement ps;
    
    @Override
    public void init(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
                System.out.print("hello");    
        String qr="insert into users values(?,?,?,?,?,?)";
            ps=con.prepareStatement(qr);            
        }catch(Exception e){}
            
    }
    
    @Override
    public void destroy(){
        try{
            con.close();
        }catch(Exception e){}
            
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String username=request.getParameter("username");
        String address=request.getParameter("address");
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobile");
        String user_type=request.getParameter("user_type");
        String password=request.getParameter("password");
        
        try{
            ps.setString(4,password);
            ps.setString(1,username);
            ps.setString(2,address);
            ps.setString(3,email);
            ps.setString(5,mobile);
            ps.setString(6,user_type);
            Statement statement = con.createStatement();
            statement.executeUpdate("create table if not exists users(username varchar(25) not null,address varchar(50) not null,email varchar(25) primary key, password varchar(25) not null, mobile varchar(25) not null, user_type varchar(10) not null)");
            ps.executeUpdate();
            out.println("<script> alert('Registered Successfully.'); location='index.jsp';</script>");
        }catch(Exception e){
            out.println(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
