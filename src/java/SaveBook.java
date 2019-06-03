import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class SaveBook extends HttpServlet {

    Connection con; 
    PreparedStatement ps;
    
    @Override
    public void init(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
            String qr="insert into books values(?,?,?,?,?,?,?)";
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
        
  String s1=request.getParameter("bookid");
  String s2=request.getParameter("title");
  String s3=request.getParameter("author");
  String s4=request.getParameter("subject");
  String s5=request.getParameter("price");
  String s6=request.getParameter("quantity");
  try{
            HttpSession session=request.getSession(false);  
            String s=(String)session.getAttribute("S_email");
            ps.setString(1,s);
            ps.setString(2,s1);
            ps.setString(3,s2);
            ps.setString(4,s3);
            ps.setString(5,s4);
            ps.setInt(6,Integer.parseInt(s5));
            ps.setInt(7,Integer.parseInt(s6));
            Statement statement = con.createStatement();
            statement.executeUpdate("create table if not exists books(S_email varchar(25) not null,bookid varchar(25) primary key, title varchar(25) not null, author varchar(25) not null,subject varchar(25) not null, price varchar(25) not null, quantity int(25) not null)");
            ps.executeUpdate();
            out.println("<script>alert('Book Save Successfully.'); location='bookentry.jsp';</script>");
        }catch(Exception e){
            System.out.print(e);
            out.println("<script>alert('Something want wrong TRY AGAIN.'); location='bookentry.jsp';</script>");
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
