import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class VerifyUser extends HttpServlet {
    public static String S_email;
    public static String B_email;
        Connection con; PreparedStatement ps;
    
      @Override
      public void init(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","a");
            String qr="select * from users where email=? and password=? and user_type=?";
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
        String s1=request.getParameter("email");
        String s2=request.getParameter("password");
        String s3=request.getParameter("user_type");
            try{
            ps.setString(1, s1);
            ps.setString(2, s2);
            ps.setString(3, s3);
            ResultSet rs=ps.executeQuery("select * from users where email='"+s1+"' and password='"+s2+"' and user_type='"+s3+"'");

            if(rs.next()){
                if(s3.equals("Seller")){
                    HttpSession session = request.getSession();     
                    session.setAttribute("S_email",s1);
                    System.out.print(session.getAttribute("S_email"));
                    out.println("<script> alert('Login Successfully.'); location='sellerpage.jsp'; </script>");
                }
                else{
                    HttpSession session = request.getSession();     
                    session.setAttribute("B_email",s1);
                out.println("<script> alert('Login Successfully.'); location='buyerpage.jsp'; </script>");    
                }
                
            }else{
                out.println("<script> alert('Invalid Account'); location='index.jsp'; </script>");
            }
            }catch(Exception ex){
                System.out.print(ex);
                out.println("<script> alert('Something Went Wrong'); location='registration.jsp'; </script>");
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
