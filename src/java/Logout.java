import java.io.IOException;  
import java.io.PrintWriter;  
import javax.servlet.RequestDispatcher;
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
import javax.servlet.http.HttpSession;  
public class Logout extends HttpServlet {  

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)  
                                throws ServletException, IOException {  
            HttpSession session=request.getSession();  
            session.removeAttribute("S_email");
            session.removeAttribute("B_email");
            session.invalidate();
            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
    }  
}  